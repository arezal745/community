package com.community.Re;

import com.alibaba.fastjson.JSON;
import java.util.HashMap;

//封装返回结果
public class Result {
    HashMap<String,Object> meta=new HashMap<String,Object>();
    HashMap<String,Object> res=new HashMap<String,Object>();

    public String success(Object data,String msg,int status){
        res.put("data",data);
        meta.put("msg",msg);
        meta.put("status",status);
        res.put("meta",meta);
        return JSON.toJSONString(res);
    }

    public String error(String msg,int status){
        res.put("data","null");
        meta.put("msg",msg);
        meta.put("status",status);
        res.put("meta",meta);
        return JSON.toJSONString(res);
    }


    public HashMap<String, Object> getRes() {
        return res;
    }

    public void setRes(HashMap<String, Object> res) {
        this.res = res;
    }


    public HashMap<String, Object> getMeta() {
        return meta;
    }

    public void setMeta(HashMap<String, Object> meta) {
        this.meta = meta;
    }

    @Override
    public String toString() {
        return "Result{" +
                "meta=" + meta +
                ", res=" + res +
                '}';
    }
}
