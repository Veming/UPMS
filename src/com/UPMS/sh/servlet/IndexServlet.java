package com.UPMS.sh.servlet;

import com.UPMS.sh.beans.Administrator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/index.html")
public class IndexServlet extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置字符编码格式
        request.setCharacterEncoding("utf-8");

        String method = request.getParameter("method");

        HttpSession session = request.getSession();
        Administrator administrator = (Administrator) session.getAttribute("administrator");
//        System.out.println(administrator.getAid());
//        System.out.println(administrator.getPassword());
//        System.out.println(administrator.getMobile());
//        System.out.println(administrator.getEmail());
        if (null == administrator ||
                "".equals(administrator.getAid())||
                "".equals(administrator.getPassword())||
                "".equals(administrator.getMobile())||
                "".equals(administrator.getEmail())){
            response.sendRedirect("/login.html");
        }
        if (null != method){
            if ("".equals(method)){

            }else if ("".equals(method)){

            }

            request.getRequestDispatcher(request.getContextPath()+"/index.jsp").forward(request,response);
        }


    }

}

