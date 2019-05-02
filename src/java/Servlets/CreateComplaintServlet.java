/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

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
public class CreateComplaintServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        HttpSession session = request.getSession();

        if (action.equals("add")) {
            String category = request.getParameter("cat");
            String location = request.getParameter("location");
            String details = request.getParameter("cased");
            String occDate = request.getParameter("occdate");
            String occtime = request.getParameter("occtime");
            String reporterId = (String) session.getAttribute("name");
            System.out.println("working");
            request.setAttribute("repsucc", "Report successfully made");
            DatabaseWrapper.createNewComplaint(reporterId, location, category, occDate, occtime, details, "reported");
             RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ReportCase.jsp");
                dispatcher.forward(request, response);
                
        } else if (action.equals("view")) {
            try {
                ArrayList caseList = DatabaseWrapper.viewComplaints();
                request.setAttribute("list", caseList);
                String url = "/DisplayCases.jsp";

                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
                dispatcher.forward(request, response);

            } catch (SQLException ex) {
                Logger.getLogger(CreateComplaintServlet.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

}
