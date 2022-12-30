package com.community.dao;

import com.community.bean.*;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.ArrayList;

@Repository
public interface RiderDao {
    Rider getRiderMessage(@RequestBody Rider rider);
    Rider getRiderByMobile(@RequestBody Rider rider);
    int RiderRegister(@RequestBody Rider rider);
    Rider getMessage(@RequestBody Rider rider);
    int editMessage(@RequestBody Rider rider);
    ArrayList<RiderOrder> getOrderList(@RequestBody Rider rider);
    int setOrderRide(@RequestBody OrderInfo orderInfo);
    ArrayList<RiderOrder> getOrderListByRider(@RequestBody Rider rider);
    ArrayList<RiderOrder> getOrderListAchieve(@RequestBody Rider rider);
    int setPosition(@RequestBody Rider rider);
    int editpsd(@RequestBody Rider rider);
    UserAddress getUserAddress(@RequestBody OrderInfo orderInfo);
    Merchant getMerchant(@RequestBody OrderInfo orderInfo);
    OrderInfo getOrderInfo(@RequestBody OrderInfo orderInfo);
}
