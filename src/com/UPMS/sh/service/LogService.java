package com.UPMS.sh.service;

import com.UPMS.sh.beans.Log;
import com.UPMS.sh.dao.DaoImpl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class LogService {
    DaoImpl di = new DaoImpl();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");

    private ArrayList<Log> map2Log(List<Map<String,String>> maps){
        ArrayList<Log> logs = new ArrayList<>();
        for (Map<String,String> map:maps){
            Log log = new Log();
            log.setLog_id(Integer.parseInt(map.get("log_id")));
            log.setUid(Integer.parseInt(map.get("log_id")));
            log.setOid(Integer.parseInt(map.get("oid")));
            log.setOp_type(Integer.parseInt(map.get("op_type")));
            try {
                log.setGen_time(sdf.parse(map.get("gen_time")));
            } catch (ParseException e) {
                System.out.println("LogService->map2Log->log.setGen_time() error!!! ");
                e.printStackTrace();
            }
            log.setContent(map.get("content"));
            logs.add(log);
        }
        return logs;
    }

    public ArrayList<Log> getLogByLog_id(int log_id){
        String sql = "SELECT  `log_id`, `uid`, 'oid', `op_type`, `content`, `gen_time` FROM `upms`.`log` WHERE 'log_id'="+log_id;
        List<Map<String ,String>> maps = di.getList(sql);
        ArrayList<Log> logs = map2Log(maps);
        return logs;
    }

    public ArrayList<Log> getLogByOid(int oid){
        String sql = "SELECT  `log_id`, `uid`, 'oid', `op_type`, `content`, `gen_time` FROM `upms`.`log` WHERE 'oid'="+oid;
        List<Map<String ,String>> maps = di.getList(sql);
        ArrayList<Log> logs = map2Log(maps);
        return logs;
    }

    public ArrayList<Log> getLogByOidAndPeriod(int oid,Date start,Date end){
        String sql = "SELECT  `log_id`, `uid`, 'oid', `op_type`, `content`, `gen_time` FROM `upms`.`log` WHERE 'oid'="+oid;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        if (null != start) sql += " AND gen_time>="+sdf.format(start);
        if (null != end) sql += " AND gen_time=<"+sdf.format(end);

        List<Map<String ,String>> maps = di.getList(sql);
        ArrayList<Log> logs = map2Log(maps);
        return logs;
    }

    public boolean insertLog(Log log){
        String sql = "INSERT INTO `upms`.`log` ( `uid`, 'oid', `op_type`, `content`, `gen_time`) VALUES ("+
                +log.getUid()+", "+log.getOid()+", "+log.getOp_type()+", "+log.getContent()+", NOW())";
        int n = di.update(sql);
        if (n > 0)return true;
        else return false;
    }
}
