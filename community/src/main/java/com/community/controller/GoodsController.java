package com.community.controller;

import cn.hutool.core.date.DateTime;
import com.alibaba.fastjson.JSON;
import com.community.Re.Result;
import com.community.bean.*;
import com.community.dao.GoodsDao;
import com.community.dao.UserDao;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.ArrayList;
import java.util.HashMap;

@RestController
@RequestMapping("/goods")
public class GoodsController {
     final
    GoodsDao goodsDao;

     @Autowired
     UserDao userDao;

    public GoodsController(GoodsDao goodsDao) {
        this.goodsDao = goodsDao;
    }


    @RequestMapping("/getGoods")
    public String getGoods(@RequestBody GoodsDetails goodsDetails){
        System.out.println("####搜索商品####"+new DateTime());
        Result rs=new Result();
        if(goodsDetails.getRegion().length<2)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            goodsDetails.setRegionname(goodsDetails.getRegion()[1]);
            ArrayList<Merchant> merchants=goodsDao.queryUserAddress("%"+goodsDetails.getRegionname()+"%");
            if(merchants.size()==0)
            {
                goodsDetails.setRegionname("长沙市");
            }
            goodsDetails.setQuery('%'+goodsDetails.getQuery()+'%');
//            System.out.println(goodsDetails.getQuery());
            ArrayList<GoodsDetails> list=goodsDao.getGoods(goodsDetails);
//            System.out.println(list);
//            System.out.println(list.size());
            ArrayList<goodsDetailsJSON> arr=new ArrayList<>();
            for(int i=0;i<list.size();i++)
            {
                GoodsPicture goodsPicture=goodsDao.getPic(list.get(i));
//                System.out.println(goodsPicture);
                goodsDetailsJSON goodsJSON = new goodsDetailsJSON();
                goodsJSON.setGoodsid(list.get(i).getGoodsid());
                goodsJSON.setName(list.get(i).getName());
                goodsJSON.setPrice(list.get(i).getPrice());
                goodsJSON.setPrice2(list.get(i).getPrice2());
                goodsJSON.setInventory(list.get(i).getInventory());
                String pic ;
                pic=goodsPicture.getPicname1();
                goodsJSON.setGoodsPic(pic);
//                System.out.println(goodsJSON);
                arr.add(goodsJSON);
            }
            if(merchants.size()==0)
            {
                return rs.success(arr,"该城市无商家",201);
            }
            else
                return rs.success(arr,"获取成功",200);
        }

    }
    @RequestMapping("/getRecommend")
    public String getRecommend(@RequestBody GoodsDetails goodsDetails){
        System.out.println("####首页推荐列表####"+new DateTime());
        Result rs=new Result();
        if(goodsDetails.getRegion().length<2)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            goodsDetails.setRegionname(goodsDetails.getRegion()[1]);
            ArrayList<Merchant> merchants=goodsDao.queryUserAddress("%"+goodsDetails.getRegionname()+"%");
            if(merchants.size()==0)
            {
                goodsDetails.setRegionname("长沙市");
            }
            ArrayList<GoodsCate> cates=goodsDao.cate();
//            System.out.println(cates.size());
            ArrayList<Integer> goodsid=new ArrayList<>();
            ArrayList<goodsDetailsJSON> list=new ArrayList<>();
            for(int i=0;i<cates.size();i++){
//                System.out.println(cates.get(i).getCatename());
                goodsDetails.setCatename(cates.get(i).getCatename());
                try {
                    goodsid.add(goodsDao.getSV(goodsDetails));
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
            for(int i=0;i<goodsid.size();i++)
            {
                goodsDetails.setGoodsid(goodsid.get(i));
                goodsDetailsJSON goodsDetailsJSON=goodsDao.getcollectDetails(goodsDetails);
                goodsDetailsJSON.setGoodsPic(goodsDetailsJSON.getPicname1());
                goodsDetailsJSON.setPicname1(null);
                list.add(goodsDetailsJSON);
            }
/*
            System.out.println(goodsid);
            System.out.println(list);；
*/
            if(merchants.size()==0)
            {
                return rs.success(list,"该城市无商家",201);
            }
            else
                return rs.success(list,"获取成功",200);
        }

    }
    @RequestMapping("/getDetail")
    public String getDetail(@RequestBody GoodsDetails goodsDetails,@RequestParam("userid") int userid){
        System.out.println("####获取商品详情####"+new DateTime());
        Result rs=new Result();
        HashMap<String,Object> data=new HashMap<>();
        if(goodsDetails.getGoodsid()==0)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            String[] picname=new String[5];
            GoodsPicture pic=goodsDao.getPic(goodsDetails);
            data.put("picname1",pic.getPicname1());
            picname[0]=pic.getPicname1();
            data.put("picname2",pic.getPicname2());
            picname[1]=pic.getPicname2();
            if(!pic.getPicname3().equals("")){
                data.put("picname3",pic.getPicname3());
                picname[2]=pic.getPicname3();
            }

            if(!pic.getPicname4().equals("")) {
                data.put("picname4", pic.getPicname4());
                picname[3]=pic.getPicname4();
            }
            if(!pic.getPicname5().equals("")) {
                data.put("picname5", pic.getPicname5());
                picname[4]=pic.getPicname5();
            }
            data.put("picname",picname);
            GoodsDetails goodsDetails1=goodsDao.getDetails(goodsDetails.getGoodsid());
/*
            System.out.println(goodsDetails1);
            System.out.println(":"+goodsDetails1.getTag().equals(""));
*/
            data.put("goodsid",goodsDetails1.getGoodsid());
            data.put("catename",goodsDetails1.getCatename());
            data.put("name",goodsDetails1.getName());
            data.put("price",goodsDetails1.getPrice());
            data.put("price2",goodsDetails1.getPrice2());
            data.put("unit",goodsDetails1.getUnit());
            data.put("inventory",goodsDetails1.getInventory());
            if(!goodsDetails1.getTag().equals(""))
            {
                String[] tag=goodsDetails1.getTag().split(" ");
                    data.put("tag",tag);
            }
            int i=goodsDao.vercollect(userid,goodsDetails.getGoodsid());
            if(i==1) {
                data.put("favorite", true);
            }
            else {
                data.put("favorite", false);
            }
            return rs.success(data,"获取成功",200);
        }
    }
    @RequestMapping("/cate")
    public String cate()
    {
        System.out.println("####获取一级分类列表####"+new DateTime());
        Result rs=new Result();
        ArrayList<GoodsCate> cate=goodsDao.cate();
//        System.out.println(cate);
        return rs.success(cate,"获取成功",200);
    }
    @RequestMapping("/catetag")
    public String catetag(@RequestBody GoodsCate goodsCate)
    {
        System.out.println("####获取二级分类列表####"+new DateTime());
        Result rs=new Result();
        if(goodsCate.getCateid()==0){
            return rs.error("必填项数据为空",400);
        }
        else {
            ArrayList<GoodsCate2> cate;
            cate=goodsDao.catetag(goodsCate);
//            System.out.println(cate);
            return rs.success(cate,"获取成功",200);
        }
    }
    @PostMapping("/cateGoods")
    public String cateGoods(@RequestBody GoodsCate2 goodsCate2){
        System.out.println("####分类商品列表####"+new DateTime());
        Result rs=new Result();
        if(goodsCate2.getRegion().length<2||goodsCate2.getCatename()==null||goodsCate2.getCatename().equals("")||goodsCate2.getCateid2()==0)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            ArrayList<Merchant> merchants=goodsDao.queryUserAddress("%"+goodsCate2.getRegion()[1]+"%");
            String[] region={"湖南省", "长沙市", "岳麓区"};
            if(merchants.size()==0)
            {
                goodsCate2.setRegion(region);
            }
            ArrayList<GoodsDetails> list=goodsDao.cateGoods(goodsCate2);
//            System.out.println(list);
//            System.out.println(list.size());
            ArrayList<goodsDetailsJSON> arr=new ArrayList<>();
            for(int i=0;i<list.size();i++)
            {
                GoodsPicture goodsPicture=goodsDao.getPic(list.get(i));
//                System.out.println(goodsPicture);
                goodsDetailsJSON goodsJSON = new goodsDetailsJSON();
                goodsJSON.setGoodsid(list.get(i).getGoodsid());
                goodsJSON.setName(list.get(i).getName());
                goodsJSON.setPrice(list.get(i).getPrice());
                goodsJSON.setPrice2(list.get(i).getPrice2());
                goodsJSON.setUnit(list.get(i).getUnit());
                goodsJSON.setInventory(list.get(i).getInventory());
                String pic;
                pic=goodsPicture.getPicname1();
                goodsJSON.setGoodsPic(pic);
//                System.out.println(goodsJSON);
                arr.add(goodsJSON);
            }
            if(merchants.size()==0)
            {
                return rs.success(arr,"该城市无商家",201);
            }
            else
                return rs.success(arr,"获取成功",200);
        }
    }
    @RequestMapping("/getcart")
    public String getcart(@RequestBody GoodsCart goodsCart){
        System.out.println("####获取用户购物车列表####"+new DateTime());
        Result rs=new Result();
        if(goodsCart.getUserID()==0)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            ArrayList<GoodsCart> list=goodsDao.getCart(goodsCart);
            return rs.success(list,"获取成功",200);
        }
    }
    @RequestMapping("/addcart")
    public String addcart(@RequestBody GoodsCart goodsCart){
        System.out.println("####添加购物车商品####"+new DateTime());
        Result rs=new Result();
        if(goodsCart.getUserID()==0)
        {
            return rs.error("必填项数据为空",400);
        }
        else {
            GoodsCart goodsCart1=goodsDao.ifCart(goodsCart);
//            System.out.println(goodsCart1);
            if(goodsCart1==null)
            {
                goodsDao.addCart(goodsCart);
                return rs.success("null","添加成功",200);

            }
            else {
                goodsCart1.setGoodsNumber(goodsCart.getGoodsNumber()+goodsCart1.getGoodsNumber());
                goodsDao.editCart(goodsCart1);
                return rs.success("null","添加成功",200);
            }
        }
    }
    @RequestMapping("/delcart")
    public String delcart(@Param("userID") String userID,@Param("id") String id){
        System.out.println("####删除购物车商品（单个或多个）####"+new DateTime());
        HashMap<String,Object> res=new HashMap<>();
        HashMap<String,Object> meta=new HashMap<>();
        if(userID==null||userID.equals("")||id==null||id.equals(""))
        {
            res.put("data","");
            meta.put("msg","必填项数据错误");
            meta.put("status",400);
        }
        else {
            goodsDao.delCart(userID,id);
            res.put("data","null");
            meta.put("msg","删除成功");
            meta.put("status",200);
        }
        res.put("meta",meta);
        return JSON.toJSONString(res);
    }
    @RequestMapping("/clearcart")
    public String clearcart(@Param("userID") String userID){
        System.out.println("####清空购物车商品####"+new DateTime());
//        System.out.println(userID);
        HashMap<String,Object> res=new HashMap<>();
        HashMap<String,Object> meta=new HashMap<>();
        if(userID==null||userID.equals(""))
        {
            res.put("data","");
            meta.put("msg","必填项数据错误");
            meta.put("status",400);
        }
        else {
            goodsDao.clearCart(userID);
            res.put("data","null");
            meta.put("msg","删除成功");
            meta.put("status",200);
        }
        res.put("meta",meta);
        return JSON.toJSONString(res);
    }
    @RequestMapping("/getcollect")
    public String getcollect(@RequestBody GoodsCollect goodsCollect){
        System.out.println("####获取用户收藏列表####"+new DateTime());
        HashMap<String,Object> res=new HashMap<>();
        HashMap<String,Object> meta=new HashMap<>();
        if(goodsCollect.getUserid()==0)
        {
            res.put("data","");
            meta.put("msg","必填项数据错误");
            meta.put("status",400);
        }
        else {
            GoodsDetails goodsDetails=new GoodsDetails();
            ArrayList<GoodsCollect> collects=goodsDao.getcollect(goodsCollect);
            ArrayList<goodsDetailsJSON> list=new ArrayList<>();
            for (GoodsCollect goodsCollect1:collects)
            {
//                System.out.println(goodsCollect1);
                goodsDetails.setGoodsid(goodsCollect1.getGoodsid());
                goodsDetailsJSON goods=goodsDao.getcollectDetails(goodsDetails);
//                System.out.println(goods);
                list.add(goods);
            }
            res.put("data",list);
            meta.put("msg","获取成功");
            meta.put("status",200);
        }
        res.put("meta",meta);
        return JSON.toJSONString(res);
    }
    @RequestMapping("/addcollect")
    public String addcollect(@RequestBody GoodsCollect goodsCollect)
    {
        System.out.println("####添加用户收藏####"+new DateTime());
        HashMap<String,Object> res=new HashMap<>();
        HashMap<String,Object> meta=new HashMap<>();
        if(goodsCollect.getUserid()==0||goodsCollect.getGoodsid()==0)
        {
            res.put("data","");
            meta.put("msg","必填项数据错误");
            meta.put("status",400);
        }
        else {
            goodsDao.addcollect(goodsCollect);
            res.put("data","null");
            meta.put("msg","添加成功");
            meta.put("status",200);
        }
        res.put("meta",meta);
        return JSON.toJSONString(res);
    }
    @RequestMapping("/delcollect")
    public String delcollect(@Param("userid") int userid,@Param("goodsid") int goodsid)
    {
        System.out.println("####删除用户收藏####"+new DateTime());
        HashMap<String,Object> res=new HashMap<>();
        HashMap<String,Object> meta=new HashMap<>();
        if(userid==0||goodsid==0)
        {
            res.put("data","");
            meta.put("msg","必填项数据错误");
            meta.put("status",400);
        }
        else {
            goodsDao.delcollect(userid,goodsid);
            res.put("data","null");
            meta.put("msg","删除成功");
            meta.put("status",200);
        }
        res.put("meta",meta);
        return JSON.toJSONString(res);
    }
    @RequestMapping("/getComment")
    public String getComment(@RequestBody GoodsComment goodsComment){
        System.out.println("####获取商品评价####"+new DateTime());
        HashMap<String,Object> res=new HashMap<>();
        HashMap<String,Object> meta=new HashMap<>();
        if(goodsComment.getGoodsid()==0)
        {
            res.put("data","");
            meta.put("msg","必填项数据错误");
            meta.put("status",400);
        }
        else {
            ArrayList<GoodsComment> list=goodsDao.getComment(goodsComment);
//            System.out.println(list);
            res.put("data",list);
            meta.put("msg","获取成功");
            meta.put("status",200);
        }
        res.put("meta",meta);
        return JSON.toJSONString(res);
    }
    @RequestMapping("/addComment")
    public String addComment(@RequestBody GoodsComment goodsComment){
        System.out.println("####添加商品评价####"+new DateTime());
        Result rs=new Result();
        HashMap<String,Object> res=new HashMap<>();
        HashMap<String,Object> meta=new HashMap<>();
        if(goodsComment.getGoodsid()==0)
        {
            return rs.error("必填项数据错误",400);
        }
        else {
            goodsComment.setUsername(goodsComment.getUsername().charAt(0)+"**");
            goodsDao.addComment(goodsComment);
            String type="已完成";
            userDao.updateStatusByOrderNo2(goodsComment.getOrderNo(),type);
            return rs.success("null","获取成功",200);
        }
    }
    @RequestMapping("/getRecommendRecipe")
    public String getRecommendRecipe(@RequestBody GoodsDetails goodsDetails)
    {
        System.out.println("####获取商品推荐菜谱####"+new DateTime());
        Result result=new Result();
        if(goodsDetails.getGoodsid()==0)
        {
            return result.error("必填项数据错误",400);
        }
        else {
            int[] Ids=goodsDao.getCookID(goodsDetails.getGoodsid());
            if(Ids.length==0)
            return result.success("null","获取成功",200);
            else {
                ArrayList<CookBook> list=new ArrayList<>();
                for(int i=0;i<Ids.length;i++)
                {
                    CookBook cookBook=goodsDao.getRecommendRecipe(Ids[i]);
//                    System.out.println(cookBook);
                    list.add(cookBook);
                }
                return result.success(list,"获取成功",200);
            }
        }
    }
    @RequestMapping("/getCookCate")
    public String getCookCate(){
        System.out.println("####获取菜谱页分类####"+new DateTime());
        Result result=new Result();
        ArrayList<CookCate> list=goodsDao.getCookCate();
        return result.success(list,"获取成功",200);
    }
    @RequestMapping("/getCookBook")
    public String getCookBook(@RequestBody CookCate cookCate){
        System.out.println("####分类获取菜谱####"+new DateTime());
        Result result=new Result();
        if(cookCate.getCookid()==0)
        {
            return result.error("必填项数据错误",400);
        }
        else {
            String query="%"+cookCate.getCookid()+"%";
            ArrayList<CookBook> list=goodsDao.getCookBook(query);
            return result.success(list,"获取成功",200);
        }
    }
    @RequestMapping("/queryCookBook")
    public String queryCookBook(@RequestBody CookBook cookBook){
        System.out.println("####搜索获取菜谱####"+new DateTime());
        Result result=new Result();
        if(cookBook.getQuery()==null||cookBook.getQuery().equals(""))
        {
            return result.error("必填项数据错误",400);
        }
        else {
            String query="%"+cookBook.getQuery()+"%";
            ArrayList<CookBook> list=goodsDao.queryCookBook(query);
            return result.success(list,"获取成功",200);
        }
    }
    @RequestMapping("/cookBookDetail")
    public String cookBookDetail(@RequestBody CookBook cookBook,@RequestParam("userid") int userid){
        System.out.println("####菜谱页详情####"+new DateTime());
        Result result=new Result();
        if(cookBook.getId()==0)
        {
            return result.error("必填项数据错误",400);
        }
        else {
            HashMap<String,Object> data=new HashMap<>();
            CookBook cookBook1=goodsDao.cookBookDetail(cookBook.getId());
            CookPic cookPic=goodsDao.cookPicDetail(cookBook1.getPicID());
            CookTxt cookTxt=goodsDao.cookTxtDetail(cookBook1.getDescID());
            data.put("id",cookBook1.getId());
            data.put("img",cookBook1.getImg());
            data.put("time",cookBook1.getTime());
            data.put("name",cookBook1.getName());
            String[] main=cookBook1.getMainMaterials().split(" ");
            data.put("main",main);
            String[] condiment=cookBook1.getCondiment().split(" ");
            data.put("condiment",condiment);
            data.put("favorite",cookBook1.getFavorite());
            String[] cookPic1=new String[20];
            cookPic1[0]=cookPic.getPic1();
            cookPic1[1]=cookPic.getPic2();
            cookPic1[2]=cookPic.getPic3();
            cookPic1[3]=cookPic.getPic4();
            cookPic1[4]=cookPic.getPic5();
            cookPic1[5]=cookPic.getPic6();
            cookPic1[6]=cookPic.getPic7();
            cookPic1[7]=cookPic.getPic8();
            cookPic1[8]=cookPic.getPic9();
            cookPic1[9]=cookPic.getPic10();
            cookPic1[10]=cookPic.getPic11();
            cookPic1[11]=cookPic.getPic12();
            cookPic1[12]=cookPic.getPic13();
            cookPic1[13]=cookPic.getPic14();
            cookPic1[14]=cookPic.getPic15();
            cookPic1[15]=cookPic.getPic16();
            cookPic1[16]=cookPic.getPic17();
            cookPic1[17]=cookPic.getPic18();
            cookPic1[18]=cookPic.getPic19();
            cookPic1[19]=cookPic.getPic20();
            String[] cookTxt1 = new String[20];
            cookTxt1[0]=cookTxt.getTxt1();
            cookTxt1[1]=cookTxt.getTxt2();
            cookTxt1[2]=cookTxt.getTxt3();
            cookTxt1[3]=cookTxt.getTxt4();
            cookTxt1[4]=cookTxt.getTxt5();
            cookTxt1[5]=cookTxt.getTxt6();
            cookTxt1[6]=cookTxt.getTxt7();
            cookTxt1[7]=cookTxt.getTxt8();
            cookTxt1[8]=cookTxt.getTxt9();
            cookTxt1[9]=cookTxt.getTxt10();
            cookTxt1[10]=cookTxt.getTxt11();
            cookTxt1[11]=cookTxt.getTxt12();
            cookTxt1[12]=cookTxt.getTxt13();
            cookTxt1[13]=cookTxt.getTxt14();
            cookTxt1[14]=cookTxt.getTxt15();
            cookTxt1[15]=cookTxt.getTxt16();
            cookTxt1[16]=cookTxt.getTxt17();
            cookTxt1[17]=cookTxt.getTxt18();
            cookTxt1[18]=cookTxt.getTxt19();
            cookTxt1[19]=cookTxt.getTxt20();
            int j=0;
            for(;cookPic1[j]!=null;j++);
            String[] cookPic2=new String[j];
            String[] cookTxt2=new String[j];
            for(int i=0;i<j;i++)
            {
                cookPic2[i]=cookPic1[i];
                cookTxt2[i]=cookTxt1[i];
            }
            data.put("pic",cookPic2);
            data.put("txt",cookTxt2);
            int i=goodsDao.verCookCollect(userid,cookBook.getId());
            if(i==1) {
                data.put("status", true);
            }
            else {
                data.put("status", false);
            }
            return result.success(data,"获取成功",200);
        }
    }
    @RequestMapping("/recommendGoods")
    public String recommendGoods(@RequestBody CookBook cookBook){
        System.out.println("####菜谱页推荐购买商品####"+new DateTime());
        Result result=new Result();
        if(cookBook.getId()==0)
        {
            return result.error("必填项数据错误",400);
        }
        else {
            HashMap<String,Object> data=new HashMap<>();
            CookBook cookBook1=goodsDao.cookBookDetail(cookBook.getId());
//            System.out.println(cookBook1);
            String[] main=cookBook1.getMainMaterials().split(" ");
            String[] condiment=cookBook1.getCondiment().split(" ");
            ArrayList<goodsDetailsJSON> list1=new ArrayList<>();
            for(int i=0;i<main.length;i++)
            {
                ArrayList<goodsDetailsJSON> list=goodsDao.recommendGoods(main[i],cookBook.getCity());
                if(list.size()!=0)
                {
                    list1.addAll(list);
                }
//                System.out.println(list1);
            }
            data.put("mainMaterials",list1);

            ArrayList<goodsDetailsJSON> list2=new ArrayList<>();
            for(int i=0;i<condiment.length;i++)
            {
                ArrayList<goodsDetailsJSON> list=goodsDao.recommendGoods(condiment[i],cookBook.getCity());
                if(list.size()!=0)
                {
                    list2.addAll(list);
                }
//                System.out.println(list2);
            }
            data.put("condiment",list2);
            return result.success(data,"获取成功",200);
        }
    }
    @RequestMapping("/getCookCollect")
    public String getCookCollect(@RequestBody CookCollect cookCollect){
        System.out.println("####获取菜谱点赞列表####"+new DateTime());
        Result result=new Result();
        if(cookCollect.getUserid()==0)
        {
            return result.error("必填项数据错误",400);
        }else {
            ArrayList<CookBook> list=goodsDao.getCookcollect(cookCollect.getUserid());
            return result.success(list,"获取成功",200);
        }
    }
    @RequestMapping("/addCookCollect")
    public String addCookCollect(@RequestBody CookCollect cookCollect)
    {
        System.out.println("####菜谱点赞####"+new DateTime());
        Result result=new Result();
        if(cookCollect.getId()==0||cookCollect.getUserid()==0)
        {
            return result.error("必填项数据错误",400);
        }
        else {
            goodsDao.addCookCollect(cookCollect.getUserid(),cookCollect.getId());
            return result.success("null","添加成功",200);
        }
    }
    @RequestMapping("/delCookCollect")
    public String delCookCollect(@RequestBody CookCollect cookCollect)
    {
        System.out.println("####取消菜谱点赞####"+new DateTime());
        Result result=new Result();
        if(cookCollect.getId()==0||cookCollect.getUserid()==0)
        {
            return result.error("必填项数据错误",400);
        }
        else {
            goodsDao.delCookCollect(cookCollect.getUserid(),cookCollect.getId());
            return result.success("null","取消成功",200);
        }
    }
}
