package com.UPMS.sh.servlet;

import com.UPMS.sh.beans.Role;
import com.UPMS.sh.beans.User;
import com.UPMS.sh.service.RoleService;
import com.UPMS.sh.service.UserService;

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
@WebServlet("/user.html")
public class UserServlet extends HttpServlet {
    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String method = request.getParameter("method");

        if(null != method){
            if ("add".equals(method)){
                addUser(request,response);
            }
            if ("toAdd".equals(method)){
                toAdd(request,response);
            }
            if ("delete".equals(method)){
                deleteUser(request,response);
            }
            if ("toEdit".equals(method)){
                toEdit(request,response);
            }
            if("serachByName".equals(method)){
                serachByName(request,response);
            }
        }
        searchAll(request,response);
        return;
    }

    private void serachByName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        UserService us = new UserService();
        RoleService rs = new RoleService();

        ArrayList<Role> roles = rs.getRoleAll();
        ArrayList<User> users=  us.getUserByName(name);

        request.setAttribute("users",users);
        request.setAttribute("roles",roles);
        System.out.println(users);
        request.getRequestDispatcher(request.getContextPath()+"/userList.jsp").forward(request,response);
    }

    private void toEdit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int uid = Integer.parseInt(request.getParameter("uid"));

        UserService us = new UserService();
        RoleService rs = new RoleService();

        ArrayList<User> users = us.getUserByUid(uid);
        ArrayList<Role> roles = rs.getRoleAll();
        User user = users.get(0);

        request.setAttribute("user",user);
        request.setAttribute("roles",roles);
        request.getRequestDispatcher(request.getContextPath()+"/editUser.jsp").forward(request,response);
    }

    private void toAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RoleService rs = new RoleService();
        ArrayList<Role> roles = rs.getRoleAll();
        request.setAttribute("roles",roles);
        request.getRequestDispatcher(request.getContextPath()+"/addUser.jsp").forward(request,response);
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int uid = Integer.parseInt(request.getParameter("uid"));
        UserService us = new UserService();
        us.deleteUserByUid(uid);
        searchAll(request,response);
    }

    private void addUser(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        int rid = Integer.parseInt(request.getParameter("rid"));
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String mobile = request.getParameter("mobile");
        String email = request.getParameter("email");

        User user = new User();
        user.setRid(rid);
        user.setUsername(username);
        user.setName(name);
        user.setMobile(mobile);
        user.setEmail(email);
        user.setPassword(password);

        UserService us = new UserService();
        us.insertUser(user);
        searchAll(request,response);
    }

    private void searchAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserService us = new UserService();
        RoleService rs = new RoleService();

        ArrayList<Role> roles = rs.getRoleAll();
        ArrayList<User> users=  us.getUserAll();

        request.setAttribute("users",users);
        request.setAttribute("roles",roles);
        System.out.println(users);
        request.getRequestDispatcher(request.getContextPath()+"/userList.jsp").forward(request,response);
    }
}
