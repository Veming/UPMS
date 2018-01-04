package com.UPMS.sh.servlet;

import com.UPMS.sh.beans.Role;
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
@WebServlet("/role.html")
public class RoleServlet extends HttpServlet {
    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String method = request.getParameter("method");

        if (method != null) {
            if("add".equals(method)){
                add(request,response);
                return;
            }
            if ("delete".equals(method)) {
                delete(request, response);
                return;
            }

            if("search".equals(method)){
                search(request,response);
                return;
            }

            if ("edit".equals(method)){
                edit(request,response);
                return;
            }
            if ("toAdd".equals(method)){
                toAdd(request,response);
                return;
            }
            if("toEdit".equals(method)){
                toEdit(request,response);
                return;
            }
        }
        searchAll(request,response);
        return;

    }



    private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int rid = Integer.parseInt(request.getParameter("rid"));
        String rname = request.getParameter("rname");
        String description = request.getParameter("description");

        Role role = new Role();
        role.setRid(rid);
        role.setRname(rname);
        role.setDescription(description);

        RoleService rs = new RoleService();
        rs.editRoleByRid(role);

        response.sendRedirect("/role.html");

    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int rid = Integer.parseInt(request.getParameter("rid"));
        RoleService rs = new RoleService();

        boolean ifDelete = rs.deleteRoleByRid(rid);
        System.out.printf(ifDelete+"RoleServlet");
        response.sendRedirect("/role.html");
    }

    private void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String rname = request.getParameter("rname");
        RoleService rs = new RoleService();

        ArrayList<Role> roles = rs.getRoleByRname(rname);
        request.setAttribute("roles",roles);
        request.getRequestDispatcher(request.getContextPath()+"/roleList.jsp").forward(request,response);
    }

    private void searchAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RoleService rs = new RoleService();

        ArrayList<Role> roles=  rs.getRoleAll();
//        System.out.println(roles);
        request.setAttribute("roles",roles);
        request.getRequestDispatcher(request.getContextPath()+"/roleList.jsp").forward(request,response);
    }
    private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String rname = request.getParameter("rname");
        String description = request.getParameter("description");

        Role role = new Role();
        role.setRname(rname);
        role.setDescription(description);

        RoleService rs = new RoleService();
        rs.insertRole(role);

        response.sendRedirect("/role.html");
    }
    private void toEdit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int rid = Integer.parseInt(request.getParameter("rid"));
        RoleService rs = new RoleService();
        ArrayList<Role> roles = rs.getRoleByRid(rid);
        Role role = roles.get(0);
        request.setAttribute("role",role);
        request.getRequestDispatcher(request.getContextPath()+"/editRole.jsp").forward(request,response);
    }
    private void toAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher(request.getContextPath()+"/addRole.jsp").forward(request,response);
    }


}
