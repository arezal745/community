package com.community.controller;


import cn.hutool.core.date.DateTime;
import com.community.Re.Result;
import com.community.bean.*;
import com.community.dao.BackStageDao;
import com.community.dao.MerchantDao;
import com.community.dao.RiderDao;
import com.community.dao.UserDao;
import com.community.util.JwtUtil;
import com.github.qcloudsms.SmsSingleSender;
import com.github.qcloudsms.SmsSingleSenderResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.HashMap;

@RestController
@RequestMapping("/login")
public class LoginController {
    @Autowired
    UserDao userDao;

    @Autowired
    MerchantDao merchantDao;

    @Autowired
    BackStageDao backStageDao;

    @Autowired
    RiderDao riderDao;

    @RequestMapping("/sendCode")
    public String Sms(@RequestBody Sms sms){
        System.out.println("####发送手机短信验证码####"+new DateTime());
        Result rs=new Result();
        int appId=1400751969;
        String appKey="4f14bfa4c0652eb33509b08308d5b736";
        int templateId=1576436;
        String smsSign="阿枫项目公众号";
        sms.setCode((int)((Math.random()*9+1)*100000));
        sms.setMin(5);
        try {
            String[] params={String.valueOf(sms.getCode()), String.valueOf(sms.getMin())};
            System.out.println(params);
            SmsSingleSender smsSingleSender=new SmsSingleSender(appId,appKey);
            SmsSingleSenderResult smsSingleSenderResult=smsSingleSender.sendWithParam("86",sms.getMobile(),templateId,params,smsSign,"","");
            System.out.println(smsSingleSenderResult);
        }catch (IOException | com.github.qcloudsms.httpclient.HTTPException | org.json.JSONException e)
        {
            e.printStackTrace();
        }
        return rs.success(sms,"发送成功",200);
    }

    @RequestMapping("/user")
    public String login(@RequestBody User user){
        System.out.println("####用户登录####"+new DateTime());
        HashMap<String,Object> data=new HashMap<>();
        Result rs=new Result();
        User us=null;
        try {
            us=userDao.getUserMessage(user.getUsername(),user.getPassword());
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        if(us==null)
            return rs.error("账号或密码错误",400);
        String token= JwtUtil.createToken(us.getId(),"103",us.getPassword());
//        System.out.println(token);
//        System.out.println("user:"+user);.

        data.put("id", us.getId());
        data.put("username", us.getUsername());
        data.put("mobile", us.getMobile());
        data.put("rid", us.getRid());
        data.put("userimg",us.getUserimg());
        data.put("token",token);
        return rs.success(data,"登录成功",200);

    }
    @RequestMapping("/userMobile")
    public String userMobile(@RequestBody User user){
        System.out.println("####用户手机号登录####"+new DateTime());
        HashMap<String,Object> data=new HashMap<>();
        Result rs=new Result();
        User us=userDao.getUserByMobile(user.getMobile());
        String token=null;
        try {
            token= JwtUtil.createToken(us.getId(),"103",us.getPassword());
        }catch (Exception e)
        {
            return rs.error("手机号未注册",400);
        }
//        System.out.println(token);
//        System.out.println("user:"+user);
        data.put("id", us.getId());
        data.put("username", us.getUsername());
        data.put("mobile", us.getMobile());
        data.put("rid", us.getRid());
        data.put("userimg",us.getUserimg());
        data.put("token",token);
        return rs.success(data,"登录成功",200);
    }
    @RequestMapping("/merchant")
    public String merchant(@RequestBody Merchant merchant){
        System.out.println("####商家登录####"+new DateTime());
        Result rs=new Result();
        HashMap<String,Object> data=new HashMap<>();
        Merchant mt=merchantDao.getUserMessage(merchant);
        String status=merchantDao.verifyStatus(merchant);
        if(status=="false")
            return rs.error("账号审核未通过，请稍后尝试",400);
        String token=null;
        try {
            token= JwtUtil.createToken(mt.getMerchantid(),"102",mt.getPassword());
        }catch (Exception e)
        {
            return rs.error("账号或密码错误",400);
        }
        data.put("merchantid", mt.getMerchantid());
        data.put("merchantname", mt.getUsername());
        data.put("region",mt.getRegion());
        data.put("regionname",mt.getRegion());
        data.put("mobile",mt.getMobile());
        data.put("token",token);
        return rs.success(data,"登录成功",200);
    }
    @RequestMapping("/merchantMobile")
    public String merchantMobile(@RequestBody Merchant merchant){
        System.out.println("####商家手机号登录####"+new DateTime());
        HashMap<String,Object> data=new HashMap<>();
        Result rs=new Result();
        Merchant mt=merchantDao.getMerchatByMobile(merchant.getMobile());
        String status=merchantDao.verifyStatusBymobile(merchant.getMobile());
        if(status=="false")
            return rs.error("账号审核未通过，请稍后尝试",400);
        String token=null;
        try {
            token= JwtUtil.createToken(mt.getMerchantid(),"102",mt.getPassword());
        }catch (Exception e)
        {
            return rs.error("手机号未注册",400);
        }
//        System.out.println(token);
        data.put("merchantid", mt.getMerchantid());
        data.put("merchantname", mt.getUsername());
        data.put("region",mt.getRegion());
        data.put("regionname",mt.getRegionname());
        data.put("mobile",mt.getMobile());
        data.put("token",token);
        return rs.success(data,"登录成功",200);

    }
    @RequestMapping("/manager")
    public String manager(@RequestBody Manager manager){
        System.out.println("####后台管理登录####"+new DateTime());
        HashMap<String,Object> data=new HashMap<>();
        Result rs=new Result();
        Manager us=null;
        try {
            us=backStageDao.getManager(manager);
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        if(us==null)
            return rs.error("账号或密码错误",400);
        String token= JwtUtil.createToken(us.getId(),"101",us.getPassword());
//        System.out.println(token);
//        System.out.println("user:"+user);.
        data.put("token",token);
        return rs.success(data,"登录成功",200);
    }
    @RequestMapping("/Rider")
    public String Rider(@RequestBody Rider rider){
        System.out.println("####骑手登录####"+new DateTime());
        HashMap<String,Object> data=new HashMap<>();
        Result rs=new Result();
        Rider us=null;
        try {
            us=riderDao.getRiderMessage(rider);
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        if(us==null)
            return rs.error("账号或密码错误",400);
        String token= JwtUtil.createToken(us.getId(),"102",us.getPassword());
//        System.out.println(token);
//        System.out.println("user:"+user);.

        data.put("id", us.getId());
        data.put("username", us.getUsername());
        data.put("name", us.getName());
        data.put("phone", us.getPhone());
        data.put("region",us.getRegion());
        data.put("token",token);
        return rs.success(data,"登录成功",200);

    }
    @RequestMapping("/RiderMobile")
    public String RiderMobile(@RequestBody Rider rider){
        System.out.println("####骑手手机号登录####"+new DateTime());
        HashMap<String,Object> data=new HashMap<>();
        Result rs=new Result();
        Rider us=riderDao.getRiderByMobile(rider);
        String token=null;
        try {
            token= JwtUtil.createToken(us.getId(),"104",us.getPassword());
        }catch (Exception e)
        {
            return rs.error("手机号未注册",400);
        }
//        System.out.println(token);
//        System.out.println("user:"+user);
        data.put("id", us.getId());
        data.put("username", us.getUsername());
        data.put("name", us.getName());
        data.put("phone", us.getPhone());
        data.put("region",us.getRegion());
        data.put("token",token);
        return rs.success(data,"登录成功",200);
    }
}
