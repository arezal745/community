package com.community.bean;

import lombok.Data;



@Data
public class GoodsComment {
    private int id;
    private int goodsid;
    private int userid;
    private String userImg;
    private String username;
    private String goods_estimate;
    private String goods_comment;
    private String datetime;
    private String orderNo;

}
