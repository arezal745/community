package com.community.controller;

import cn.hutool.core.date.DateTime;
import cn.hutool.core.io.FileUtil;
import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.StrUtil;
import com.alibaba.fastjson.JSON;
import com.community.Re.Result;
import com.community.bean.*;
import com.community.dao.UserDao;
import com.community.util.OrderNoUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.ClassUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserDao userDao;

    @RequestMapping("/getuser")
    public String getuser(@RequestBody User user)
    {
        System.out.println("####获取用户信息####"+new DateTime());
        HashMap<String,Object> res= new HashMap<>();
        HashMap<String,Object> meta= new HashMap<>();
        if(user.getId()==0){
            res.put("data","");
            meta.put("msg","必填项数据为空");
            meta.put("status",400);
        }
        else {
            User us=userDao.getUser(user);
            res.put("data",us);
            meta.put("msg","获取成功");
            meta.put("status",200);
        }
        res.put("meta",meta);
        return JSON.toJSONString(res);
    }
    @RequestMapping("/edituser")
    public String edituser(@RequestBody User user){
        System.out.println("####修改用户信息####"+new DateTime());
        HashMap<String,Object> res= new HashMap<>();
        HashMap<String,Object> meta= new HashMap<>();
        if(user.getId()==0||user.getUsername()==null||user.getMobile()==null|| Objects.equals(user.getMobile(), "") || user.getUsername().equals("") || user.getSex().equals("") ||user.getSex()==null)
        {
            res.put("data","");
            meta.put("msg","必填项数据错误");
            meta.put("status",400);
            res.put("meta",meta);
            return JSON.toJSONString(res);
        }
        int i=userDao.editUser(user);
        if(i==1){
            User us=userDao.getUser(user);
            res.put("data",us);
            meta.put("msg","修改成功");
            meta.put("status",200);
        }
        else {
            res.put("data","null");
            meta.put("msg","账号id错误");
            meta.put("status",400);
        }
        res.put("meta",meta);
        return JSON.toJSONString(res);
    }
    @RequestMapping("/editpsd")
    public String editpsd(@RequestBody User user){
        System.out.println("####修改用户密码####"+new DateTime());
        Result rs=new Result();
        if(user.getMobile()==null||user.getMobile()=="")
        {
            return rs.error("必填项为空",400);
        }
        int i=userDao.editpsd(user);
        if(i==1){
            return rs.success("null","修改成功",200);
        }
        else {
            return rs.error("账号id错误",400);
        }
    }
    @RequestMapping("/address")
    public String address(@RequestBody UserAddress userAddress){
        System.out.println("####获取收货地址####"+new DateTime());
        HashMap<String,Object> res= new HashMap<>();
        HashMap<String,Object> meta= new HashMap<>();
        if(userAddress.getUserid()==null|| userAddress.getUserid().equals(""))
        {
            res.put("data","");
            meta.put("msg","必填项数据为空");
            meta.put("status",400);
        }
        else {
//            System.out.println(userAddress);
            List<UserAddress> ua= userDao.getAddressMessage(userAddress.getUserid());
            meta.put("msg", "获取成功");
            meta.put("status", 200);
            res.put("data", ua);
        }
        res.put("meta",meta);
        return JSON.toJSONString(res);
    }
    @RequestMapping("/setAddressStatus")
    public String setAddressStatus(@RequestBody UserAddress userAddress){
        System.out.println("####设置主使用地址####"+new DateTime());
        Result rs=new Result();
        if(userAddress.getUserid()==null|| userAddress.getUserid().equals(""))
        {
            return rs.error("必填项为空",400);
        }
        else {
//            System.out.println(userAddress);
            List<UserAddress> ua= userDao.getAddressMessage(userAddress.getUserid());
            for(int i=0;i<ua.size();i++)
            {
                if(ua.get(i).getAddressid()!=userAddress.getAddressid())
                {
                    userDao.setAddressStatus(ua.get(i).getAddressid(),false);
                }
            }
            userDao.setAddressStatus(userAddress.getAddressid(),true);
        }
        return rs.success("null","设置成功",200);
    }
    @RequestMapping("/addressById")
    public String addressById(@RequestBody UserAddress userAddress){
        System.out.println("####获取单个收货地址####"+new DateTime());
        HashMap<String,Object> res= new HashMap<>();
        HashMap<String,Object> meta= new HashMap<>();
        if(userAddress.getAddressid()==0)
        {
            res.put("data","");
            meta.put("msg","必填项数据为空");
            meta.put("status",400);
        }
        else {
//            System.out.println(userAddress);
            UserAddress ua= userDao.addressById(userAddress);
            meta.put("msg", "获取成功");
            meta.put("status", 200);
            res.put("data", ua);
        }
        res.put("meta",meta);
        return JSON.toJSONString(res);
    }
    @RequestMapping("/Addaddress")
    public String Addaddress(@RequestBody UserAddress userAddress){
        System.out.println("####添加收货地址####"+new DateTime());
        HashMap<String,Object> res= new HashMap<>();
        HashMap<String,Object> meta= new HashMap<>();
        if(userAddress.getDetailedAddress()==null|| userAddress.getDetailedAddress().equals("") ||userAddress.getMobile()==null||userAddress.getConsignee()==null||userAddress.getAddress()==null|| userAddress.getMobile().equals("") || userAddress.getConsignee().equals("") || userAddress.getAddress().equals(""))
        {
            res.put("data","");
            meta.put("msg","必填项数据为空");
            meta.put("status",400);
            res.put("meta",meta);
            return JSON.toJSONString(res);
        }
        else {
//            System.out.println(userAddress);
            int i=userDao.AddAddress(userAddress);
            List<UserAddress> ua= userDao.getAddressMessage(userAddress.getUserid());
//            System.out.println(ua.get(0));
            meta.put("msg", "获取成功");
            meta.put("status", 200);
            res.put("data", ua);
            res.put("meta", meta);
        }
        return JSON.toJSONString(res);
    }
    @RequestMapping("/Editaddress")
    public String Editaddress(@RequestBody UserAddress userAddress){
        System.out.println("####修改收货地址####"+new DateTime());
        HashMap<String,Object> res= new HashMap<>();
        HashMap<String,Object> meta= new HashMap<>();
        if(userAddress.getAddressid()==0||userAddress.getDetailedAddress()==null|| userAddress.getDetailedAddress().equals("") ||userAddress.getMobile()==null||userAddress.getConsignee()==null||userAddress.getAddress()==null|| userAddress.getMobile().equals("") || userAddress.getConsignee().equals("") || userAddress.getAddress().equals(""))
        {
            res.put("data","");
            meta.put("msg","必填项数据为空");
            meta.put("status",400);
            res.put("meta",meta);
            return JSON.toJSONString(res);
        }
        int i=userDao.EditAddress(userAddress);
//        System.out.println(i);
        if(i==1)
        {
            res.put("data",userAddress);
            meta.put("msg","修改成功");
            meta.put("status",200);
        }
        else {
            res.put("data","null");
            meta.put("msg","修改失败,请求删除资源不存在");
            meta.put("status",404);
        }
        res.put("meta",meta);
        return JSON.toJSONString(res);

    }
    @RequestMapping("/Deladdress")
    public String Deladdress(@Param("addressid") String addressid)
    {
        System.out.println("####删除收货地址####"+new DateTime());
//        System.out.println(addressid);
        HashMap<String,Object> res= new HashMap<>();
        HashMap<String,Object> meta= new HashMap<>();
        if(addressid==null|| addressid.equals(""))
        {
            res.put("data","");
            meta.put("msg","必填项数据为空");
            meta.put("status",400);
        }
        else {
            int i=userDao.Deladdress(addressid);
            res.put("data","null");
            if(i==1)
            {
                meta.put("msg","删除成功");
                meta.put("status",200);
                res.put("meta",meta);
            }
            else {
                meta.put("msg","请求删除资源不存在");
                meta.put("status",404);
            }
        }
        res.put("meta",meta);
        return JSON.toJSONString(res);
    }

    @RequestMapping("/editimg")
    public String upload(@RequestParam MultipartFile file, int id){
        System.out.println("####修改头像####"+new DateTime());
        HashMap<String,Object> res= new HashMap<>();
        HashMap<String,Object> data= new HashMap<>();
        HashMap<String,Object> meta= new HashMap<>();
        String originalFilename = file.getOriginalFilename();
        long size = file.getSize();

//        System.out.println(file);

        String type = FileUtil.extName(originalFilename);
//        System.out.println(size+"||"+type+"||"+id);
        if(!Objects.equals(type, "jpeg") && !Objects.equals(type, "jpg") && !Objects.equals(type, "png")){
            res.put("data","null");
            meta.put("msg","图片格式错误");
            meta.put("status",400);
            res.put("meta",meta);
            return JSON.toJSONString(res);
        }
        if(3*1024*1024 < size){
            res.put("data","null");
            meta.put("msg","图片大小不能超过3M");
            meta.put("status",400);
            res.put("meta",meta);
            return JSON.toJSONString(res);
        }
        String uploadPath = "D:/data bank/毕业设计/community/target/classes/static/userImg/";
        System.out.println(":"+uploadPath);
        File file1 = new File(uploadPath);
        if(!file1.exists()){
            file1.mkdirs();
        }
        //用uuid当文件名避免文件名重复
        String uuid = IdUtil.fastSimpleUUID();
        String fileName="/userImg/"+uuid + StrUtil.DOT + type;
//        System.out.println(fileName);
        String route = uploadPath + uuid + StrUtil.DOT + type;
        File uploadFile = new File(route);
        try {
            file.transferTo(uploadFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
        User user=userDao.getUserimg(id);
//        System.out.println(user);
        if((user.getUserimg().contains("defalut1.jpg"))||(user.getUserimg().contains("defalut2.jpg")))
        {
//                        System.out.println(user.getUserimg());
        }
        else {
            String[] list=user.getUserimg().split("/");
//            System.out.println(list[2]);
            String filename1= uploadPath +list[2];
//            System.out.println(filename1);
            File file2=new File(filename1);
            if(file2.exists())
            {
                file2.delete();
            }
            //            System.out.println(user.getUserimg());
        }
        user.setUserimg(fileName);
        userDao.setUserimg(user);
        data.put("id",user.getId());
        data.put("userimg",user.getUserimg());
        res.put("data",data);
        meta.put("msg","修改成功");
        meta.put("status",200);
        res.put("meta",meta);
        return JSON.toJSONString(res);
    }
    @RequestMapping("/creatOrder")
    public String creatOrder(@RequestBody UserOrders userOrders){
        System.out.println("####生成订单####"+new DateTime());
        HashMap<String,Object> res= new HashMap<>();
        Result rs=new Result();
        if(userOrders.getUserID()==0||userOrders.getAddressID()==0||userOrders.getGoodsID()==0||userOrders.getGoodsName()==null||userOrders.getGoodsImg()==null||userOrders.getPrice()==0||userOrders.getPrice2()==0||userOrders.getNumber()==0||userOrders.getOrderTime()==null)
        {
            return rs.error("必填项数据有空值",400);
        }
        else {
            userDao.addgoodsSV(userOrders);
            userOrders.setStatus("未支付");
            userDao.creatOrder(userOrders);
            userDao.setInventory(userOrders);
            int i=userOrders.getOrderID();
            res.put("orderID",i);
            return rs.success(res,"提交成功",200);
        }
    }

    @RequestMapping("/getOrders")
    public String getOrders(@RequestBody UserOrders userOrders){
        System.out.println("####获取订单列表####"+new DateTime());
        Result rs=new Result();
        if(userOrders.getUserID()==0)
        {
            return rs.error("必填项数据有空值",400);
        }
        else {
            ArrayList<OrderInfo> list=userDao.getOrders(userOrders);
            ArrayList<Object> info=new ArrayList<>();
            for(int i=0;i<list.size();i++)
            {
                ArrayList<UserOrders> orderList=userDao.getUserOrders(list.get(i).getOrderNo());
                String[] image=new String[orderList.size()];
                int[] goodsids=new int[orderList.size()];
                Double sum=0.0;
                int j=0;
                for(;j<orderList.size();j++)
                {
                    image[j]=orderList.get(j).getGoodsImg();
                    goodsids[j]=orderList.get(j).getGoodsID();
                    sum+=orderList.get(j).getPrice2()*orderList.get(j).getNumber();
                }
                HashMap<String,Object> res= new HashMap<>();
                res.put("orderNo",list.get(i).getOrderNo());
                res.put("price",sum);
                res.put("status",list.get(i).getOrderStatus());
                res.put("Time",orderList.get(j-1).getOrderTime());
                res.put("imgs",image);
                res.put("goodsids",goodsids);
                info.add(res);
            }
            return rs.success(info,"获取成功",200);
        }
    }

    @RequestMapping("/queryOrders")
    public String queryOrders(@RequestBody UserOrders userOrders){
        System.out.println("####搜索订单列表####"+new DateTime());
        Result rs=new Result();
        if(userOrders.getUserID()==0)
        {
            return rs.error("必填项数据有空值",400);
        }
        else {
            userOrders.setQuery('%'+userOrders.getQuery()+'%');
            ArrayList<OrderInfo> list=userDao.queryOrders(userOrders);
            ArrayList<Object> info=new ArrayList<>();
            for(int i=0;i<list.size();i++)
            {
                ArrayList<UserOrders> orderList=userDao.getUserOrders(list.get(i).getOrderNo());
                String[] image=new String[orderList.size()];
                Double sum=0.0;
                int j=0;
                for(;j<orderList.size();j++)
                {
                    image[j]=orderList.get(j).getGoodsImg();
                    sum+=orderList.get(j).getPrice2()*orderList.get(j).getNumber();
                }
                HashMap<String,Object> res= new HashMap<>();
                res.put("orderNo",list.get(i).getOrderNo());
                res.put("price",sum);
                res.put("status",list.get(i).getOrderStatus());
                res.put("Time",orderList.get(j-1).getOrderTime());
                res.put("imgs",image);
                info.add(res);
            }
            return rs.success(info,"获取成功",200);
        }
    }
    @RequestMapping("/getOrdersDetail")
    public String getOrdersDetail(@RequestBody UserOrders userOrders){
        System.out.println("####获取订单详情####"+new DateTime());
        Result rs=new Result();
        HashMap<String,Object> res=new HashMap<>();
        if(userOrders.getOrderNo()=="")
        {
            return rs.error("必填项数据有空值",400);
        }
        else {
                ArrayList<UserOrders> orderList=userDao.getUserOrders(userOrders.getOrderNo());
                int[] goodsID=new int[orderList.size()];
                String[] image=new String[orderList.size()];
                int i=0;
                Double sum=0.0;
                for(;i<orderList.size();i++)
                {
                    image[i]=orderList.get(i).getGoodsImg();
                    goodsID[i] = orderList.get(i).getGoodsID();
                    sum+=orderList.get(i).getPrice2()*orderList.get(i).getNumber();
                }
                res.put("goodsIdList",goodsID);
                res.put("image",image);
                res.put("addressID",orderList.get(i-1).getAddressID());
                res.put("price",sum);
                res.put("orderTime",orderList.get(i-1).getOrderTime());
                res.put("payment",orderList.get(i-1).getPayment());
                res.put("status",orderList.get(i-1).getStatus());
                res.put("orderNo",orderList.get(i-1).getOrderNo());
                res.put("transactionId",orderList.get(i-1).getTransactionId());
            }
            return rs.success(res,"获取成功",200);
    }
    @RequestMapping("/getOrderStatus")
    public String getOrderStatus(@RequestBody OrderInfo orderInfo){
        System.out.println("####查询订单状态（用户）####"+new DateTime());
        Result rs=new Result();
        if(orderInfo.getOrderNo().equals("") ||orderInfo.getOrderNo()==null)
        {
            return rs.error("必填项数据有空值",400);
        }
        HashMap<String,String> map=new HashMap<>();
        String orderStatus=userDao.getOrderStatus(orderInfo.getOrderNo());
//        System.out.println(orderStatus);
        map.put("orderStatus",orderStatus);
        return rs.success(map,"获取成功",200);
    }

    @RequestMapping("/refunds")
    public String refunds(@RequestBody RefundInfo refundInfo){
        System.out.println("####申请退款(用户)####"+new DateTime());
        Result rs=new Result();
        if(refundInfo.getOrderNo().equals("") ||refundInfo.getOrderNo()==null)
            return rs.error("必填项数据有空值",400);
        //设置商家id
        int i=userDao.queryMerID(refundInfo.getOrderNo());
        refundInfo.setMerchantid(i);
        refundInfo.setRefundNo(OrderNoUtils.getRefundNo());
        refundInfo.setRefundStatus("退款中");
//        refundInfo.setTotalFee(2);
//        refundInfo.setRefund(2);

        refundInfo.setTotalFee(1);
        refundInfo.setRefund(1);
        //创建退款单
        userDao.setrefundInfo(refundInfo);
        OrderInfo orderInfo=new OrderInfo();
        orderInfo.setOrderNo(refundInfo.getOrderNo());
        String[] list=refundInfo.getGoodsID().split(" ");
        //更新用户单表状态
        for(int j=0;j<list.length;j++)
        {
            orderInfo.setGoodsid(list[j]);
            userDao.uporderInfo(orderInfo);
        }
        //更新订单表状态
        userDao.upoderStatus(refundInfo);
        HashMap<String,Object> map=new HashMap<>();
        map.put("refundNo",refundInfo.getRefundNo());
        return rs.success(map,"申请成功,等待审核",200);
    }
    @RequestMapping("/queryRfundNo")
    public String queryRfundNo(@RequestBody RefundInfo refundInfo){
        System.out.println("####查询退款单号####"+new DateTime());
        Result rs=new Result();
        System.out.println(refundInfo);
        if(refundInfo.getOrderNo().equals("") ||refundInfo.getOrderNo()==null)
        {
            return rs.error("必填项数据有空值",400);
        }
        HashMap<String,String> map=new HashMap<>();
        String refundNo=null;
        try
        {
            refundNo=userDao.queryRfundNo(refundInfo);
        }catch (Exception e){
            e.printStackTrace();
        }
//        System.out.println(refundNo);
        if(refundNo==null)
            return rs.error("无此退款单",400);
        map.put("refundNo",refundNo);
        return rs.success(map,"查询成功",200);
    }
    @RequestMapping(value = "/RefundUpload")
    public String RefundUpload(@RequestParam("file")  List<MultipartFile> file ,String refundNo) {
        System.out.println("####上传退款图片####"+new DateTime());
        Result rs = new Result();
        String uploadPath = "D:/data bank/毕业设计/community/target/classes/static/refundImg/";
        String imgList="";
        for(int i=0;i<file.size();i++)
        {
            String originalFilename = file.get(i).getOriginalFilename();
            String type = FileUtil.extName(originalFilename);
            //用uuid当文件名避免文件名重复
            String uuid = IdUtil.fastSimpleUUID();
            String fileName="/refundImg/"+uuid + StrUtil.DOT + type;
            String route = uploadPath + uuid + StrUtil.DOT + type;
            File uploadFile = new File(route);
            try {
                file.get(i).transferTo(uploadFile);
            } catch (IOException e) {
                e.printStackTrace();
            }
//            System.out.println(fileName);
            imgList=imgList+fileName+",";
        }
//        System.out.println(imgList);
        int i=userDao.setRefundImg(imgList,refundNo);
        if(i==1)
            return rs.success("null", "上传成功", 200);
        else
            return rs.error("上传失败",400);
    }
    @RequestMapping("/queryRefund")
    public String queryRefund(@RequestBody RefundInfo refundInfo){
        System.out.println("####查询退款详情（用户）####"+new DateTime());
        Result rs=new Result();
        if(refundInfo.getRefundNo().equals("") ||refundInfo.getRefundNo()==null)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            RefundInfo refundInfo1=userDao.getRefundStatus(refundInfo);

            String[] ImgList=refundInfo1.getRefundImg().split(",");
            System.out.println(refundInfo1);
            HashMap<String,Object> data=new HashMap<>();
            data.put("goodsID",refundInfo1.getGoodsID());
            data.put("orderNo",refundInfo1.getOrderNo());
            data.put("reason",refundInfo1.getReason());
            data.put("refundId",refundInfo1.getRefundId());
            data.put("refundNo",refundInfo1.getRefundNo());
            data.put("refundStatus",refundInfo1.getRefundStatus());
            data.put("totalFee",refundInfo1.getTotalFee());
            data.put("ImgList",ImgList);
            return rs.success(data,"查询成功",200);
        }
    }
    @RequestMapping("/Native")
    public String Native(@RequestBody OrderInfo orderInfo)
    {
        System.out.println("####继续支付二维码####"+new DateTime());
        Result rs=new Result();
        if(orderInfo.getOrderNo()==null)
            return rs.error("必填项数据为空",400);
        else {
            String codeUrl=userDao.getNative(orderInfo);
            HashMap<String,Object> res=new HashMap<>();
            res.put("code_url",codeUrl);
            return rs.success(res,"获取成功",200);
        }
    }
    @RequestMapping("/confirmReccipt")
    public String confirmReccipt(@RequestBody OrderInfo orderInfo){
        System.out.println("####确认收货####"+new DateTime());
        Result rs=new Result();
        if(orderInfo.getOrderNo()==""||orderInfo.getOrderStatus()=="")
            return rs.error("必填项数据为空",400);
        else {
            userDao.updateStatusByOrderNo2(orderInfo.getOrderNo(),"已收货");
            return rs.success("null","修改成功",200);
        }
    }
    @RequestMapping("/getRiderPosition")
    public String getRiderPosition(@RequestBody OrderInfo orderInfo){
        System.out.println("####获取骑手位置####"+new DateTime());
        Result rs=new Result();
        if(orderInfo.getOrderNo()=="")
            return rs.error("必填项数据为空",400);
        else {
            Rider rider=userDao.getRiderPosition(orderInfo);
            HashMap<String,Object> data=new HashMap<>();
            data.put("id",rider.getId());
            data.put("name",rider.getName());
            data.put("phone",rider.getPhone());
            data.put("position",rider.getPosition());
            data.put("lng",rider.getLng());
            data.put("lat",rider.getLat());
            return rs.success(data,"获取成功",200);
        }
    }

}
