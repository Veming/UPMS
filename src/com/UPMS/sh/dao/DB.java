package com.UPMS.sh.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 封装整个  JDBC 操作数据库的过程
 * 1.加载驱动
 * 2.建立连接
 * 3.声明
 * 4.访问数据
 * 5.关闭声明
 * 6.关闭连接
 */

public class DB {
    protected Connection conn;
    protected Statement stmt;
    protected ResultSet rs;
    private String driver="com.mysql.jdbc.Driver";
    private String url="jdbc:mysql://localhost:3306/UPMS";
    private String user="root";
    private String password="root";

    public DB(){
        try {
//            System.out.println("驱动加载");
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            System.out.println("加载驱动异常");
            e.printStackTrace();
        }
    }
    protected Connection getConn(){
        try {
//            System.out.println("连接数据库");
            conn=DriverManager.getConnection(url,user,password);
        } catch (SQLException e) {
            System.out.println("连接数据库异常");
            e.printStackTrace();
        }
        return conn;
    }
    protected void closed() {
        try {
//            System.out.println("断开数据库");
            if (null!=conn){ conn.close(); }
            if (null!=stmt){ stmt.close(); }
            if (null!=rs){ rs.close(); }
        } catch (SQLException e) {
            System.out.println("数据库断开异常");
            e.printStackTrace();
        }
    }
    protected Statement getStmt(){
        try{
            conn=getConn();
            stmt=conn.createStatement();
        } catch (SQLException e) {
            System.out.println("getStmt异常");
            e.printStackTrace();
        }
        return stmt;
    }
    protected ResultSet getRs(String sql){
        try{
            if (null==sql)sql="";
            stmt=getStmt();
            rs=stmt.executeQuery(sql);
        } catch (SQLException e) {
            System.out.println("获取ResultSet异常");
            e.printStackTrace();
        }
        return rs;
    }
    protected int update(String sql){
        int num=-1;
        if (null==sql)sql="";
        try{
            stmt=getStmt();
            num=stmt.executeUpdate(sql);
        } catch (SQLException e) {
            num=-1;
            System.out.println("更新数据异常");
            e.printStackTrace();
        }
        return num;
    }
    protected List<Map<String,String>> rs2ListMap(ResultSet rs){
        List<Map<String,String>> list=new ArrayList<Map<String, String>>();
        try {
            while(rs.next()){
                Map<String,String> map=new HashMap<String, String>();
                ResultSetMetaData rsmd=rs.getMetaData();
                int n=rsmd.getColumnCount();
                for (int i=1;i<=n;i++){
                    String key=rsmd.getColumnName(i);
                    String value=rs.getString(key);
                    //System.out.println("key:"+key+" value:"+value);
                    map.put(key,value);
                }
                list.add(map);

            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("rs2ListMap异常");
        }
        return list;
    }
}