package com.UPMS.sh.servlet;

import com.UPMS.sh.beans.Function;
import com.UPMS.sh.service.FunctionService;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by wcy on 2018/1/3.
 */
@WebServlet("/AddFunctionServlet.html")
public class AddFunctionServlet extends HttpServlet {
    @Override
    public void service(ServletRequest request , ServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf-8");
        String method = request.getParameter("method");
        if (method != null){

            if (method.equals("save")){


                insertIt(request,response);

            }

        }
    }

    private void insertIt(ServletRequest request, ServletResponse response) throws ServletException, IOException {
        Function function = new Function();
        FunctionService fs = new FunctionService();

        int fid = Integer.parseInt(request.getParameter("fid"));
        String fname = request.getParameter("fname");
        String description = request.getParameter("description");

        function.setFid(fid);
        function.setFname(fname);
        function.setDescription(description);

        if (!fs.isExist(fname)){
            fs.insertFunction(function);
            System.out.println("功能添加完成");
            return;
        }
        else {
            request.setAttribute("message","已有该功能");
            request.getRequestDispatcher("/AddFunction.jsp").forward(request,response);
            return;
        }

    }


}
