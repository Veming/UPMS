package com.UPMS.sh.beans;

public class Function {
//    fid	bigint
//    fname	varchar(64)	64
//    description	varchar(200)
    private int fid;
    private String fname;
    private String description;

    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
