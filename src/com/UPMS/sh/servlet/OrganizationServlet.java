package com.UPMS.sh.servlet;

import com.UPMS.sh.beans.Organization;
import com.UPMS.sh.service.OrganizationService;

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
@WebServlet("/organization.html")
public class OrganizationServlet extends HttpServlet {
    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf-8");
        String method = request.getParameter("method");

        if (null != method){
            if ("toEdit".equals(method)){
                toEdit(request,response);
            }
            if ("edit".equals(method)){
                edit(request,response);
            }

        }
        searchAll(request,response);
        return;
    }

    private void edit(HttpServletRequest request, HttpServletResponse response) {

    }

    private void toEdit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        OrganizationService os = new OrganizationService();

        ArrayList<Organization> organizations = os.getOranizationAll();
        Organization organization = organizations.get(0);
        request.setAttribute("organization",organization);
        request.getRequestDispatcher(request.getContextPath()+"editOperationInfo.jsp").forward(request,response);
    }



    private void updateOrg(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int oid = Integer.parseInt(request.getParameter("oid"));
        String oname = request.getParameter("oname");
        String  description = request.getParameter("description");
        int available = Integer.parseInt(request.getParameter("available"));

        Organization organization = new Organization();
        organization.setOid(oid);
        organization.setOname(oname);
        organization.setDescription(description);
        organization.setAvailable(available);

        OrganizationService os = new OrganizationService();
        os.insertOrganization(organization);
        response.sendRedirect("/organization.html");
    }


    private void searchAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrganizationService os = new OrganizationService();

        ArrayList<Organization> organizations = os.getOranizationAll();
        Organization organization = organizations.get(0);
        request.setAttribute("organization",organization);
        request.getRequestDispatcher(request.getContextPath()+"/operationInfo.jsp").forward(request,response);
    }
}
