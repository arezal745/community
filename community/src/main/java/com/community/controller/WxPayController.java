package com.community.controller;

import cn.hutool.core.date.DateTime;
import com.alibaba.fastjson.JSON;
import com.community.Re.Result;
import com.community.bean.OrderInfo;
import com.community.bean.RefundInfo;
import com.community.bean.UserOrders;
import com.community.dao.MerchantDao;
import com.community.dao.UserDao;
import com.community.enums.OrderStatus;
import com.community.enums.wxpay.WxApiType;
import com.community.enums.wxpay.WxNotifyType;
import com.community.util.HttpUtils;
import com.community.util.OrderNoUtils;
import com.community.util.WechatPay2ValidatorForRequest;
import com.community.util.WxPayConfig;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.wechat.pay.contrib.apache.httpclient.auth.Verifier;
import com.wechat.pay.contrib.apache.httpclient.util.AesUtil;
import lombok.SneakyThrows;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.util.EntityUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;

@RestController
@RequestMapping("/WxPay")
public class WxPayController {

    @Resource
    WxPayConfig wxPayConfig;

    @Resource
    private CloseableHttpClient wxPayClient;

    @Resource
    private Verifier verifier;

    @Resource
    UserDao userDao;

    @Resource
    MerchantDao merchantDao;

