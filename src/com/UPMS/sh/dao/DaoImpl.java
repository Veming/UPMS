package com.UPMS.sh.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Map;

public class DaoImpl implements Dao {
    DB db;

    public DaoImpl(){db=new DB();}

    @Override
    public int update(String sql) {
        db.getConn();
        int n=db.update(sql);
        db.closed();
        return n;
    }

    @Override
    public List<Map<String, String>> getList(String sql)  {
        db.getConn();
        ResultSet rs=db.getRs(sql);
        List<Map<String, String>> list=db.rs2ListMap(rs);
        db.closed();
        return list;
    }

    @Override
    public int[] batch(String[] sql) throws SQLException {
        Connection conn=db.getConn();
        Statement stmt=db.getStmt();

        int []n=null;
        try{
            for (int i=0;i<sql.length;i++){
                stmt.addBatch(sql[i]);
            }
            n=stmt.executeBatch();
        }catch (SQLException e){
            System.out.println("batch异常");
            e.printStackTrace();
        }
        db.closed();
        return n;
    }

    @Override
    public boolean transaction(String[] sql) throws SQLException {
        Connection conn=db.getConn();
        Statement stmt=db.getStmt();

        try
        {
            //开辟缓冲区---不自动提交
            conn.setAutoCommit(false);

            for (int i = 0; i < sql.length; i++)
            {
                int n=stmt.executeUpdate(sql[i]);
                if (n==0)
                {
                    conn.rollback();
                    return false;
                }
            }
            conn.commit();
        }catch (SQLException e)
        {
            System.out.println("事务异常");
            e.printStackTrace();
        }
        db.closed();
        return true;
    }


}
