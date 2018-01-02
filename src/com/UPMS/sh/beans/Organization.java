package com.UPMS.sh.beans;

import java.util.Date;

public class Organization {
//    oid	bigint
//    oname	varchar(64)
//    gen_time	datetime
//    description	varchar(200)
//    available	int
    private int oid;
    private String oname;
    private Date gen_time;
    private String description;
    private int available;

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public String getOname() {
        return oname;
    }

    public void setOname(String oname) {
        this.oname = oname;
    }

    public Date getGen_time() {
        return gen_time;
    }

    public void setGen_time(Date gen_time) {
        this.gen_time = gen_time;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getAvailable() {
        return available;
    }

    public void setAvailable(int available) {
        this.available = available;
    }
}
