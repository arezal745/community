package com.community.util;

import com.community.bean.User;
import com.community.dao.UserDao;
import io.jsonwebtoken.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.PostConstruct;
import java.util.Date;
import java.util.UUID;

@RestController
public class JwtUtil {

    private static long time=1000*60*60*24;
    private static String sign="token-verify";


    private static UserDao staticUserDao;

    @Autowired
    private UserDao UserDao;

    @PostConstruct
    public void setUserService(){
        staticUserDao = UserDao;
    }

    public static String createToken(int id,String rank,String psd){
        JwtBuilder jwtBuilder= Jwts.builder();
        String token=jwtBuilder
                //header
                .setHeaderParam("type","JWT")
                .setHeaderParam("alg","HS256")
                //payload
                .claim("ID",id)
                .claim("rank",rank)
                .claim("psd",psd)
                .setExpiration(new Date(System.currentTimeMillis()+time))
                .setId(UUID.randomUUID().toString())
                //signature
                .signWith(SignatureAlgorithm.HS256,sign)
                .compact();
        return token;
    }

    public static int checkToken(String token){
        if(token==null){
            return 1;
        }
        Jws<Claims> claimsJws=null;
        try {
            claimsJws=Jwts.parser().setSigningKey(sign).parseClaimsJws(token);
        } catch (Exception e) {
            return 2;
        }
        int id= (int) claimsJws.getBody().get("ID");
        String rank= (String) claimsJws.getBody().get("rank");
        String psd= String.valueOf(claimsJws.getBody().get("psd"));
        try {
            String password=null;
            switch (rank){
                case "101":password=staticUserDao.ManagerTokenVerify(id);break;
                case "102":password=staticUserDao.MerchantTokenVerify(id);break;
                case "103":password=staticUserDao.UserTokenVerify(id);break;
                case "104":password=staticUserDao.RiderTokenVerify(id);break;
            }
            if(password==psd)
            {
                return 0;
            }
        }catch (Exception e){
            e.printStackTrace();
            return 2;
        }
        return 0;
    }
}
