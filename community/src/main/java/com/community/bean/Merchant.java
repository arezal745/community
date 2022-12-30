package com.community.bean;

import lombok.Data;

@Data
public class Merchant {
    private int merchantid;
    private String rid;
    private String username;
    private String password;
    private String mobile;
    private String region;
    private String regionname;
}
