package com.community.dao;

import com.community.bean.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.ArrayList;

@Repository
public interface GoodsDao {
    ArrayList<GoodsDetails> getGoods(@RequestBody GoodsDetails goodsDetails);
    ArrayList<Merchant> queryUserAddress(@Param("region") String region);
    int getSV(@RequestBody GoodsDetails goodsDetails);
    GoodsPicture getPic(@RequestBody GoodsDetails goodsDetails);
     ArrayList<GoodsCate> cate();
     ArrayList<GoodsCate2> catetag(@RequestBody GoodsCate goodsCate);
     ArrayList<GoodsDetails> cateGoods(@RequestBody GoodsCate2 goodsCate2);
     ArrayList<GoodsCart> getCart(@RequestBody GoodsCart goodsCart);
     int addCart(@RequestBody GoodsCart goodsCart);
     GoodsCart ifCart(@RequestBody GoodsCart goodsCart);
     int editCart(@RequestBody GoodsCart goodsCart);
     int delCart(@Param("userID") String userID,@Param("id") String id);
     int clearCart(@Param("userID") String userID);
     ArrayList<GoodsCollect> getcollect(@RequestBody GoodsCollect goodsCollect);
     goodsDetailsJSON getcollectDetails(@RequestBody GoodsDetails goodsDetails);
     int addcollect(@RequestBody GoodsCollect goodsCollect);
     int delcollect(@Param("userid") int userid,@Param("goodsid") int goodsid);
     int vercollect(@Param("userid") int userid,@Param("goodsid") int goodsid);
     ArrayList<GoodsComment> getComment(@RequestBody GoodsComment goodsComment);
     int addComment(@RequestBody GoodsComment goodsComment);
     GoodsDetails getDetails(@Param("goodsid") int goodsid);
     int[] getCookID(@Param("goodsid") int goodsid);
     CookBook getRecommendRecipe(@Param("id") int id);
     ArrayList<CookCate> getCookCate();
     ArrayList<CookBook> getCookBook(@Param("query") String query);
     ArrayList<CookBook> queryCookBook(@Param("query") String query);
     CookBook cookBookDetail(@Param("id") int id);
     CookPic cookPicDetail(@Param("id") int id);
     CookTxt cookTxtDetail(@Param("id") int id);
     ArrayList<goodsDetailsJSON> recommendGoods(@Param("main") String main,@Param("city") String city);
     ArrayList<CookBook> getCookcollect(@Param("userid") int userid);
     int addCookCollect(@Param("userid") int userid,@Param("cookid") int cookid);
     int delCookCollect(@Param("userid") int userid,@Param("cookid") int cookid);
     int verCookCollect(@Param("userid") int userid,@Param("cookid") int cookid);
}