    //调用统一下单Api生成支付二维码
    @SneakyThrows
    @RequestMapping("/Native")
    public String Native(@RequestBody OrderInfo orderInfo1){
        System.out.println("####首次获取支付二维码####"+new DateTime());
        OrderInfo orderInfo=new OrderInfo();
        orderInfo.setOrderNo(OrderNoUtils.getOrderNo());
        int orderID= Integer.parseInt(orderInfo1.getOrderIDs()[0]);
        int merID=userDao.getMerID(orderID);
        orderInfo.setMerchantid(merID);
        StringBuilder list = new StringBuilder();
        double sum=0;
        StringBuilder title= new StringBuilder();
        for(int i=0;i<orderInfo1.getOrderIDs().length;i++)
        {
            list.append(orderInfo1.getOrderIDs()[i]).append(" ");
            UserOrders userOrders=userDao.getOrder(orderInfo1.getOrderIDs()[i]);
            title.append(userOrders.getGoodsName()).append(" x").append(userOrders.getNumber()).append("\n");
            sum+=userOrders.getPrice2()*userOrders.getNumber();
            userDao.updataOrderNo(orderInfo.getOrderNo(),orderInfo1.getOrderIDs()[i]);
        }
        //加营收
        String[] date=(new DateTime()).toString().split(" ");
        String[] arr=date[0].split("-");
        String year=arr[0];
        String month=arr[1];
        String time=year+"-"+month;
        merchantDao.addIncome(merID,sum,time);
        Result rs=new Result();
        //订单信息
        orderInfo.setTitle(title.toString());
        orderInfo.setOrderStatus(OrderStatus.NOTPAY.getType());
        orderInfo.setGoodsid(list.toString());
//        orderInfo.setTotalFee((int) (sum*100));
        orderInfo.setTotalFee(1);



//        调用接口
        HttpPost httpPost = new HttpPost(wxPayConfig.getDomain().concat(WxApiType.NATIVE_PAY.getType()));
        // 请求body参数
        Map paramsMap = new HashMap();
        paramsMap.put("appid",wxPayConfig.getAppid());
        paramsMap.put("mchid",wxPayConfig.getMchId());
        paramsMap.put("description",orderInfo.getTitle());
        paramsMap.put("out_trade_no",orderInfo.getOrderNo());
        paramsMap.put("notify_url",wxPayConfig.getNotifyDomain().concat(WxNotifyType.NATIVE_NOTIFY.getType()));
        Map amountMap = new HashMap();
        amountMap.put("total",orderInfo.getTotalFee());
        amountMap.put("currency","CNY");

        paramsMap.put("amount",amountMap);

        //json化参数
        String jsonParams= JSON.toJSONString(paramsMap);
//        System.out.println("请求参数"+jsonParams);


        StringEntity entity = new StringEntity(jsonParams,"utf-8");
        entity.setContentType("application/json");
        httpPost.setEntity(entity);
        httpPost.setHeader("Accept", "application/json");

        //完成签名并执行请求
        CloseableHttpResponse response = wxPayClient.execute(httpPost);

        try {
            String body=EntityUtils.toString(response.getEntity());
            int statusCode = response.getStatusLine().getStatusCode();
            if (statusCode == 200) { //处理成功
                System.out.println("success,return body = " + body);
            } else if (statusCode == 204) { //处理成功，无返回Body
                System.out.println("success");
            } else {
                System.out.println("failed,resp code = " + statusCode+ ",return body = " + body);
                throw new IOException("request failed");
            }
            String[] res=body.split("\"");
            orderInfo.setCodeUrl(res[3]);
            //创建订单
            userDao.setOrderInfo(orderInfo);
            HashMap<String,Object> data=new HashMap<>();
            data.put("code_url",res[3]);
            data.put("orderNo",orderInfo.getOrderNo());
            return rs.success(data,"获取成功",200);
        } finally {
            response.close();
        }
    }
    @SneakyThrows
    @RequestMapping("/Native/notify")//支付状态返回通知
    public String nativeNotify(HttpServletRequest request, HttpServletResponse response){
        System.out.println("####支付状态返回通知####"+new DateTime());
        Gson gson=new Gson();
        HashMap<String,String> map=new HashMap<>();//应答对象
        try {
            //处理通知参数
            String body=HttpUtils.readData(request);
            HashMap<String,Object> bodyMap=gson.fromJson(body,HashMap.class);
            String requestId=(String)bodyMap.get("id");
//            System.out.println("1:"+bodyMap.get("id"));
            System.out.println(body);

            //签名验证
            WechatPay2ValidatorForRequest wechatPay2ValidatorForRequest
                    = new WechatPay2ValidatorForRequest(verifier, requestId,body);
            if(!wechatPay2ValidatorForRequest.validate(request)){
                System.out.println("通知验签失败");

                response.setStatus(500);
                map.put("code","FAIL");
                map.put("message","通知验签失败");
                return gson.toJson(map);
            }
            System.out.println("通知验签成功");

            //处理订单

            String plainText=decryptFromResource(bodyMap);//解密报文

            //将明文转换成map
            HashMap plainTextMap = gson.fromJson(plainText, HashMap.class);
            String orderNo = (String) plainTextMap.get("out_trade_no");
            String transactionId= (String) plainTextMap.get("transaction_id");

            final ReentrantLock lock=new ReentrantLock();
            //更新用户单表与订单表
            updateStatusByOrderNo(orderNo,OrderStatus.SUCCESS,transactionId,lock);

            //成功应答
            response.setStatus(200);
            map.put("code","SUCCESS");
            map.put("message","成功");
            return gson.toJson(map);
        } catch (JsonSyntaxException e) {
            e.printStackTrace();
            response.setStatus(500);
            map.put("code","FAIL");
            map.put("message","失败");
            return gson.toJson(map);
        }
    }
    //根据订单号修改更新用户单表与订单表
    public void updateStatusByOrderNo(String orderNo,OrderStatus orderStatus,String transactionId,ReentrantLock lock){
        System.out.println("更新用户单表与订单表："+orderStatus.getType());
        //数据锁进行并发控制
        if(lock.tryLock()){
            userDao.updateStatusByOrderNo(orderNo,orderStatus.getType(),transactionId);
        }
    }
    //对称解密
    @SneakyThrows
    private String decryptFromResource(HashMap<String,Object> bodyMap){
        System.out.println("密文解密");

        //通知数据
         Map<String,String> resourceMap = (Map<String,String>)bodyMap.get("resource");
         //数据密文
        String ciphertext=resourceMap.get("ciphertext");
        //随机串
        String nonce = resourceMap.get("nonce");
        //附加数据
        String associatedData = resourceMap.get("associated_data");

        System.out.println("密文:"+ciphertext);
        AesUtil aesUtil = new AesUtil(wxPayConfig.getApiV3Key().getBytes(StandardCharsets.UTF_8));
        String plainText=aesUtil.decryptToString(associatedData.getBytes(StandardCharsets.UTF_8),
                nonce.getBytes(StandardCharsets.UTF_8),
                ciphertext);

        System.out.println("明文:"+plainText);
        return plainText;
    }

