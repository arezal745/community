package com.community.bean;


import org.springframework.stereotype.Component;


@Component
public class  Code {
    private String captcha;

    public String getCaptcha() {
        return captcha;
    }

    public void setCaptcha(String captcha) {
        this.captcha = captcha;
    }

    @Override
    public String toString() {
        return "Code{" +
                "captcha='" + captcha + '\'' +
                '}';
    }
}
