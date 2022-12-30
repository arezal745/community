package com.community.bean;

import lombok.Data;

@Data
public class RefundInfo{

    private int id;

    private String orderNo;//商品订单编号

    private String refundNo;//退款单编号

    private String goodsID;//退款商品id

    private String refundId;//支付系统退款单号

    private Integer totalFee;//原订单金额(分)

    private Integer refund;//退款金额(分)

    private String reason;//退款原因

    private String refundImg;//退款图片

    private String refundStatus;//退款单状态

    private String beginTime;//申请时间

    private String endTime;//结束时间

    private int merchantid;//商家id

}
