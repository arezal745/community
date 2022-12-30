package com.community.Interceptor;


import com.community.Exception.ServiceException;
import com.community.util.JwtUtil;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class JwtInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
        String token = request.getHeader("token");
        //如果不是映射的方法直接通过
        int i=JwtUtil.checkToken(token);
        if(!(handler instanceof HandlerMethod)){
            return true;
        }
        if(i==1)
        {
            throw new ServiceException("未登录",404);
        }
        else if(i==2)
        {
            throw new ServiceException("token异常",404);
        }
        else
            return true;
    }
}
