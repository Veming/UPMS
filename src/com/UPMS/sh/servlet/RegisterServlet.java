package com.UPMS.sh.servlet;

import com.UPMS.sh.beans.Administrator;
import com.UPMS.sh.service.AdministratorService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register.html")
public class RegisterServlet extends HttpServlet {

    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("utf-8");
        String method = request.getParameter("method");

        if (null!=method){
            if ("register".equals(method)){
                register(request,response);
            }
        }

        request.getRequestDispatcher(request.getContextPath()+"/register.jsp").forward(request,response);
    }


    private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        Administrator administrator = new Administrator();
        AdministratorService as = new AdministratorService();

        String mobile = request.getParameter("mobile");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        administrator.setMobile(mobile);
        administrator.setEmail(email);
        administrator.setPassword(password);


        if (!as.isExist(mobile)){
            as.insertAdministrator(administrator);
            request.getRequestDispatcher("/login.html").forward(request,response);
            return;
        }else {
            request.setAttribute("message","已被注册");
            request.getRequestDispatcher(request.getContextPath()+"/register.jsp").forward(request,response);
            return;
        }
    }
}
