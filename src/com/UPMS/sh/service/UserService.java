package com.UPMS.sh.service;

import com.UPMS.sh.beans.User;
import com.UPMS.sh.dao.DaoImpl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class UserService {
    DaoImpl di = new DaoImpl();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");

    private ArrayList<User> map2User(List<Map<String,String>> maps){
        ArrayList<User> users = new ArrayList<>();
        for (Map<String,String> map:maps){
            User user = new User();
            user.setUid(Integer.parseInt(map.get("uid")));
            user.setRid(Integer.parseInt(map.get("rid")));
            user.setOid(Integer.parseInt(map.get("oid")));
            user.setUsername(map.get("username"));
            user.setPassword(map.get("password"));
            user.setName(map.get("name"));
            user.setMobile(map.get("mobile"));
            user.setEmail(map.get("email"));
            try {
                user.setGen_time(sdf.parse(map.get("gen_time")));
                user.setLogin_time(sdf.parse(map.get("login_time")));
                user.setLast_login_time(sdf.parse(map.get("last_login_time")));
            } catch (ParseException e) {
                System.out.println("UserService->map2User->user.setXtime() error!!! ");
                e.printStackTrace();
            }
            user.setCount(Integer.parseInt(map.get("count")));
            users.add(user);
        }
        return users;
    }

    public ArrayList<User> getUserByUid(int uid){
        String sql = "SELECT `uid`, `rid`, `oid`, `username`, `password`, `name`, `mobile`, `email`, `gen_time`, `login_time`, `last_login_time`, `count` FROM `upms`.`user` WHERE `uid` = "+uid;
        List<Map<String ,String>> maps = di.getList(sql);
        ArrayList<User> users = map2User(maps);
        return users;
    }

    public ArrayList<User> getUserByName(String name){
        String sql = "SELECT `uid`, `rid`, `oid`, `username`, `password`, `name`, `mobile`, `email`, `gen_time`, `login_time`, `last_login_time`, `count` FROM `upms`.`user` WHERE `name` like '%"+name+"%'";
        List<Map<String ,String>> maps = di.getList(sql);
        ArrayList<User> users = map2User(maps);
//        System.out.println(maps);
//        System.out.println(users);
        return users;
    }

    public boolean insertUser(User user){
        String sql = "INSERT INTO `upms`.`user` (`rid`, `username`, `password`, `name`, `mobile`, `email`, `gen_time`, `login_time`, `last_login_time`, `count`,oid) VALUES ("+
                user.getRid()+",'"+user.getUsername()+"', '"+user.getPassword()+"', '"+user.getName()+"', '"+user.getMobile()+ "', '"+user.getEmail()+"', now(), now(), now(), 0,0)";
        int n = di.update(sql);
        if (n>0)return true;
        else return false;
    }

    public boolean editUserByUid(User user){
        String sql = "UPDATE `upms`.`user` SET "+
                "  `rid`="+user.getRid()+
                ", `username`="+user.getUsername()+
                ", `password`="+user.getPassword()+
                ", `name`="+user.getName()+
                ", `mobile`="+user.getMobile()+
                ", `email`="+user.getEmail()+
                " WHERE (`uid`="+user.getUid()+")";
        int n = di.update(sql);
        if (n>0)return true;
        else return false;
    }

    public boolean deleteUserByUid(int uid){
        String sql = "DELETE FROM `upms`.`user` WHERE `uid`="+uid;
        int n = di.update(sql);
        if (n>0)return true;
        else return false;
    }

    public ArrayList<User> getUserAll(){
        String sql = "SELECT `uid`, `rid`, `oid`, `username`, `password`, `name`, `mobile`, `email`, `gen_time`, `login_time`, `last_login_time`, `count` FROM `upms`.`user`";
        List<Map<String ,String>> maps = di.getList(sql);
        ArrayList<User> users = map2User(maps);
//        System.out.println(maps);
//        System.out.println(users);
        return users;
    }
}
