package com.community.bean;

import lombok.Data;

@Data
public class OrderInfo{

    private int id;

    private String title;//订单标题

    private String orderNo;//商户订单编号

    private String[] orderIDs;//支付产品id

    private String goodsid;//商品id

    private Integer totalFee;//订单金额(分)

    private String codeUrl;//订单二维码连接

    private String orderStatus;//订单状态

    private String riderID;//骑手id

    private int merchantid;//商家id
}
