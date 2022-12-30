package com.community.controller;

import cn.hutool.core.date.DateTime;
import cn.hutool.core.io.FileUtil;
import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.StrUtil;
import com.community.Re.Result;
import com.community.bean.*;
import com.community.dao.GoodsDao;
import com.community.dao.MerchantDao;
import com.community.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@RestController
@RequestMapping("/Merchant")
public class MerchantController {
    @Autowired
    MerchantDao merchantDao;

    @Autowired
    GoodsDao goodsDao;

    @Autowired
    UserDao userDao;

    @RequestMapping("/editpsd")
    public String editpsd(@RequestBody Merchant merchant){
        System.out.println("####修改商家密码####"+new DateTime());
        Result rs=new Result();
        if(merchant.getMobile()==null)
        {
            return rs.error("必填项为空",400);
        }
        int i=merchantDao.editpsd(merchant);
        if(i==1){
            return rs.success("null","修改成功",200);
        }
        else {
            return rs.error("账号id错误",400);
        }
    }

    @RequestMapping("/getOrderList")
    public String getOrderList(@RequestBody OrderInfo orderInfo)
    {
        System.out.println("####获取订单列表####"+new DateTime());
        Result rs=new Result();
        if(orderInfo.getMerchantid()==0)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            ArrayList<OrderList> list= merchantDao.getOrderList(orderInfo);
            return rs.success(list,"获取成功",200);
        }

    }

    @RequestMapping("/setStatus")
    public String setStatus(@RequestBody OrderInfo orderInfo)
    {
        System.out.println("####修改订单状态####"+new DateTime());
        Result rs=new Result();
        if(orderInfo.getOrderStatus()==null||orderInfo.getOrderNo()==null)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            userDao.updateStatusByOrderNo2(orderInfo.getOrderNo(),orderInfo.getOrderStatus());
            return rs.success("null","修改成功",200);
        }
    }
    @RequestMapping("/OrderDetailByStatus")
    public String OrderDetailByStatus(@RequestBody OrderInfo orderInfo)
    {
        System.out.println("####获取订单详情####"+new DateTime());
        Result rs=new Result();
        if(orderInfo.getOrderStatus()==null||orderInfo.getOrderNo()==null)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            ArrayList<UserOrders> list=merchantDao.getOrders(orderInfo);
            HashMap<String,Object> res=new HashMap<>();
            ArrayList<Object> detail=new ArrayList<>();
            double sum=0;
            for(int i=0;i<list.size();i++)
            {
                HashMap<String,Object> data=new HashMap<>();
                data.put("goodsName",list.get(i).getGoodsName());
                data.put("price2",list.get(i).getPrice2());
                data.put("number",list.get(i).getNumber());
                sum+=list.get(i).getPrice2()*list.get(i).getNumber();
                detail.add(data);
            }
            res.put("detail",detail);
            res.put("status",list.get(0).getStatus());
            res.put("orderNO",list.get(0).getOrderNo());
            res.put("transactionId",list.get(0).getTransactionId());
            res.put("price",sum);
            Rider rider=merchantDao.getRider(orderInfo);
            if(rider==null)
            {
                return rs.success(res,"获取成功",200);
            }
            HashMap<String,Object> riderRes=new HashMap<>();
            riderRes.put("name",rider.getName());
            riderRes.put("phone",rider.getPhone());
            res.put("rider",riderRes);
            return rs.success(res,"获取成功",200);

        }
    }
    @RequestMapping("/getRefundOrderList")
    public String getRefundOrderList(@RequestBody RefundInfo refundInfo)
    {
        System.out.println("####获取退款订单列表####"+new DateTime());
        Result rs=new Result();
        if(refundInfo.getRefundStatus()==null)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            ArrayList<RefundInfo> list=merchantDao.getRefundOrderList(refundInfo);
            ArrayList<Object> res=new ArrayList<>();
            for (RefundInfo info : list) {
                HashMap<String, Object> data = new HashMap<>();
                data.put("beginTime", info.getBeginTime());
                data.put("goodsID", info.getGoodsID().split(" "));
                data.put("orderNo", info.getOrderNo());
                data.put("reason", info.getReason());
                data.put("refund", info.getRefund());
                data.put("refundImg", info.getRefundImg().split(","));
                data.put("refundNo", info.getRefundNo());
                data.put("refundStatus", info.getRefundStatus());
                data.put("totalFee", info.getTotalFee());
                data.put("endTime", info.getEndTime());
                res.add(data);
            }
            return rs.success(res,"获取成功",200);
        }
    }

    @RequestMapping("/getGoodsDetail")
    public String getGoodsDetail(@RequestBody GoodsDetails goodsDetails)
    {
        System.out.println("####获取商品详情(商家)####"+new DateTime());
        Result rs=new Result();
        if(goodsDetails.getGoodsid()==0)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            GoodsDetails list=merchantDao.getGoods(goodsDetails);

                GoodsPicture goodsPicture=goodsDao.getPic(list);
//                System.out.println(goodsPicture);
                goodsDetailsJSON goodsJSON = new goodsDetailsJSON();
                goodsJSON.setGoodsid(list.getGoodsid());
                goodsJSON.setName(list.getName());
                goodsJSON.setPrice(list.getPrice());
                goodsJSON.setPrice2(list.getPrice2());
                goodsJSON.setUnit(list.getUnit());
                goodsJSON.setInventory(list.getInventory());
                goodsJSON.setCatename(list.getCatename());
                goodsJSON.setCateid2(list.getCateid2());
                goodsJSON.setStatus(list.getStatus());
                String pic;
                pic=goodsPicture.getPicname1();
                goodsJSON.setGoodsPic(pic);
//                System.out.println(goodsJSON);
            return rs.success(goodsJSON,"获取成功",200);
        }
    }
    @RequestMapping("/cateGoods")
    public String cateGoods(@RequestBody GoodsDetails goodsDetails)
    {
        System.out.println("####商家分类商品列表####"+new DateTime());
        Result rs=new Result();
        if(goodsDetails.getCatename()==null||goodsDetails.getCateid2()==0||goodsDetails.getMerchantid()==0)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            ArrayList<GoodsDetails> list=merchantDao.cateGoods(goodsDetails);
            ArrayList<goodsDetailsJSON> arr=new ArrayList<>();
            for (GoodsDetails details : list) {
                GoodsPicture goodsPicture = goodsDao.getPic(details);
//                System.out.println(goodsPicture);
                goodsDetailsJSON goodsJSON = new goodsDetailsJSON();
                goodsJSON.setGoodsid(details.getGoodsid());
                goodsJSON.setName(details.getName());
                goodsJSON.setPrice(details.getPrice());
                goodsJSON.setPrice2(details.getPrice2());
                goodsJSON.setUnit(details.getUnit());
                goodsJSON.setInventory(details.getInventory());
                goodsJSON.setCatename(details.getCatename());
                goodsJSON.setCateid2(details.getCateid2());
                goodsJSON.setStatus(details.getStatus());
                String pic;
                pic = goodsPicture.getPicname1();
                goodsJSON.setGoodsPic(pic);
//                System.out.println(goodsJSON);
                arr.add(goodsJSON);
            }
                return rs.success(arr,"获取成功",200);
        }
    }
    @RequestMapping("/editGoodsStatus")
    public String EditGoodsStatus(@RequestBody GoodsDetails goodsDetails)
    {
        System.out.println("####修改商品状态####"+new DateTime());
        Result rs=new Result();
        if(goodsDetails.getGoodsid()==0||goodsDetails.getStatus()==0)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            merchantDao.editGoodsStatus(goodsDetails);
            return rs.success("null","修改成功",200);
        }
    }

    @RequestMapping("/editGoods")
    public String EditGoodsName(@RequestBody GoodsDetails goodsDetails)
    {
        System.out.println("####编辑商品信息####"+new DateTime());
        Result rs=new Result();
        if(goodsDetails.getGoodsid()==0||goodsDetails.getName()==null||goodsDetails.getPrice2()==0
        ||goodsDetails.getCatename()==null||goodsDetails.getCateid2()==0)
        {
            return rs.error("必填项数据为空",400);
        }
        merchantDao.editGoodsName(goodsDetails);
        merchantDao.editGoodsPrice(goodsDetails);
        if(goodsDetails.getInventory()==0)
        {
            goodsDetails.setStatus(0);
            merchantDao.editGoodsStatus(goodsDetails);
        }
        merchantDao.editGoodsInventory(goodsDetails);
        merchantDao.editGoodsCate(goodsDetails);
        return rs.success("null","修改成功",200);
    }
    @RequestMapping("/editGoodsPrice")
    public String EditGoodsPrice(@RequestBody GoodsDetails goodsDetails)
    {
        System.out.println("####修改商品价格与库存####"+new DateTime());
        Result rs=new Result();
        if(goodsDetails.getGoodsid()==0||goodsDetails.getPrice2()==0)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            merchantDao.editGoodsPrice(goodsDetails);
            if(goodsDetails.getInventory()==0)
            {
                goodsDetails.setStatus(0);
                merchantDao.editGoodsStatus(goodsDetails);
            }
            merchantDao.editGoodsInventory(goodsDetails);
            return rs.success("null","修改成功",200);
        }
    }
    @RequestMapping("/editGoodsCate")
    public String EditGoodsCate(@RequestBody GoodsDetails goodsDetails)
    {
        System.out.println("####修改商品分类####"+new DateTime());
        Result rs=new Result();
        if(goodsDetails.getGoodsid()==0||goodsDetails.getCatename()==null||goodsDetails.getCateid2()==0)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            merchantDao.editGoodsCate(goodsDetails);
            return rs.success("null","修改成功",200);
        }
    }
    @RequestMapping("/addGoods")
    public String addGoods(@RequestBody goodsDetailsJSON goodsDetails)
    {
        System.out.println("####添加商品####"+new DateTime());
        Result rs=new Result();
        if(goodsDetails.getCatename()==null||goodsDetails.getCateid2()==0||goodsDetails.getPrice()==0||goodsDetails.getPrice2()==0||
        goodsDetails.getUnit()==null||goodsDetails.getMerchantid()==0||goodsDetails.getInventory()==0)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            goodsDetails.setStatus(1);
            merchantDao.addGoods(goodsDetails);
            merchantDao.addGoodsSv(goodsDetails);
            return rs.success("null","添加成功",200);
        }
    }
    @RequestMapping(value = "/goodsImgUpload")
    public String goodsImgUpload(@RequestParam("file") List<MultipartFile> file , int goodsid) {
        System.out.println("####上传商品图片####"+new DateTime());
        Result rs = new Result();
        String uploadPath = "D:/data bank/毕业设计/community/target/classes/static/images/";
        GoodsPicture goodsPicture=new GoodsPicture();
        goodsPicture.setGoodsid(goodsid);
        for(int i=0;i<file.size();i++)
        {
            String originalFilename = file.get(i).getOriginalFilename();
            String type = FileUtil.extName(originalFilename);
            //用uuid当文件名避免文件名重复
            String uuid = IdUtil.fastSimpleUUID();
            String fileName="/images/"+uuid + StrUtil.DOT + type;
            String route = uploadPath + uuid + StrUtil.DOT + type;
            File uploadFile = new File(route);
            try {
                file.get(i).transferTo(uploadFile);
            } catch (IOException e) {
                e.printStackTrace();
            }
//            System.out.println(fileName);
            switch (i)
            {
                case 0: goodsPicture.setPicname1(fileName);break;
                case 1: goodsPicture.setPicname2(fileName);break;
                case 2: goodsPicture.setPicname3(fileName);break;
                case 3: goodsPicture.setPicname4(fileName);break;
                case 4: goodsPicture.setPicname5(fileName);break;
            }
        }
        int i=merchantDao.uploadGoodsImg(goodsPicture);
        if(i==1)
            return rs.success("null", "上传成功", 200);
        else
            return rs.error("上传失败",400);
    }

    @RequestMapping("/register")
    public String register(@RequestBody Merchant merchant)
    {
        System.out.println("####商户注册####"+new DateTime());
        HashMap<String,Object> data=new HashMap<>();
        Result rs=new Result();
        if(merchant.getUsername()==null||merchant.getPassword()==null||merchant.getMobile()==null
                ||merchant.getRegion()==null|| merchant.getRegionname()==null)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            merchant.setRid("102");
            merchantDao.addMenchant(merchant);
            data.put("merchantid",merchant.getMerchantid());
            return rs.success(data,"注册成功",200);
        }
    }
    @RequestMapping(value = "/merUpload")
    public String merUpload(@RequestParam("file") List<MultipartFile> file , int merchantid) {
        System.out.println("####商家资质上传####"+new DateTime());
        Result rs = new Result();
        if(file.size()!=3)
        {
            return rs.error("上传资质不全",400);
        }
        String uploadPath = "D:/data bank/毕业设计/community/target/classes/static/qulifiImg/";
        MerchantQualification Qualification=new MerchantQualification();
        Qualification.setMerchantid(merchantid);
        for(int i=0;i<file.size();i++)
        {
            String originalFilename = file.get(i).getOriginalFilename();
            String type = FileUtil.extName(originalFilename);
            //用uuid当文件名避免文件名重复
            String uuid = IdUtil.fastSimpleUUID();
            String fileName="/qulifiImf/"+uuid + StrUtil.DOT + type;
            String route = uploadPath + uuid + StrUtil.DOT + type;
            File uploadFile = new File(route);
            try {
                file.get(i).transferTo(uploadFile);
            } catch (IOException e) {
                e.printStackTrace();
            }
//            System.out.println(fileName);
            switch (i)
            {
                case 0: Qualification.setStorePic(fileName);break;
                case 1: Qualification.setBusinessLicense(fileName);break;
                case 2: Qualification.setIdCard(fileName);break;
            }
        }
        Qualification.setMsg("待审核");
        Qualification.setStatus("false");
        Qualification.setMsg(String.valueOf(merchantid));
        int i=merchantDao.merUpload(Qualification);
        if(i==1)
            return rs.success("null", "上传成功,等待审核通过", 200);
        else
            return rs.error("上传失败",400);
    }
    @RequestMapping("/NOTrefunds")
    public String register(@RequestBody RefundInfo refundInfo)
    {
        System.out.println("####拒绝退款####"+new DateTime());
        Result rs=new Result();
        if(refundInfo.getOrderNo()==null||refundInfo.getRefundNo()==null)
        {
            return rs.error("必填项数据为空",400);
        }
        else {

            String[] list=refundInfo.getGoodsID().split(" ");
//            更新用户下单表
            for (String s : list) userDao.updateStatusByOrderNo1(refundInfo.getOrderNo(), "拒绝退款", s);
//            更新订单表
            refundInfo.setEndTime((new DateTime()).toString());
            refundInfo.setRefundId("");
            refundInfo.setRefundStatus("拒绝退款");
            userDao.updateStatusByRefundNo(refundInfo);
            userDao.updateOrderInfo(refundInfo.getOrderNo(),"拒绝退款");
            return rs.success("null","处理成功",200);
        }
    }
    @RequestMapping("/queryOrder")
    public String register(@RequestBody OrderInfo orderInfo)
    {
        System.out.println("####查询订单支付状态(后台）" +
                "####"+new DateTime());
        Result rs=new Result();
        if(orderInfo.getOrderNo()==null)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            HashMap<String,Object> map=new HashMap<>();
            map.put("orderStatus",userDao.getOrderStatus(orderInfo.getOrderNo()));
            return rs.success(map,"获取成功",200);
        }
    }
    @RequestMapping("/queryRefund")
    public String queryRefund(@RequestBody RefundInfo refundInfo)
    {
        System.out.println("####查询退款状态(后台）####"+new DateTime());
        Result rs=new Result();
        if(refundInfo.getRefundNo()==null)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            HashMap<String,Object> map=new HashMap<>();
            map.put("refundStatus",userDao.getRefundStatus(refundInfo));
            return rs.success(map,"获取成功",200);
        }
    }
    @RequestMapping("/getYearIncome")
    public String getYearIncome(@RequestBody MerYearIncome merYearIncome)
    {
        System.out.println("####获取商家年营收数据####"+new DateTime());
        Result rs=new Result();
        if(merYearIncome.getMerchantid()==0)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            HashMap<String,Object> map=new HashMap<>();
            ArrayList<MerYearIncome> list=merchantDao.getYearIncome(merYearIncome);
            String[] year=new String[list.size()];
            double[] data=new double[list.size()];
            for(int i=0;i<list.size();i++)
            {
                year[i]=list.get(i).getYear();
                data[i]=list.get(i).getAnnualIncome();
            }
            map.put("year",year);
            map.put("data",data);
            map.put("name","年营收");
            return rs.success(map,"获取成功",200);
        }
    }
    @RequestMapping("/getMonthIncome")
    public String getMonthIncome(@RequestBody MerYearIncome merYearIncome)
    {
        System.out.println("####获取月收入年份####"+new DateTime());
        Result rs=new Result();
        if(merYearIncome.getMerchantid()==0||merYearIncome.getYear()==null)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            HashMap<String,Object> map=new HashMap<>();
            merYearIncome.setYear(merYearIncome.getYear()+"%");
            ArrayList<MerMonthIncome> list=merchantDao.getMonthIncome(merYearIncome);
            String[] month=new String[list.size()];
            double[] data=new double[list.size()];
            for(int i=0;i<list.size();i++)
            {
                month[i]=list.get(i).getMonth();
                data[i]=list.get(i).getMonthlyIncome();
            }
            map.put("month",month);
            map.put("data",data);
            map.put("name","月营收");
            return rs.success(map,"获取成功",200);
        }
    }
    @RequestMapping("/refundDetailByStatus")
    public String refundDetailByStatus(@RequestBody RefundInfo refundInfo)
    {
        System.out.println("####退款单详情####"+new DateTime());
        Result rs=new Result();
        if(refundInfo.getRefundNo()==null&&refundInfo.getMerchantid()==0)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            HashMap<String,Object> res=new HashMap<>();
            ArrayList<Object> detail=new ArrayList<>();
            RefundInfo refund=userDao.getRefundStatus(refundInfo);
            String[] goodsid=refund.getGoodsID().split(" ");
            OrderInfo orderInfo=new OrderInfo();
            orderInfo.setOrderNo(refund.getOrderNo());
            double sum=0;
            for(int i=0;i<goodsid.length;i++)
            {
                orderInfo.setGoodsid(goodsid[i]);
                UserOrders userOrders=merchantDao.getRefundOrders(orderInfo);
                HashMap<String,Object> data=new HashMap<>();
                data.put("goodsName",userOrders.getGoodsName());
                data.put("price2",userOrders.getPrice2());
                data.put("number",userOrders.getNumber());
                sum+=userOrders.getPrice2()*userOrders.getNumber();
                detail.add(data);
            }
            User user=merchantDao.getUser(orderInfo);
            HashMap<String,Object> riderRes=new HashMap<>();
            riderRes.put("name",user.getUsername());
            riderRes.put("phone",user.getMobile());
            res.put("user",riderRes);
            res.put("detail",detail);
            res.put("status",refund.getRefundStatus());
            res.put("refundNo",refund.getRefundNo());
            res.put("price",sum);
            return rs.success(res,"获取成功",200);
        }
    }
    @RequestMapping("/getMerchant")
    public String getMerchant(@RequestBody Merchant merchant){
        System.out.println("####获取商家信息####"+new DateTime());
        Result rs=new Result();
        if(merchant.getMerchantid()==0)
        {
            return rs.error("必填项为空",400);
        }
        Merchant mer=merchantDao.getMerchant(merchant);
        HashMap<String,Object> res=new HashMap<>();
        res.put("username",mer.getUsername());
        res.put("mobile",mer.getMobile());
        res.put("region",mer.getRegion());
        res.put("regionname",mer.getRegionname());
        String img=merchantDao.getMerchantImg(merchant);
        res.put("img",img);
        return rs.success(res,"获取成功",200);
    }
    @RequestMapping("/editMerchant")
    public String editMerchant(@RequestBody Merchant merchant){
        System.out.println("####修改商家信息####"+new DateTime());
        Result rs=new Result();
        if(merchant.getMerchantid()==0||merchant.getUsername()==null||merchant.getRegion()==null||merchant.getRegionname()==null)
        {
            return rs.error("必填项为空",400);
        }
        merchantDao.editMerchant(merchant);
        return rs.success("null","修改成功",200);
    }
}
