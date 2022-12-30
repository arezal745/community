package com.community.dao;

import com.community.bean.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.ArrayList;

@Repository
public interface MerchantDao {
    Merchant getUserMessage(@RequestBody Merchant merchant);
    String verifyStatus(@RequestBody Merchant merchant);
    String verifyStatusBymobile(@Param("mobile") String mobile);
    Merchant getMerchatByMobile(@Param("mobile") String mobile);
    ArrayList<OrderList> getOrderList(@RequestBody OrderInfo orderInfo);
    ArrayList<UserOrders> getOrders(@RequestBody OrderInfo orderInfo);
    UserOrders getRefundOrders(@RequestBody OrderInfo orderInfo);
    Rider getRider(@RequestBody OrderInfo orderInfo);
    ArrayList<RefundInfo> getRefundOrderList(@RequestBody RefundInfo refundInfo);
    ArrayList<GoodsDetails> cateGoods(@RequestBody GoodsDetails goodsDetails);
    GoodsDetails getGoods(@RequestBody GoodsDetails goodsDetails);
    int editGoodsCate(@RequestBody GoodsDetails goodsDetails);
    int editGoodsStatus(@RequestBody GoodsDetails goodsDetails);
    int editGoodsPrice(@RequestBody GoodsDetails goodsDetails);
    int editGoodsInventory(@RequestBody GoodsDetails goodsDetails);
    int editGoodsName(@RequestBody GoodsDetails goodsDetails);
    int addGoods(@RequestBody goodsDetailsJSON goodsDetails);
    int addGoodsSv(@RequestBody goodsDetailsJSON goodsDetails);
    int uploadGoodsImg(@RequestBody GoodsPicture goodsPicture);
    int editpsd(@RequestBody Merchant merchant);
    int addMenchant(@RequestBody Merchant merchant);
    int merUpload(@RequestBody MerchantQualification merchantQualification);
    int addIncome(@Param("merchantid") int merchantid,@Param("sum") Double sum,@Param("date") String date);
    int minusIncome(@Param("merchantid") int merchantid,@Param("sum") Double sum,@Param("date") String date);
    ArrayList<MerYearIncome> getYearIncome(@RequestBody MerYearIncome merYearIncome);
    ArrayList<MerMonthIncome> getMonthIncome(@RequestBody MerYearIncome merYearIncome);
    Merchant getMerchant(@RequestBody Merchant merchant);
    ArrayList<Merchant> gerMerchantID();
    String getMerchantImg(@RequestBody Merchant merchant);
    int editMerchant(@RequestBody Merchant merchant);
    User getUser(@RequestBody OrderInfo orderInfo);
    int InsertMonthIncome(@Param("merchantid") int merchantid,@Param("month") String month);
    Double getYearMonthIncome(@RequestBody MerYearIncome merYearIncome);
    int setYearMonthIncome(@RequestBody MerYearIncome merYearIncome);
    OrderInfo getOrderGoodsid(@Param("orderNo") String orderNo);
}
