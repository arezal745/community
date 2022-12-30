package com.community.controller;

import cn.hutool.core.date.DateTime;
import com.alibaba.fastjson.JSON;
import com.community.Re.Result;
import com.community.bean.Code;
import com.community.bean.Rider;
import com.community.bean.User;
import com.community.dao.RiderDao;
import com.community.dao.UserDao;
import com.community.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Objects;

@RestController
public class RegisterController {
    @Autowired
    UserDao userDao;

    @Autowired
    RiderDao riderDao;

    @RequestMapping("/register")
    public String register(@RequestBody User user) {
        System.out.println("####用户注册####"+new DateTime());
        HashMap<String,Object> res=new HashMap<>();
        HashMap<String,Object> data=new HashMap<>();
        HashMap<String,Object> meta=new HashMap<>();
        if(user.getUsername()==null||user.getPassword()==null|| user.getRid().equals("") || Objects.equals(user.getUsername(), "") || Objects.equals(user.getPassword(), ""))
        {
            res.put("data","");
            meta.put("msg","必填项数据错误");
            meta.put("status",400);
            res.put("meta",meta);
            return JSON.toJSONString(res);
        }
        else if(Integer.parseInt(user.getRid())<100||Integer.parseInt(user.getRid())>103)
        {
            res.put("data","");
            meta.put("msg","rid数据错误");
            meta.put("status",400);
            res.put("meta",meta);
            return JSON.toJSONString(res);
        }
        else {
            if(Objects.equals(user.getSex(), "男"))
            {
                user.setUserimg("/userimg/defalut1.jpg");
            }
            else
            {
                user.setUserimg("/userimg/defalut2.jpg");
            }
            userDao.setUserMessage(user);
            User us=userDao.getUserMessage(user.getUsername(),user.getPassword());
            data.put("id", us.getId());
            data.put("username", us.getUsername());
            data.put("mobile", us.getMobile());
            data.put("rid", us.getRid());
            meta.put("msg", "注册成功");
            meta.put("status", 200);
            res.put("data", data);
            res.put("meta", meta);
            return JSON.toJSONString(res);
        }
    }
    @RequestMapping("/register/Rider")
    public String Rider(@RequestBody Rider rider){
        System.out.println("####骑手注册####"+new DateTime());
        Result rs=new Result();
        riderDao.RiderRegister(rider);
        return rs.success("null","注册成功",200);

    }
}
