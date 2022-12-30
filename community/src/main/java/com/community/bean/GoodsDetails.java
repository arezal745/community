package com.community.bean;

import lombok.Data;

@Data
public class GoodsDetails {
    private int goodsid;
    private String catename;
    private int cateid2;
    private String name;
    private Double price;
    private Double price2;
    private String unit;
    private String main;
    private int inventory;
    private int merchantid;
    private String regionname;
    private String query;
    private String tag="";
    private String[] region;
    private int status;
}
