package com.community.controller;

import cn.hutool.core.date.DateTime;
import cn.hutool.core.io.FileUtil;
import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.StrUtil;
import com.community.Re.Result;
import com.community.bean.*;
import com.community.dao.BackStageDao;
import com.community.dao.GoodsDao;
import com.community.dao.MerchantDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@RestController
@RequestMapping("/BackStage")
public class BackStageController {
    @Autowired
    BackStageDao backStageDao;

    @Autowired
    MerchantDao merchantDao;

    @Autowired
    GoodsDao goodsDao;
    @RequestMapping("/addCate2")
    public String addCate2(@RequestBody GoodsCate goodsCate){
        System.out.println("####增加二级分类####"+new DateTime());
        Result rs=new Result();
        if(goodsCate.getCateid()==0||goodsCate.getCatename()==null)
        {
            return rs.error("必填项为空",400);
        }
        backStageDao.addCate2(goodsCate);
        return rs.success("null","添加成功",200);
    }

    @RequestMapping("/editCate2")
    public String editCate2(@RequestBody GoodsCate2 goodsCate){
        System.out.println("####修改二级分类####"+new DateTime());
        Result rs=new Result();
        if(goodsCate.getCateid()==0||goodsCate.getCatename()==null||goodsCate.getCateid2()==0)
        {
            return rs.error("必填项为空",400);
        }
        backStageDao.editCate2(goodsCate);
        return rs.success("null","修改成功",200);
    }
    @RequestMapping("/delCate2")
    public String delCate2(@RequestBody GoodsCate2 goodsCate){
        System.out.println("####删除二级分类####"+new DateTime());
        Result rs=new Result();
        if(goodsCate.getCateid2()==0)
        {
            return rs.error("必填项为空",400);
        }
        backStageDao.delCate2(goodsCate);
        return rs.success("null","删除成功",200);
    }
    @RequestMapping(value = "/cateUpload")
    public String merUpload(@RequestParam("file") List<MultipartFile> file , int cateid, String catename) {
        System.out.println("####修改一级分类（分类名或图片）####"+new DateTime());
        Result rs = new Result();
        System.out.println(file.size()+","+cateid+","+catename);
        if(file.size()==1)
        {
            String uploadPath = "D:/data bank/毕业设计/community/target/classes/static/cateImg/";
            String originalFilename = file.get(0).getOriginalFilename();
            String type = FileUtil.extName(originalFilename);
            //用uuid当文件名避免文件名重复
            String uuid = IdUtil.fastSimpleUUID();
            String fileName="/cateImg/"+uuid + StrUtil.DOT + type;
            String route = uploadPath + uuid + StrUtil.DOT + type;
            //上传到指定路径
            File uploadFile = new File(route);
            try {
                file.get(0).transferTo(uploadFile);
            } catch (IOException e) {
                e.printStackTrace();
            }
            GoodsCate goodsCate=backStageDao.getGoodsCateByCateid(cateid);
            String[] list=goodsCate.getImg().split("/");
            String filename1= uploadPath +list[2];
            //删除修改前的图片
            File file2=new File(filename1);
            if(file2.exists())
            {
                file2.delete();
            }
            //更新数据库图片路径
            backStageDao.editCateImg(cateid,fileName);
        }
        backStageDao.editCateName(cateid,catename);
        return rs.success("null", "修改成功", 200);
    }
    @RequestMapping("/getMerList")
    public String getMerList(@RequestBody GoodsCate2 goodsCate){
        System.out.println("####获取商家列表####"+new DateTime());
        Result rs=new Result();
        ArrayList<Integer> list=backStageDao.getregisterMerID();
        ArrayList<Object> res=new ArrayList<>();
        for(int i=0;i<list.size();i++)
        {
            HashMap<String,Object> data=new HashMap<>();
            Merchant m=new Merchant();
            m.setMerchantid(list.get(i));
            Merchant merchant=merchantDao.getMerchant(m);
            data.put("merchantid",merchant.getMerchantid());
            data.put("username",merchant.getUsername());
            data.put("mobile",merchant.getMobile());
            data.put("regionname",merchant.getRegionname());
            MerchantQualification merchantQualification=backStageDao.getregisterQualification(list.get(i));
            data.put("storePic",merchantQualification.getStorePic());
            data.put("businessLicense",merchantQualification.getBusinessLicense());
            data.put("idCard",merchantQualification.getIdCard());
            data.put("status",merchantQualification.getStatus());
            data.put("msg",merchantQualification.getMsg());
            res.add(data);
        }
        backStageDao.editCate2(goodsCate);
        return rs.success(res,"获取成功",200);
    }
    @RequestMapping("/setMerPass")
    public String setMerPass(@RequestBody Merchant merchant){
        System.out.println("####通过审核####"+new DateTime());
        Result rs=new Result();
        if(merchant.getMerchantid()==0)
        {
            return rs.error("必填项为空",400);
        }
        backStageDao.setMerPass(merchant);
        return rs.success("null","修改成功",200);
    }
    @RequestMapping("/delCookBook")
    public String delCookBook(@RequestBody CookBook cookBook){
        System.out.println("####删除菜谱####"+new DateTime());
        Result rs=new Result();
        if(cookBook.getId()==0)
        {
            return rs.error("必填项为空",400);
        }
        backStageDao.delCookBook(cookBook);
        backStageDao.delCookCollect(cookBook);
        return rs.success("null","删除成功",200);
    }

