package com.UPMS.sh.service;

import com.UPMS.sh.beans.Organization;
import com.UPMS.sh.dao.DaoImpl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class OrganizationService {
    DaoImpl di = new DaoImpl();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");

    /*INSERT INTO `upms`.`organization` (`oid`, `oname`, `gen_time`, `description`, `available`) VALUES (NULL, NULL, NULL, NULL, NULL);*/
    private ArrayList<Organization> map2Organization(List<Map<String,String>> maps){
        ArrayList<Organization> organizations = new ArrayList<>();
        for (Map<String,String> map:maps){
            Organization organization = new Organization();
            organization.setOid(Integer.parseInt(map.get("oid")));
            organization.setOname(map.get("oname"));
            try {
                organization.setGen_time(sdf.parse(map.get("gen_time")));
            } catch (ParseException e) {
                System.out.println("OrganizationService->Map2Organization->organization.setGen_time() error!!! ");
                e.printStackTrace();
            }
            organization.setDescription(map.get("description"));
            organization.setAvailable(Integer.parseInt(map.get("available")));
            organizations.add(organization);
        }
        return organizations;
    }

    public ArrayList<Organization> getOrganizationByOid(int oid){
        String sql = "SELECT `oid`, `oname`, `gen_time`, `description`, `available` FROM `upms`.`organization` WHERE `oid` ="+oid ;
        List<Map<String ,String>> maps = di.getList(sql);
        ArrayList<Organization> organizations = map2Organization(maps);
        return organizations;
    }

    public ArrayList<Organization> getOrganizationByOname(String oname){
        String sql = "SELECT `oid`, `oname`, `gen_time`, `description`, `available` FROM `upms`.`organization` WHERE `oname` ="+oname;
        List<Map<String ,String>> maps = di.getList(sql);
        ArrayList<Organization> organizations = map2Organization(maps);
        return organizations;
    }

    public boolean editOrganizationByOid(Organization organization){
        String sql = "UPDATE `upms`.`organization` SET `oname`="+organization.getOname()
                +", `gen_time`="+sdf.format(organization.getGen_time())
                +", `description`="+organization.getDescription()
                +", `available`="+organization.getAvailable()
                +" WHERE (`oid`="+organization.getOid()+")";
        int n = di.update(sql);
        if (n > 0)return true;
        else return false;
    }

    public boolean deleteOrganizationByOid(int oid){
        String sql = "DELETE FROM `upms`.`organization` WHERE `oid` = "+oid;
        int n = di.update(sql);
        if (n > 0)return true;
        else return false;
    }

    public boolean insertOrganization(Organization organization){
        String sql = "INSERT INTO `upms`.`organization` (`oname`, `gen_time`, `description`, `available`) VALUES ("+
                organization.getOname()+", "+sdf.format(organization.getGen_time())+", "+organization.getDescription()+", "+organization.getAvailable()+") ";
        int n = di.update(sql);
        if (n > 0)return true;
        else return false;
    }

    public ArrayList<Organization> getOranizationAll(){
        String sql = "SELECT `oid`, `oname`, `gen_time`, `description`, `available` FROM `upms`.`organization`";
        List<Map<String ,String>> maps = di.getList(sql);
        ArrayList<Organization> organizations = map2Organization(maps);
        return organizations;
    }

}