    //    取消订单
    @RequestMapping("/cancelOrder")
    public String cancelOrder(@RequestBody OrderInfo orderInfo)
    {
        System.out.println("####取消订单####"+new DateTime());
        Result rs=new Result();
        //调用微信取消订单接口
        closeOrder(orderInfo.getOrderNo());
        double sum=0;

        ArrayList<UserOrders> list=userDao.getUserOrders(orderInfo.getOrderNo());
        for(int i=0;i<list.size();i++)
        {
            sum+=list.get(i).getPrice2()*list.get(i).getNumber();
            userDao.addInventory(list.get(i));
        }
        //减营收
        String[] date=(new DateTime()).toString().split(" ");
        String[] arr=date[0].split("-");
        String year=arr[0];
        String month=arr[1];
        String time=year+"-"+month;
        int merID=userDao.getMerID(list.get(0).getOrderID());
        merchantDao.minusIncome(merID,sum,time);
        //修改数据库订单状态
        orderInfo.setOrderStatus("已取消");
        userDao.cancelOrder(orderInfo);

        return rs.success("null","取消成功",200);
    }

    @SneakyThrows
    public void closeOrder(String orderNo)
   {

       //创建远程请求对象
       String  url=String.format(WxApiType.CLOSE_ORDER_BY_NO.getType(),orderNo);
       url=wxPayConfig.getDomain().concat(url);
       HttpPost httpPost = new HttpPost(url);

       //组装json请求体
       Gson gson=new Gson();
       HashMap<String,String> res= new HashMap<>();
       res.put("mchid",wxPayConfig.getMchId());
       String jsonParams = gson.toJson(res);
       System.out.println(jsonParams);

       //请求参数设置到对象中
       StringEntity entity = new StringEntity(jsonParams,"utf-8");
       entity.setContentType("application/json");
       httpPost.setEntity(entity);
       httpPost.setHeader("Accept", "application/json");

       //完成签名并执行请求
       CloseableHttpResponse response=wxPayClient.execute(httpPost);
       try {
           int statusCode = response.getStatusLine().getStatusCode();
           if (statusCode == 200) { //处理成功
               System.out.println("success200");
           } else if (statusCode == 204) { //处理成功，无返回Body
               System.out.println("success204");
           } else {
               System.out.println("failed,resp code = " + statusCode);
               throw new IOException("request failed");
           }
       } finally {
           response.close();
       }
   }
    @RequestMapping("/queryOrder")
    public String queryOrder(@RequestBody OrderInfo orderInfo){
        System.out.println("####查询订单支付状态（商家）####"+new DateTime());
        String result=queryOrder(orderInfo.getOrderNo());
        Result rs=new Result();
//        return rs.success(result,"查询成功",200);
        return result;
    }

