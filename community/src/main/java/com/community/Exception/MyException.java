package com.community.Exception;


import com.community.Re.Result;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

@ControllerAdvice
public class MyException {
    /**
     * 如果抛出的是ServiceException异常就执行该方法
     * @param serviceException 业务异常
     * @return Result
     * */
    Result rs=new Result();
    @ExceptionHandler(ServiceException.class)
    @ResponseBody
    public String handle(ServiceException serviceException){
        return rs.error(serviceException.getMessage(), serviceException.getCode());
    }
}
