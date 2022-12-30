package com.community;

import com.community.util.WxPayConfig;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import java.security.PrivateKey;

@SpringBootTest
class CommunityApplicationTests {

    @Resource
    private WxPayConfig wxPayConfig;

    //获取商户私钥
//    @Test
//    void testGetPrivateKey() {
//        //获取私钥地址
//        String privateKeyPath=wxPayConfig.getPrivateKeyPath();
//        System.out.println(privateKeyPath);
//
//        PrivateKey privateKey=wxPayConfig.getPrivateKey(privateKeyPath);
//
//        System.out.println(privateKey);
//    }

}
