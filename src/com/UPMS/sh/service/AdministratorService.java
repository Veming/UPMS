package com.UPMS.sh.service;

import com.UPMS.sh.beans.Administrator;
import com.UPMS.sh.dao.DaoImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class AdministratorService {
    private DaoImpl di = new DaoImpl();

    private ArrayList<Administrator> map2Administrator(List<Map<String,String>> maps){
        ArrayList<Administrator> administrators = new ArrayList<>();
        for (Map<String,String> map : maps){
            Administrator administrator = new Administrator();
            administrator.setAid(Integer.parseInt(map.get("aid")));
            administrator.setMobile(map.get("mobile"));
            administrator.setEmail(map.get("email"));
            administrator.setPassword(map.get("password"));
            administrators.add(administrator);
        }
        return administrators;
    }

    public ArrayList<Administrator> getAdministratorByAid(int aid){
        String sql = "SELECT `aid`, `mobile`, `email`, `password` FROM `upms`.`administrator` WHERE `aid` = "+aid;
        List<Map<String,String>> maps = di.getList(sql);
        ArrayList<Administrator> administrators = map2Administrator(maps);
        return administrators;
    }

    public ArrayList<Administrator> getAdministratorByMobile(String mobile){
        String sql = "SELECT `aid`, `mobile`, `email`, `password` FROM `upms`.`administrator` WHERE `mobile` = " + mobile;
        List<Map<String,String>> maps = di.getList(sql);
        ArrayList<Administrator> administrators = map2Administrator(maps);
        return administrators;
    }

    public boolean insertAdministrator(Administrator administrator){
        String sql =  "INSERT INTO `upms`.`administrator` (`mobile`, `email`, `password`) VALUES ("+administrator.getMobile()+", "+administrator.getEmail()+", "+administrator.getPassword()+")";
        int n = di.update(sql);
        if (n > 0)return true;
        else return false;
    }

    public boolean editAdministratorByAid(Administrator administrator){
        String sql = "UPDATE `upms`.`administrator` SET `mobile`="+administrator.getMobile()
                +",`email`="+administrator.getEmail()
                +", `password`="+administrator.getPassword()
                +" WHERE (`aid`="+administrator.getAid()+")";
        int n = di.update(sql);
        if (n > 0)return true;
        else return false;
    }


    public boolean isExist(String mobile) {
//        System.out.println(mobile);
        AdministratorService as = new AdministratorService();
        ArrayList<Administrator> administrators = as.getAdministratorByMobile(mobile);
        if (administrators.size()==0){
            return false;
        }
        else {
            return true;
        }
    }

}
