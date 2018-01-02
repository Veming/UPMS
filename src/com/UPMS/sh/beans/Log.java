package com.UPMS.sh.beans;

import java.util.Date;

public class Log {
//    log_id	bigint
//    uid	bigint
//    op_type	int
//    content	varchar(200)
//    gen_time	datetime
    private int log_id;
    private int uid;
    private int oid;
    private int op_type;    //0读操作 1修改操作 2创建操作 3删除操作
    private String content;
    private Date gen_time;

    public int getLog_id() {
        return log_id;
    }

    public void setLog_id(int log_id) {
        this.log_id = log_id;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public int getOp_type() {
        return op_type;
    }

    public void setOp_type(int op_type) {
        this.op_type = op_type;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getGen_time() {
        return gen_time;
    }

    public void setGen_time(Date gen_time) {
        this.gen_time = gen_time;
    }
}
