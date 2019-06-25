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
public class SearchStudentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            String role = (String) session.getAttribute("role");
            ArrayList studList ;
            String url ;

            String regNo = request.getParameter("reg");

            studList = DatabaseWrapper.retriveStudentProfile(regNo);
            if (studList.isEmpty()) {
               
                    url = "/SearchStudent.jsp";
              
            } else {

                request.setAttribute("student", studList);
            
                    url = "/ViewStudent.jsp";
              
                
                

            }
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(SearchStudentServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
