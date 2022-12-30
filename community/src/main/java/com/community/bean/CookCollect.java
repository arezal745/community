package com.community.bean;

public class CookCollect {
    public int id;
    public int userid;
    public int cookid;

    @Override
    public String toString() {
        return "CookCollect{" +
                "id=" + id +
                ", userid=" + userid +
                ", cookid=" + cookid +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getCookid() {
        return cookid;
    }

    public void setCookid(int cookid) {
        this.cookid = cookid;
    }
}
