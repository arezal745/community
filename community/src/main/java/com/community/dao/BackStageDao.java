package com.community.dao;

import com.community.bean.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;

@Repository
public interface BackStageDao {
    Manager getManager(@RequestBody Manager manager);
    int addCate2(@RequestBody GoodsCate goodsCate);
    int editCate2(@RequestBody GoodsCate2 goodsCate2);
    int delCate2(@RequestBody GoodsCate2 goodsCate2);
    GoodsCate getGoodsCateByCateid(@Param("cateid") int cateid);
    int editCateName(@Param("cateid") int cateid,@Param("catename") String catename);
    int editCateImg(@Param("cateid") int cateid,@Param("filename") String filename);
    ArrayList<Integer> getregisterMerID();
    MerchantQualification getregisterQualification(@Param("merchantid") int merchantid);
    int setMerPass(@RequestBody Merchant merchant);
    int delCookBook(@RequestBody CookBook cookBook);
    int delCookCollect(@RequestBody CookBook cookBook);
    int addCookBook(@RequestBody CookBook cookBook);
    int updateCookBookID(@RequestBody CookBook cookBook);
    int addCookBookText(@RequestBody CookTxt cookTxt);
    int addCookBookPic(@RequestBody CookPic cookPic);
    int updateCookBookImg(@Param("id") int cateid,@Param("img") String img);
    int editCookBook(@RequestBody CookBook cookBook);
    CookTxt getCoolTxt(@RequestBody CookTxt cookTxt);
    int editCookBookText(@RequestBody CookTxt cookTxt);
    CookPic getCookPic(@RequestParam("id") int id);
    int editCookBookPic(@RequestBody CookPic cookPic);
}
