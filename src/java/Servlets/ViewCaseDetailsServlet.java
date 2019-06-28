/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Business.Complaint;
import Data.DatabaseWrapper;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author luganu
 */
public class ViewCaseDetailsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = null;
        try {
            String caseid;
            HttpSession session = request.getSession();
            caseid = request.getParameter("caseid");

            if (caseid == null) {
                caseid = (String) session.getAttribute("caseid");
            }

            boolean repExists = DatabaseWrapper.checkFile(caseid, "report");
            boolean statExists = DatabaseWrapper.checkFile(caseid, "statement");
            System.out.println("status" + repExists + statExists);

            if ((repExists == true) && (statExists == false)) {
                request.setAttribute( "status","Report uploaded");
            } else if ((repExists == false) && (statExists == true)) {
                request.setAttribute("status","Statement uploaded");
            } else if ((repExists == true) && (statExists == true)) {
                request.setAttribute("status", "Completed");
            } else {
                request.setAttribute( "status", "In progress");
            }

            ArrayList userList;

            Complaint caseDet = DatabaseWrapper.viewCaseDetails(caseid);

            switch (caseDet.getStatus()) {
                case "resolved":
                    path = "/ViewResolvedCase.jsp";
                    break;
                case "allocated":
                    path = "/ViewAllocatedCase.jsp";
                    break;
                case "reported":
                    path = "/ViewUnallocatedCase.jsp";
                    break;
            }
            request.setAttribute("caseDet", caseDet);

            userList = DatabaseWrapper.fetchUserListFromDB();
            request.setAttribute("list", userList);

        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(ViewCaseDetailsServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(path);
        dispatcher.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
