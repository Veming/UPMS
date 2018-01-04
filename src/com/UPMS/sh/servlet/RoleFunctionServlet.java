package com.UPMS.sh.servlet;

import com.UPMS.sh.beans.Function;
import com.UPMS.sh.beans.Role;
import com.UPMS.sh.service.FunctionService;
import com.UPMS.sh.service.RoleFunctionService;
import com.UPMS.sh.service.RoleService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by wcy on 2018/1/4.
 */
@WebServlet("/roleFunction.html")
public class RoleFunctionServlet extends HttpServlet {
    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String method = request.getParameter("method");

        if(null!=method){
            if("searchRoleFunction".equals(method)){
                getFunction(request,response);
                return;
            }
            if("add".equals(method)){
                addRoleFunction(request,response);
                return;
            }
            if("delete".equals(method)){
                deleteRoleFunction(request,response);
                return;
            }
        }
        searchAll(request,response);
        return;
    }

    private void deleteRoleFunction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int rid = Integer.parseInt(request.getParameter("rid"));
        int fid = Integer.parseInt(request.getParameter("fid"));
        RoleFunctionService rfs = new RoleFunctionService();
        rfs.deleteRoleFunctionByFid(rid,fid);
        request.setAttribute("rid",rid);
        searchAll(request,response);
    }

    private void addRoleFunction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int rid = Integer.parseInt(request.getParameter("rid"));
        int fid = Integer.parseInt(request.getParameter("fid"));
        RoleFunctionService rfs = new RoleFunctionService();
        rfs.insertRoleFunction(fid,rid);
        request.setAttribute("rid",rid);
        searchAll(request,response);
    }

    private void getFunction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int rid = Integer.parseInt(request.getParameter("rid"));
        RoleFunctionService rfs = new RoleFunctionService();
        ArrayList<Function> functions = rfs.getRoleFunction(rid);
        request.setAttribute("functions",functions);
        request.getRequestDispatcher(request.getContextPath()+"/roleFunctionList.jsp").forward(request,response);
    }
    private void searchAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RoleFunctionService rfs = new RoleFunctionService();
        FunctionService fs = new FunctionService();
        RoleService rs = new RoleService();
        int rid = Integer.parseInt(request.getParameter("rid"));
        ArrayList<Role> roles = rs.getRoleByRid(rid);
        ArrayList<Function> roleFunctions =  rfs.getRoleFunction(rid);
        ArrayList<Function> allFunctions =  fs.getFunctionAll();
        Role role = roles.get(0);

        request.setAttribute("role",role);
        request.setAttribute("roleFunctions",roleFunctions);
        request.setAttribute("allFunctions",allFunctions);
        request.getRequestDispatcher(request.getContextPath()+"/roleFunctionList.jsp").forward(request,response);
    }

}