    @SneakyThrows
    public String queryOrder(String orderNo){
        String url=String.format(WxApiType.ORDER_QUERY_BY_NO.getType(),orderNo);
        url=wxPayConfig.getDomain().concat(url).concat("?mchid=").concat(wxPayConfig.getMchId());

        HttpGet httpGet=new HttpGet(url);
        httpGet.setHeader("Accept", "application/json");

        //完成签名并执行请求
        CloseableHttpResponse response=wxPayClient.execute(httpGet);

        try {
            String body=EntityUtils.toString(response.getEntity());
            int statusCode = response.getStatusLine().getStatusCode();
            if (statusCode == 200) { //处理成功
                System.out.println("success,return body = " + body);
            } else if (statusCode == 204) { //处理成功，无返回Body
                System.out.println("success");
            } else {
                System.out.println("failed,resp code = " + statusCode+ ",return body = " + body);
                throw new IOException("request failed");
            }
            return body;
        } finally {
            response.close();
        }
    }
    @SneakyThrows
    @RequestMapping("/refunds")
    public String refunds(@RequestBody RefundInfo refundInfo1){
        System.out.println("####同意退款(商家)####"+new DateTime());
        Result rs=new Result();
        if(refundInfo1.getOrderNo()==null)
        {
            return rs.error("必填项数据为空",400);
        }
        RefundInfo refundInfo=new RefundInfo();
        refundInfo.setOrderNo(refundInfo1.getOrderNo());
        refundInfo.setRefundNo(refundInfo1.getRefundNo());
        refundInfo.setTotalFee(refundInfo1.getTotalFee());
        refundInfo.setRefund(refundInfo1.getRefund());
        refundInfo.setReason(refundInfo1.getReason());

        //减营收
        double sum=0;
        ArrayList<UserOrders> arr=userDao.getUserOrders(refundInfo1.getOrderNo());
        for(int i=0;i<arr.size();i++)
        {
            sum+=arr.get(i).getPrice2()*arr.get(i).getNumber();
            userDao.addInventory(arr.get(i));
        }
        String[] date=(new DateTime()).toString().split(" ");
        String[] arr1=date[0].split("-");
        String year=arr1[0];
        String month=arr1[1];
        String time=year+"-"+month;
        int merID=userDao.getMerID(arr.get(0).getOrderID());
        merchantDao.minusIncome(merID,sum,time);

        String url=wxPayConfig.getDomain().concat(WxApiType.DOMESTIC_REFUNDS.getType());
        HttpPost httpPost=new HttpPost(url);


        //请求体
        Gson gson=new Gson();
        Map paramsMap=new HashMap();
        paramsMap.put("out_trade_no",refundInfo.getOrderNo());
        paramsMap.put("out_refund_no",refundInfo.getRefundNo());
        paramsMap.put("reason",refundInfo.getReason());
        paramsMap.put("notify_url",wxPayConfig.getNotifyDomain().concat(WxNotifyType.REFUND_NOTIFY.getType()));

        Map amountMap=new HashMap();
        amountMap.put("refund",refundInfo.getRefund());
        amountMap.put("total",1);
        amountMap.put("currency","CNY");
        paramsMap.put("amount",amountMap);

        //json化参数
        String jsonParams= JSON.toJSONString(paramsMap);
        System.out.println("请求参数"+jsonParams);


        StringEntity entity = new StringEntity(jsonParams,"utf-8");
        entity.setContentType("application/json");
        httpPost.setEntity(entity);
        httpPost.setHeader("Accept", "application/json");

        //完成签名并执行请求
        CloseableHttpResponse response = wxPayClient.execute(httpPost);

        try {

            String body=EntityUtils.toString(response.getEntity());
            int statusCode = response.getStatusLine().getStatusCode();

            if (statusCode == 200) { //处理成功
                System.out.println("退款成功 = " + body);
            } else if (statusCode == 204) { //处理成功，无返回Body
                System.out.println("退款成功");
            } else {
                throw new RuntimeException("退款异常 = " + statusCode+ ",返回结果 = " + body);
            }
            return body;
        } finally {
            response.close();
        }
    }
    @RequestMapping("/queryRefund")
    public String queryRefund(@RequestBody RefundInfo refundInfo){
        System.out.println("####查询退款状态（商家）####"+new DateTime());
        String result=queryOrderRefund(refundInfo.getRefundNo());
//        Result rs=new Result();
//        return rs.success(result,"查询成功",200);
        return result;
    }

