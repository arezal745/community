package com.community.enums.wxpay;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public enum WxNotifyType {

	/**
	 * 支付通知
	 */
	NATIVE_NOTIFY("/WxPay/Native/notify"),


	/**
	 * 退款结果通知
	 */
	REFUND_NOTIFY("/WxPay/refund/notify");

	/**
	 * 类型
	 */
	private final String type;
}
