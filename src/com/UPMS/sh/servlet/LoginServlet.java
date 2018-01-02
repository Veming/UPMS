package com.UPMS.sh.servlet;

import com.UPMS.sh.beans.Administrator;
import com.UPMS.sh.service.AdministratorService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/login.html")
public class LoginServlet extends HttpServlet {
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置字符编码格式
        request.setCharacterEncoding("UTF-8");
        String method = request.getParameter("method");

        if (null != method){
            if ("login".equals(method)){
                login(request,response);
                return;
            }
        }
        request.getRequestDispatcher(request.getContextPath()+"/login.jsp").forward(request,response);
        return;

    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取手机和密码
        String mobile = request.getParameter("mobile");
        String password = request.getParameter("password");
        //查询
        AdministratorService as = new AdministratorService();
        ArrayList<Administrator> administrators = as.getAdministratorByMobile(mobile);


        //检测
        if (administrators.size()!=0){
            Administrator administrator = administrators.get(0);
            if (password.equals(administrator.getPassword())){
                HttpSession session = request.getSession();
                session.setAttribute("administrator",administrator);
                request.getRequestDispatcher("/index.html").forward(request,response);
            }
        }
        else {
            String message = "用户名或密码错误！";
            request.setAttribute("message",message);
            request.getRequestDispatcher(request.getContextPath()+"/login.jsp").forward(request,response);
        }
        return;
    }
}