    @RequestMapping("/addCookBook")
    public String addCookBook(@RequestBody CookBook cookBook){
        System.out.println("####添加菜谱基本信息####"+new DateTime());
        Result rs=new Result();
        if(cookBook.getName()==null||cookBook.getTime()==null
                ||cookBook.getFoodNumber()==0||cookBook.getMainMaterials()==null
                ||cookBook.getCondiment()==null||cookBook.getCateID()==null)
        {
            return rs.error("必填项为空",400);
        }
        backStageDao.addCookBook(cookBook);
        backStageDao.updateCookBookID(cookBook);
        HashMap<String,Object> res=new HashMap<>();
        res.put("id",cookBook.getId());
        return rs.success(res,"添加成功",200);
    }
    @RequestMapping("/addCookBookText")
    public String addCookBookText(@RequestBody CookTxt cookTxt){
        System.out.println("####添加菜谱文字信息####"+new DateTime());
        Result rs=new Result();
        if(cookTxt.getId()==0||cookTxt.getTxt().length==0)
        {
            return rs.error("必填项为空",400);
        }
        for(int i=1;i<=cookTxt.getTxt().length;i++)
        {
            switch (i)
            {
                case 1:cookTxt.setTxt1(cookTxt.getTxt()[i-1]);break;
                case 2:cookTxt.setTxt2(cookTxt.getTxt()[i-1]);break;
                case 3:cookTxt.setTxt3(cookTxt.getTxt()[i-1]);break;
                case 4:cookTxt.setTxt4(cookTxt.getTxt()[i-1]);break;
                case 5:cookTxt.setTxt5(cookTxt.getTxt()[i-1]);break;
                case 6:cookTxt.setTxt6(cookTxt.getTxt()[i-1]);break;
                case 7:cookTxt.setTxt7(cookTxt.getTxt()[i-1]);break;
                case 8:cookTxt.setTxt8(cookTxt.getTxt()[i-1]);break;
                case 9:cookTxt.setTxt9(cookTxt.getTxt()[i-1]);break;
                case 10:cookTxt.setTxt10(cookTxt.getTxt()[i-1]);break;
                case 11:cookTxt.setTxt11(cookTxt.getTxt()[i-1]);break;
                case 12:cookTxt.setTxt12(cookTxt.getTxt()[i-1]);break;
                case 13:cookTxt.setTxt13(cookTxt.getTxt()[i-1]);break;
                case 14:cookTxt.setTxt14(cookTxt.getTxt()[i-1]);break;
                case 15:cookTxt.setTxt15(cookTxt.getTxt()[i-1]);break;
                case 16:cookTxt.setTxt16(cookTxt.getTxt()[i-1]);break;
                case 17:cookTxt.setTxt17(cookTxt.getTxt()[i-1]);break;
                case 18:cookTxt.setTxt18(cookTxt.getTxt()[i-1]);break;
                case 19:cookTxt.setTxt19(cookTxt.getTxt()[i-1]);break;
                case 20:cookTxt.setTxt20(cookTxt.getTxt()[i-1]);break;
            }
        }
        backStageDao.addCookBookText(cookTxt);
        HashMap<String,Object> res=new HashMap<>();
        res.put("id",cookTxt.getId());
        return rs.success(res,"添加成功",200);
    }

