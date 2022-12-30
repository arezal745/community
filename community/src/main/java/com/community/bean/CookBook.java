package com.community.bean;

import lombok.Data;

@Data
public class CookBook {
    private int id;
    private String img;
    private String time;
    private String name;
    private int foodNumber;
    private String mainMaterials;
    private String condiment;
    private int picID;
    private int descID;
    private String cateID;
    private int favorite;
    private String query;
    private String city;

}
