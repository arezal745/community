package com.community.Exception;

import lombok.Getter;

@Getter
public class ServiceException extends RuntimeException {
    private int code;
    //继承了RuntimeException已经有一个message属性了，所以不需要重新定义
    public ServiceException(String msg,int code){
        super(msg);
        this.code = code;
    }
}
