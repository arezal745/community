package com.community.util;


import com.community.Interceptor.JwtInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

//全局配置类——配置跨域请求
//@Configuration
//public class WebConfig extends WebMvcConfigurerAdapter {
//    @Override
//    public void addCorsMappings(CorsRegistry registry) {
//        registry.addMapping("/**")
//                .allowedOrigins("Http://localhost:3000","null")
//                .allowedMethods("GET","POST","PUT","OPTIONS","DELETE")
//                .allowCredentials(true)
//                .maxAge(3600);
//    }
//}
@Configuration
public class WebConfig implements WebMvcConfigurer {
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
//                .allowedOrigins("Http://localhost:3000","null")
                .allowedOrigins("*")
                .allowedMethods("GET","POST","PUT","OPTIONS","DELETE")
                .allowCredentials(true)
                .maxAge(3600);
    }

    @Bean
    public JwtInterceptor jwtInterceptor(){
        return new JwtInterceptor();
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(jwtInterceptor())
                .addPathPatterns("/**")//拦截所有请求，判断token是否通过
                .excludePathPatterns(
                 "/login/**",
                 "/register/**",
//                 "/user/**",
//                 "/WxPay/**",
                 "/register","/goods/getGoods","/goods/getRecommend"
                ,"/goods/getDetail","/goods/getComment","/goods/getRecommendRecipe","/goods/cate"
                ,"/goods/cate","/goods/catetag","/goods/cateGoods","/goods/getCookCate","/goods/getCookBook"
                ,"/goods/queryCookBook","/goods/cookBookDetail","/goods/recommendGoods"
                ,"/WxPay/Native/notify","/WxPay/refund/notify"
                ,"/user/editpsd"

//              ,"/Merchant/**"
                ,"/Merchant/register","/Merchant/editpsd","/Merchant/merUpload"

//               ,"/BackStage/**"

//                ,"/Rider/**"
                  ,"/Rider/editpsd"
                );//排除

    }
}


