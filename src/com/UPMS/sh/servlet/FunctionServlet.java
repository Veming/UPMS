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
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String method = request.getParameter("method");

        if (null != method){
            if ("delete".equals(method)){
                delete(request,response);
                return ;
            }
            else if ("add".equals(method)){
                add(request,response);
                return;
            }
            else if ("toAdd".equals(method)){
                toAdd(request,response);
                return;
            }
            else if ("searchByName".equals(method)){
                searchByName(request,response);
                return;
            }
            else if ("toEdit".equals(method)){
                toEdit(request,response);
                return;
            }
            else if ("edit".equals(method)){
                edit(request,response);
                return;
            }

        }
        search(request,response);
        return;
    }

    private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fname = request.getParameter("fname");
        int fid = Integer.parseInt(request.getParameter("fid"));
        String description = request.getParameter("description");

        Function function = new Function();
        function.setFid(fid);
        function.setFname(fname);
        function.setDescription(description);

        FunctionService fs = new FunctionService();
        fs.editFunctionByFid(function);

        response.sendRedirect("/function.html");
    }

    private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fname = request.getParameter("fname");
        String description = request.getParameter("description");

        Function function = new Function();
        function.setFname(fname);
        function.setDescription(description);

        FunctionService fs = new FunctionService();
        fs.insertFunction(function);

        response.sendRedirect("/function.html");

    }

    private void toEdit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int fid = Integer.parseInt(request.getParameter("fid"));
        FunctionService fs = new FunctionService();
        ArrayList<Function> functions = fs.getFunctionByFid(fid);
        Function function = functions.get(0);
        request.setAttribute("function",function);
        request.getRequestDispatcher(request.getContextPath()+"/editFunction.jsp").forward(request,response);
    }

    private void toAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher(request.getContextPath()+"/addFunction.jsp").forward(request,response);
    }

    private void searchByName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fname = request.getParameter("fname");
        FunctionService fs = new FunctionService();
        ArrayList<Function> functions = fs.getFunctionByName(fname);

        request.setAttribute("functions",functions);
        request.getRequestDispatcher(request.getContextPath()+"/functionList.jsp").forward(request,response);
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int fid = Integer.parseInt(request.getParameter("fid"));
        FunctionService fs = new FunctionService();
        fs.deleteFunctionByFid(fid);
        response.sendRedirect("/function.html");
    }

    private void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        FunctionService fs = new FunctionService();
        ArrayList<Function> functions=  fs.getFunctionAll();
        request.setAttribute("functions",functions);
        request.getRequestDispatcher(request.getContextPath()+"/functionList.jsp").forward(request,response);
    }
}
