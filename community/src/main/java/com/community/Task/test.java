package com.community.Task;

import cn.hutool.core.date.DateTime;
import com.community.CommunityApplication;
import org.springframework.boot.SpringApplication;

import java.util.Date;

public class test {
    public static void main(String[] args) {
        String[] date=(new DateTime()).toString().split(" ");
        String[] arr=date[0].split("-");
        String year=arr[0];
        String month=arr[1];
        String day=arr[2];
        int a= Integer.parseInt(year)+1;
        System.out.println((a+"-"+"0"+1));
    }
}