    @RequestMapping(value = "/addCookBookPic")
    public String addCookBookPic(@RequestParam("file") List<MultipartFile> file , int id) {
        System.out.println("####添加菜谱图片信息####"+new DateTime());
        Result rs = new Result();
        String uploadPath = "D:/data bank/毕业设计/community/target/classes/static/cookImg/";
        CookPic cookPic=new CookPic();
        cookPic.setId(id);
        String img=null;
        for(int i=0;i<file.size();i++)
        {
            String originalFilename = file.get(i).getOriginalFilename();
            String type = FileUtil.extName(originalFilename);
            //用uuid当文件名避免文件名重复
            String uuid = IdUtil.fastSimpleUUID();
            String fileName="/cookImg/"+uuid + StrUtil.DOT + type;
            String route = uploadPath + uuid + StrUtil.DOT + type;
            File uploadFile = new File(route);
            try {
                file.get(i).transferTo(uploadFile);
            } catch (IOException e) {
                e.printStackTrace();
            }
//            System.out.println(fileName);
            switch (i+1)
            {
                case 1:cookPic.setPic1(fileName);break;
                case 2:cookPic.setPic2(fileName);break;
                case 3:cookPic.setPic3(fileName);break;
                case 4:cookPic.setPic4(fileName);break;
                case 5:cookPic.setPic5(fileName);break;
                case 6:cookPic.setPic6(fileName);break;
                case 7:cookPic.setPic7(fileName);break;
                case 8:cookPic.setPic8(fileName);break;
                case 9:cookPic.setPic9(fileName);break;
                case 10:cookPic.setPic10(fileName);break;
                case 11:cookPic.setPic11(fileName);break;
                case 12:cookPic.setPic12(fileName);break;
                case 13:cookPic.setPic13(fileName);break;
                case 14:cookPic.setPic14(fileName);break;
                case 15:cookPic.setPic15(fileName);break;
                case 16:cookPic.setPic16(fileName);break;
                case 17:cookPic.setPic17(fileName);break;
                case 18:cookPic.setPic18(fileName);break;
                case 19:cookPic.setPic19(fileName);break;
                case 20:cookPic.setPic20(fileName);break;
            }
            if(i==file.size()-1)
            {
                img=fileName;
            }
        }
        backStageDao.addCookBookPic(cookPic);
        backStageDao.updateCookBookImg(cookPic.getId(),img);
        return rs.success("null", "上传成功", 200);
    }
    @RequestMapping("/editCookBook")
    public String editCookBook(@RequestBody CookBook cookBook){
        System.out.println("####修改菜谱基本信息####"+new DateTime());
        Result rs=new Result();
        if(cookBook.getName()==null||cookBook.getTime()==null
                ||cookBook.getFoodNumber()==0||cookBook.getMainMaterials()==null
                ||cookBook.getCondiment()==null||cookBook.getCateID()==null
                ||cookBook.getId()==0)
        {
            return rs.error("必填项为空",400);
        }
        backStageDao.editCookBook(cookBook);
        return rs.success("null","修改成功",200);
    }
    @RequestMapping("/editCookBookText")
    public String editCookBookText(@RequestBody CookTxt cookTxt,@RequestParam("number") int number){
        System.out.println("####修改菜谱文字信息####"+new DateTime());
        Result rs=new Result();
        if(cookTxt.getId()==0||cookTxt.getTxt1()==null||number==0)
        {
            return rs.error("必填项为空",400);
        }
        CookTxt txt=backStageDao.getCoolTxt(cookTxt);
        switch (number)
        {
            case 1:txt.setTxt1(cookTxt.getTxt1());break;
            case 2:txt.setTxt2(cookTxt.getTxt1());break;
            case 3:txt.setTxt3(cookTxt.getTxt1());break;
            case 4:txt.setTxt4(cookTxt.getTxt1());break;
            case 5:txt.setTxt5(cookTxt.getTxt1());break;
            case 6:txt.setTxt6(cookTxt.getTxt1());break;
            case 7:txt.setTxt7(cookTxt.getTxt1());break;
            case 8:txt.setTxt8(cookTxt.getTxt1());break;
            case 9:txt.setTxt9(cookTxt.getTxt1());break;
            case 10:txt.setTxt10(cookTxt.getTxt1());break;
            case 11:txt.setTxt11(cookTxt.getTxt1());break;
            case 12:txt.setTxt12(cookTxt.getTxt1());break;
            case 13:txt.setTxt13(cookTxt.getTxt1());break;
            case 14:txt.setTxt14(cookTxt.getTxt1());break;
            case 15:txt.setTxt15(cookTxt.getTxt1());break;
            case 16:txt.setTxt16(cookTxt.getTxt1());break;
            case 17:txt.setTxt17(cookTxt.getTxt1());break;
            case 18:txt.setTxt18(cookTxt.getTxt1());break;
            case 19:txt.setTxt19(cookTxt.getTxt1());break;
            case 20:txt.setTxt20(cookTxt.getTxt1());break;
        }
        backStageDao.editCookBookText(txt);
        return rs.success("null","修改成功",200);
    }
    @RequestMapping(value = "/editCookBookPic")
    public String editCookBookPic(@RequestParam("file") List<MultipartFile> file , int id, int number) {
        System.out.println("####修改菜谱图片信息####"+new DateTime());
        Result rs = new Result();
        if(file.size()==0||id==0||number==0)
        {
            return rs.error("必填项为空",400);
        }
        String uploadPath = "D:/data bank/毕业设计/community/target/classes/static/cookImg/";
        String originalFilename = file.get(0).getOriginalFilename();
        String type = FileUtil.extName(originalFilename);
        //用uuid当文件名避免文件名重复
        String uuid = IdUtil.fastSimpleUUID();
        String fileName="/cookImg/"+uuid + StrUtil.DOT + type;
        String route = uploadPath + uuid + StrUtil.DOT + type;
        //上传到指定路径
        File uploadFile = new File(route);
        try {
            file.get(0).transferTo(uploadFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
        CookPic cookPic=backStageDao.getCookPic(id);
        String[] list=null;
        switch (number)
        {
            case 1:list=cookPic.getPic1().split("/");cookPic.setPic1(fileName);break;
            case 2:list=cookPic.getPic2().split("/");cookPic.setPic2(fileName);break;
            case 3:list=cookPic.getPic3().split("/");cookPic.setPic3(fileName);break;
            case 4:list=cookPic.getPic4().split("/");cookPic.setPic4(fileName);break;
            case 5:list=cookPic.getPic5().split("/");cookPic.setPic5(fileName);break;
            case 6:list=cookPic.getPic6().split("/");cookPic.setPic6(fileName);break;
            case 7:list=cookPic.getPic7().split("/");cookPic.setPic7(fileName);break;
            case 8:list=cookPic.getPic8().split("/");cookPic.setPic8(fileName);break;
            case 9:list=cookPic.getPic9().split("/");cookPic.setPic9(fileName);break;
            case 10:list=cookPic.getPic10().split("/");cookPic.setPic10(fileName);break;
            case 11:list=cookPic.getPic11().split("/");cookPic.setPic11(fileName);break;
            case 12:list=cookPic.getPic12().split("/");cookPic.setPic12(fileName);break;
            case 13:list=cookPic.getPic13().split("/");cookPic.setPic13(fileName);break;
            case 14:list=cookPic.getPic14().split("/");cookPic.setPic14(fileName);break;
            case 15:list=cookPic.getPic15().split("/");cookPic.setPic15(fileName);break;
            case 16:list=cookPic.getPic16().split("/");cookPic.setPic16(fileName);break;
            case 17:list=cookPic.getPic17().split("/");cookPic.setPic17(fileName);break;
            case 18:list=cookPic.getPic18().split("/");cookPic.setPic18(fileName);break;
            case 19:list=cookPic.getPic19().split("/");cookPic.setPic19(fileName);break;
            case 20:list=cookPic.getPic20().split("/");cookPic.setPic20(fileName);break;
        }
        String filename1= uploadPath +list[2];
        //删除修改前的图片
        File file2=new File(filename1);
        if(file2.exists())
        {
            file2.delete();
        }
        //更新数据库图片路径
        backStageDao.editCookBookPic(cookPic);
        return rs.success("null", "修改成功", 200);
    }
    @RequestMapping("/cookBookDetail")
    public String cookBookDetail(@RequestBody CookBook cookBook){
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
            return result.success(data,"获取成功",200);
        }
    }
}
