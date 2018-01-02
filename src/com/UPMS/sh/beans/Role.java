package com.UPMS.sh.beans;

import java.util.Date;

public class Role {
//    rid	bigint
//    rname	varchar(64)	64
//    gen_time	datetime
//    description	varchar(200)
    private int rid;
    private String rname;
    private Date gen_time;
    private String description;

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
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
}
