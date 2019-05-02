/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Business.Complaint;
import Data.DatabaseWrapper;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author luganu
 */
public class ViewCasesServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String type = request.getParameter("type");
         //System.out.println(type);
         ArrayList<Complaint> list = null;
         
        try {
           
            
            switch (type) {
                case "unallocated":
                    list = DatabaseWrapper.viewCases("reported");
                    break;
                case "allocated":
                   list =  DatabaseWrapper.viewCases(type);
                   
                    break;
                case "resolved":
                    list = DatabaseWrapper.viewCases(type);
                    break;
                
            }
           
        } catch (SQLException ex) {
            Logger.getLogger(ViewCasesServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
         request.setAttribute("caseList", list);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/AdminViewCases.jsp");
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
