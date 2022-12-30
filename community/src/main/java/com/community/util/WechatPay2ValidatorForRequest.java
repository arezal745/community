package com.community.util;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.time.DateTimeException;
import java.time.Duration;
import java.time.Instant;

import com.wechat.pay.contrib.apache.httpclient.auth.Verifier;
import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.util.EntityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletRequest;

public class WechatPay2ValidatorForRequest {
    protected static final Logger log = LoggerFactory.getLogger(com.wechat.pay.contrib.apache.httpclient.auth.WechatPay2Validator.class);
    protected static final long RESPONSE_EXPIRED_MINUTES = 5L;
    protected final Verifier verifier;
    protected final String requestId;
    protected final String body;

    public WechatPay2ValidatorForRequest(Verifier verifier,String requestId,String body) {
        this.verifier = verifier;
        this.requestId=requestId;
        this.body=body;
    }

    protected static IllegalArgumentException parameterError(String message, Object... args) {
        message = String.format(message, args);
        return new IllegalArgumentException("parameter error: " + message);
    }

    protected static IllegalArgumentException verifyFail(String message, Object... args) {
        message = String.format(message, args);
        return new IllegalArgumentException("signature verify fail: " + message);
    }

    public final boolean validate(HttpServletRequest request) throws IOException {
        try {
            //处理请求参数
            this.validateParameters(request);

            //构造验签名串
            String message = this.buildMessage(request);

            String serial = request.getHeader("Wechatpay-Serial");
            String signature = request.getHeader("Wechatpay-Signature");

            //验签
            if (!this.verifier.verify(serial, message.getBytes(StandardCharsets.UTF_8), signature)) {
                throw verifyFail("serial=[%s] message=[%s] sign=[%s], request-id=[%s]", serial, message, signature, requestId);
            } else {
                return true;
            }
        } catch (IllegalArgumentException var5) {
            log.warn(var5.getMessage());
            return false;
        }
    }

    protected final void validateParameters(HttpServletRequest request) {

            String[] headers = new String[]{"Wechatpay-Serial", "Wechatpay-Signature", "Wechatpay-Nonce", "Wechatpay-Timestamp"};

            String header = null;

            String[] var6 = headers;
            int var7 = headers.length;

            for(int var8 = 0; var8 < var7; ++var8) {
                String headerName = var6[var8];
                header = request.getHeader(headerName);
                if (header == null) {
                    throw parameterError("empty [%s], request-id=[%s]", headerName, requestId);
                }
            }

            //判断请求是否过期
            String timestampStr = header;

            try {
                Instant responseTime = Instant.ofEpochSecond(Long.parseLong(timestampStr));
                //拒绝过期请求
                if (Duration.between(responseTime, Instant.now()).abs().toMinutes() >= 5L) {
                    throw parameterError("timestamp=[%s] expires, request-id=[%s]", timestampStr, requestId);
                }
            } catch (NumberFormatException | DateTimeException var10) {
                throw parameterError("invalid timestamp=[%s], request-id=[%s]", timestampStr, requestId);
            }
    }

    protected final String buildMessage(HttpServletRequest request) throws IOException {
        String timestamp = request.getHeader("Wechatpay-Timestamp");
        String nonce = request.getHeader("Wechatpay-Nonce");
        return timestamp + "\n" + nonce + "\n" + body + "\n";
    }

    protected final String getResponseBody(CloseableHttpResponse response) throws IOException {
        HttpEntity entity = response.getEntity();
        return entity != null && entity.isRepeatable() ? EntityUtils.toString(entity) : "";
    }
}
