package com.UPMS.sh.service;

import com.UPMS.sh.beans.Function;
import com.UPMS.sh.dao.DaoImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class FunctionService {
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

    public ArrayList<Function> getFunctionByFid(int fid){
        String sql = "SELECT `fid`, `fname`, `description` FROM `upms`.`funtion` WHERE `fid`="+fid;
        List<Map<String ,String>> maps = di.getList(sql);
        ArrayList<Function> functions = map2Function(maps);
        return functions;
    }

    public ArrayList<Function> getFunctionByName(String fname){
        String sql = "SELECT `fid`, `fname`, `description` FROM `upms`.`funtion` WHERE fname like '%"+fname+"%'";
        List<Map<String ,String>> maps = di.getList(sql);
        ArrayList<Function> functions = map2Function(maps);
        return functions;
    }

    public boolean editFunctionByFid(Function function){
        String sql = "UPDATE `upms`.`funtion` SET  `fname`= '"+ function.getFname()
                +"', `description`='"+ function.getDescription()+"' WHERE (`fid`="+function.getFid()+")";
        int n = di.update(sql);
        if (n > 0)return true;
        else return false;
    }

    public boolean deleteFunctionByFid(int fid){
        String sql = "DELETE FROM `upms`.`funtion` WHERE `fid` = "+fid;
        int n = di.update(sql);
        if (n > 0)return true;
        else return false;
    }

    public boolean insertFunction(Function function){
        String sql = "INSERT into funtion (`fname`, `description`) VALUES ('"+function.getFname()+"','"+function.getDescription()+"')" ;
        int n = di.update(sql);
        if (n > 0)return true;
        else return false;
    }
    public ArrayList<Function> getFunctionAll(){
        String sql = "SELECT `fid`, `fname`, `description` FROM `upms`.`funtion`";
        List<Map<String ,String>> maps = di.getList(sql);
        ArrayList<Function> functions = map2Function(maps);
        return functions;
    }

    public boolean isExist(String fname){
        FunctionService fs = new FunctionService();
        ArrayList<Function> functions = fs.getFunctionByName(fname);
        if (functions.size()==0){
            return false;
        }
        else {
            return true;
        }
    }
}
