package com.community.bean;

import lombok.Data;

@Data
public class OrderList {
    private int id;
    private String orderNo;
    private String username;
    private String mobile;
    private String detailedAddress;
    private String orderStatus;
}
