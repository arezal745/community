package com.community.dao;

import com.community.bean.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.ArrayList;
import java.util.List;

@Repository
public interface UserDao {
    User getUserMessage(@Param("username") String username, @Param("password") String password);
    User getUserByMobile(@Param("mobile") String mobile);
    String UserTokenVerify(@Param("id") int id);
    String MerchantTokenVerify(@Param("id") int id);
    String RiderTokenVerify(@Param("id") int id);
    String ManagerTokenVerify(@Param("id") int id);
    int setUserMessage(@RequestBody User user);
    User getUser(@RequestBody User user);
    int editUser(@RequestBody User user);
    int editpsd(@RequestBody User user);
    List<UserAddress> getAddressMessage(@Param("userid") String userid);
    UserAddress addressById(@RequestBody UserAddress userAddress);
    int AddAddress(@RequestBody UserAddress userAddress);
    int setAddressStatus(@Param("addressid") int addressid,@Param("status") boolean status);
    int EditAddress(@RequestBody UserAddress userAddress);
    int Deladdress(@Param("addressid") String addressid);
    User getUserimg(@Param("id") int id);
    int setUserimg(@RequestBody User user);
    int setInventory(@RequestBody UserOrders userOrders);
    int addInventory(@RequestBody UserOrders userOrders);
    int addgoodsSV(@RequestBody UserOrders userOrders);
    int creatOrder(@RequestBody UserOrders userOrders);
    int cancelOrder(@RequestBody OrderInfo orderInfo);
    ArrayList<OrderInfo> getOrders(@RequestBody UserOrders userOrders);
    ArrayList<OrderInfo> queryOrders(@RequestBody UserOrders userOrders);
    ArrayList<UserOrders> getUserOrders(@Param("orderNo") String orderNo);
    UserOrders getOrder(@Param("orderID") String orderID);
    int setOrderInfo(@RequestBody OrderInfo orderInfo);
    int updataOrderNo(@Param("orderNo") String orderNo,@Param("orderID") String orderID);
    int updateStatusByOrderNo(@Param("orderNo") String orderNo,@Param("type") String type,@Param("transactionId") String transactionId);
    String getOrderStatus(@Param("orderNo") String orderNo);
    int setrefundInfo(@RequestBody RefundInfo refundInfo);
    int updateStatusByOrderNo1(@Param("orderNo") String orderNo,@Param("type") String type,@Param("goodsID") String goodsID);
    int updateStatusByOrderNo2(@Param("orderNo") String orderNo,@Param("type") String type);
    int updateStatusByRefundNo(@RequestBody RefundInfo refundInfo);
    RefundInfo getRefundStatus(@RequestBody RefundInfo refundInfo);
    String getNative(@RequestBody OrderInfo orderInfo);
    int uporderInfo(@RequestBody OrderInfo orderInfo);
    int setRefundImg(@Param("refundImg") String refundImg,@Param("refundNo") String refundNo);
    int queryMerID(@Param("orderNo") String orderNo);
    int setMerID(@Param("orderNo") String orderNo,@Param("merchantid") int merchantid);
    int getMerID(@Param("id") int id);
    String queryRfundNo(@RequestBody RefundInfo refundInfo);
    int upoderStatus(@RequestBody RefundInfo refundInfo);
    int updateOrderInfo(@Param("orderNo") String orderNo,@Param("status") String status);
    Rider getRiderPosition(@RequestBody OrderInfo orderInfo);
}
