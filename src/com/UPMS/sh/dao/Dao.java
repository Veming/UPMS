package com.UPMS.sh.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface Dao {

    //增加/删除/修改 统一方法  返回 执行结果 的条数
    int update(String sql) throws SQLException;

    //查询数据方法  返回 执行结果 的数据信息
    List<Map<String, String>> getList(String sql);

    //批处理 统一处理 一个数组的sql 数据
    int[] batch(String[] sql) throws SQLException;

    //事务信息提交  完成数据的 执行 回滚
    boolean transaction(String[] sqls) throws SQLException;
}
