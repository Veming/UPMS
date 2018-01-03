package com.UPMS.sh.servlet;

import com.UPMS.sh.beans.Function;
import com.UPMS.sh.service.FunctionService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by wcy on 2018/1/3.
 */
@WebServlet("/function.html")
public class FunctionServlet extends HttpServlet {
    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf-8");
        String method = request.getParameter("method");

        if (null != method){
            if ("delete".equals(method)){

                delete(request,response);
                search(request,response);
                return ;

            }
            if ("search".equals(method)){
                search(request,response);
                return;
            }

            searchAll(request,response);
        }



    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        int fid = Integer.parseInt(request.getParameter("fid"));
        FunctionService fs = new FunctionService();

        boolean ifDelete = fs.deleteFunctionByFid(fid);
        System.out.printf("ifDelete"+"FunctionServlet");
    }

    private void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fname = request.getParameter("fname");
        FunctionService fs = new FunctionService();

        ArrayList<Function> functions=  fs.getFunctionByName(fname);
        request.setAttribute("functions",functions);
        request.getRequestDispatcher(request.getContextPath()+"/function.jsp").forward(request,response);
    }

    private void searchAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        FunctionService fs = new FunctionService();

        ArrayList<Function> functions=  fs.getFunctionAll();
        request.setAttribute("functions",functions);
        request.getRequestDispatcher(request.getContextPath()+"/function.jsp").forward(request,response);
    }


}
