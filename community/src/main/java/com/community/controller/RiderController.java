package com.community.controller;


import cn.hutool.core.date.DateTime;
import com.community.Re.Result;
import com.community.bean.*;
import com.community.dao.RiderDao;
import com.community.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;

@RestController
@RequestMapping("/Rider")
public class RiderController {
    @Autowired
    RiderDao riderDao;

    @Autowired
    UserDao userDao;

    @RequestMapping("/getMessage")
    public String getMessage(@RequestBody Rider rider)
    {
        System.out.println("####获取骑手信息####"+new DateTime());
        Result rs=new Result();
        if(rider.getId()==0)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            Rider us=riderDao.getMessage(rider);
            HashMap<String,Object> data=new HashMap<>();
            data.put("id", us.getId());
            data.put("username", us.getUsername());
            data.put("name", us.getName());
            data.put("phone", us.getPhone());
            data.put("region",us.getRegion());
            return rs.success(data,"获取成功",200);
        }
    }
    @RequestMapping("/editMessage")
    public String editMessage(@RequestBody Rider rider)
    {
        System.out.println("####修改骑手信息####"+new DateTime());
        Result rs=new Result();
        if(rider.getId()==0)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            riderDao.editMessage(rider);
            return rs.success("null","修改成功",200);
        }
    }
    @RequestMapping("/getOrderList")
    public String getOrderList(@RequestBody Rider rider)
    {
        System.out.println("####获取接单列表####"+new DateTime());
        Result rs=new Result();
        if(rider.getRegion()==null)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            ArrayList<RiderOrder> list=riderDao.getOrderList(rider);
            return rs.success(list,"获取成功",200);
        }
    }
    @RequestMapping("/setOrderRide")
    public String setOrderRide(@RequestBody OrderInfo orderInfo)
    {
        System.out.println("####骑手接单####"+new DateTime());
        Result rs=new Result();
        if(orderInfo.getId()==0||orderInfo.getOrderNo()==null)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            riderDao.setOrderRide(orderInfo);
            userDao.updateStatusByOrderNo2(orderInfo.getOrderNo(),"配送中");
            return rs.success("null","接单成功",200);
        }
    }
    @RequestMapping("/getOrderListByRider")
    public String getOrderListByRider(@RequestBody Rider rider)
    {
        System.out.println("####获取已接单列表####"+new DateTime());
        Result rs=new Result();
        if(rider.getId()==0)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            ArrayList<RiderOrder> list=riderDao.getOrderListByRider(rider);
            return rs.success(list,"获取成功",200);
        }
    }

    @RequestMapping("/getOrderListAchieve")
    public String getOrderListAchieve(@RequestBody Rider rider)
    {
        System.out.println("####获取已送达列表####"+new DateTime());
        Result rs=new Result();
        if(rider.getId()==0)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            ArrayList<RiderOrder> list=riderDao.getOrderListAchieve(rider);
            return rs.success(list,"获取成功",200);
        }
    }

    @RequestMapping("/getOrderDetail")
    public String getOrderDetail(@RequestBody OrderInfo orderInfo)
    {
        System.out.println("####（骑手）获取订单详情####"+new DateTime());
        Result rs=new Result();
        if(orderInfo.getOrderNo()==null)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            UserAddress userAddress=riderDao.getUserAddress(orderInfo);
            Merchant merchant=riderDao.getMerchant(orderInfo);
            orderInfo=riderDao.getOrderInfo(orderInfo);
            HashMap<String,Object> data=new HashMap<>();
            data.put("id",orderInfo.getId());
            data.put("merchantMobile",merchant.getMobile());
            data.put("merchantAddress",merchant.getRegionname());
            data.put("userName",userAddress.getConsignee());
            data.put("userMobile",userAddress.getMobile());
            data.put("userAddress",userAddress.getAddress());
            return rs.success(data,"获取成功",200);
        }
    }

    @RequestMapping("/setPosition")
    public String setPosition(@RequestBody Rider rider)
    {
        System.out.println("####上传骑手位置####"+new DateTime());
        Result rs=new Result();
        if(rider.getId()==0||rider.getPosition()==null)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            riderDao.setPosition(rider);
            return rs.success("null","上传成功",200);
        }
    }

    @RequestMapping("/editpsd")
    public String editpsd(@RequestBody Rider rider){
        System.out.println("####修改骑手密码####"+new DateTime());
        Result rs=new Result();
        if(rider.getPhone()==null||rider.getPassword()==null)
        {
            return rs.error("必填项为空",400);
        }
        int i=riderDao.editpsd(rider);
        if(i==1){
            return rs.success("null","修改成功",200);
        }
        else {
            return rs.error("账号id错误",400);
        }
    }
    @RequestMapping("/setOrderStatus")
    public String setOrderStatus(@RequestBody OrderInfo orderInfo){
        System.out.println("####确认送达####"+new DateTime());
        Result rs=new Result();
        if(orderInfo.getOrderNo()==null)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            userDao.updateStatusByOrderNo2(orderInfo.getOrderNo(),"已送达");
            return rs.success("null","修改成功",200);
        }
    }
}
