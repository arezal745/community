package com.community.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public enum OrderStatus {
    /**
     * 未支付
     */
    NOTPAY("未支付"),


    /**
     * 支付成功
     */
    SUCCESS("支付成功"),

    /**
     * 已关闭
     */
    CLOSED("超时已关闭"),

    //待配送
    BE_DELIVERED("待配送"),

    // 配送中
    SHIPPING("配送中"),

    //已送达
    DELIVERED("已送达"),

    //已签收
    SIGNED("已签收"),

    //已完成
    COMPLETED("已完成"),
    /**
     * 已取消
     */
    CANCEL("用户已取消"),

    /**
     * 退款中
     */
    REFUND_PROCESSING("退款中"),

    /**
     * 退款成功
     */
    REFUND_SUCCESS("退款成功"),

    /**
     * 退款异常
     */
    REFUND_ABNORMAL("退款异常");

    /**
     * 类型
     */
    private final String type;
}
