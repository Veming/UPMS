package com.UPMS.sh.service;

import com.UPMS.sh.beans.Function;
import com.UPMS.sh.dao.DaoImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by wcy on 2018/1/4.
 */
public class RoleFunctionService {
    DaoImpl di = new DaoImpl();

    private ArrayList<Function> map2Function(List<Map<String,String>> maps){
        ArrayList<Function> functions = new ArrayList<>();
        for (Map<String,String> map:maps){
            Function function = new Function();
            function.setFid(Integer.parseInt(map.get("fid")));
            function.setFname(map.get("fname"));
            function.setDescription(map.get("description"));
            functions.add(function);
        }
        return functions;
    }

    public ArrayList<Function> getRoleFunction(int rid){
        String sql = "SELECT `fid`, `fname`, `description` FROM `upms`.`funtion` WHERE `fid` IN " +
                "(SELECT `fid` FROM `upms`.`rolefunctionrelation` WHERE `rid`="+rid+" )";
        List<Map<String ,String>> maps = di.getList(sql);
        ArrayList<Function> functions = map2Function(maps);
//        System.out.println(maps);
//        System.out.println(functions);
        return functions;

    }

    public boolean deleteRoleFunctionByFid(int rid,int fid){
        String sql = "DELETE FROM `upms`.`rolefunctionrelation` WHERE `fid` = "+fid+" and `rid` =" +rid;
        int n = di.update(sql);
        if (n > 0)return true;
        else return false;
    }
    public boolean insertRoleFunction(int fid,int rid){
        String sql = "INSERT INTO `upms`.`rolefunctionrelation` (`rid`, `fid`) VALUES ("+rid+","+fid+" )";
        int n = di.update(sql);
        if (n > 0)return true;
        else return false;
    }

}