    @SneakyThrows
    public String queryOrderRefund(String refundNo){
        String url=String.format(WxApiType.DOMESTIC_REFUNDS_QUERY.getType(),refundNo);
        url=wxPayConfig.getDomain().concat(url);

        HttpGet httpGet=new HttpGet(url);
        httpGet.setHeader("Accept", "application/json");

        //完成签名并执行请求
        CloseableHttpResponse response=wxPayClient.execute(httpGet);

        try {
            String body=EntityUtils.toString(response.getEntity());
            int statusCode = response.getStatusLine().getStatusCode();
            if (statusCode == 200) { //处理成功
                System.out.println("success,查询退款返回结果 = " + body);
            } else if (statusCode == 204) { //处理成功，无返回Body
                System.out.println("success");
            } else {
                throw new RuntimeException("退款异常 code = " + statusCode+ ",return body = " + body);
            }
            return body;
        } finally {
            response.close();
        }
    }

    @SneakyThrows
    @RequestMapping("/refund/notify")//退款状态返回通知
    public String refundNotify(HttpServletRequest request, HttpServletResponse response){
        System.out.println("####退款状态返回通知####"+new DateTime());
        Gson gson=new Gson();
        HashMap<String,String> map=new HashMap<>();//应答对象
        try {
            //处理通知参数
            String body=HttpUtils.readData(request);
            HashMap<String,Object> bodyMap=gson.fromJson(body,HashMap.class);
            String requestId=(String)bodyMap.get("id");
            System.out.println(body);

            //签名验证
            WechatPay2ValidatorForRequest wechatPay2ValidatorForRequest
                    = new WechatPay2ValidatorForRequest(verifier, requestId,body);
            if(!wechatPay2ValidatorForRequest.validate(request)){
                System.out.println("通知验签失败");

                response.setStatus(500);
                map.put("code","FAIL");
                map.put("message","通知验签失败");
                return gson.toJson(map);
            }
            System.out.println("通知验签成功");
            //处理退款单

            String plainText=decryptFromResource(bodyMap);//解密报文

            //将明文转换成map
            HashMap plainTextMap = gson.fromJson(plainText, HashMap.class);
            System.out.println(body);

            //更新退款单状态状态
            System.out.println("更新订单状态：");
            RefundInfo refundInfo1=new RefundInfo();
            refundInfo1.setRefundNo((String) plainTextMap.get("out_refund_no"));
            refundInfo1.setRefundId((String) plainTextMap.get("refund_id"));
            refundInfo1.setEndTime(String.valueOf(new DateTime()));
            System.out.println(OrderStatus.REFUND_SUCCESS.getType());
            refundInfo1.setRefundStatus(OrderStatus.REFUND_SUCCESS.getType());
            userDao.updateStatusByRefundNo(refundInfo1);
            //更新用户商品单状态
            String[] list=merchantDao.getOrderGoodsid(String.valueOf(plainTextMap.get("out_trade_no"))).getGoodsid().split(" ");
            for(int i=0;i<list.length;i++)
                userDao.updateStatusByOrderNo1(refundInfo1.getOrderNo(),OrderStatus.REFUND_SUCCESS.getType(),list[i]);
            //更新订单状态
            userDao.updateOrderInfo(refundInfo1.getOrderNo(),OrderStatus.REFUND_SUCCESS.getType());

            //成功应答
            response.setStatus(200);
            map.put("code","SUCCESS");
            map.put("message","成功");
            return gson.toJson(map);
        } catch (JsonSyntaxException e) {
            e.printStackTrace();
            response.setStatus(500);
            map.put("code","FAIL");
            map.put("message","失败");
            return gson.toJson(map);
        }
    }
}
