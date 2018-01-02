package com.UPMS.sh.service;

import com.UPMS.sh.beans.Role;
import com.UPMS.sh.dao.DaoImpl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class RoleService {
    DaoImpl di = new DaoImpl();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");

    private ArrayList<Role> map2Role(List<Map<String,String>> maps){
        ArrayList<Role> roles = new ArrayList<>();
        for (Map<String,String> map:maps){
            Role role = new Role();
            role.setRid(Integer.parseInt(map.get("rid")));
            role.setRname(map.get("rname"));
            try {
                role.setGen_time(sdf.parse(map.get("gen_time")));
            } catch (ParseException e) {
                System.out.println("RoleService->map2Role->Role.setGen_time() error!!! ");
                e.printStackTrace();
            }

        }
        return roles;
    }

    public ArrayList<Role> getRoleByFid(int rid){
        String sql = "SELECT `rid`, `rname`, `gen_time`, `description` FROM `upms`.`role` WHERE rid = "+rid;
        List<Map<String,String>> maps = di.getList(sql);
        ArrayList<Role> roles = map2Role(maps);
        return roles;
    }

    public ArrayList<Role> getRoleByRname(String rname){
        String sql = "SELECT `rid`, `rname`, `gen_time`, `description` FROM `upms`.`role` WHERE rname like %"+rname+"%";
        List<Map<String,String>> maps = di.getList(sql);
        ArrayList<Role> roles = map2Role(maps);
        return roles;
    }

    public boolean insertRole(Role role){
        String sql = "INSERT INTO `upms`.`role` (`rname`, `gen_time`, `description`) VALUES ("+
                role.getRname()+", "+sdf.format(role.getGen_time())+", "+role.getDescription()+")";
        int n = di.update(sql);
        if (n > 0)return true;
        else return false;
    }

    public boolean deleteRoleByRid(int rid){
        String sql = "DELETE FROM `upms`.`role` WHERE `rid`= "+rid;
        int n = di.update(sql);
        if (n > 0)return true;
        else return false;
    }

    public boolean editRoleByRid(Role role){
        String sql = "UPDATE `upms`.`role` SET `rname`="+
                role.getRname()+", `gen_time`="+
                sdf.format(role.getGen_time())+", `description`="+role.getDescription()+" WHERE (`rid`="+role.getRid()+")";
        int n = di.update(sql);
        if (n > 0)return true;
        else return false;
    }

}
