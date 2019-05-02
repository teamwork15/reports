/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Business.UserClass;
import Data.DatabaseWrapper;
import java.io.IOException;
import java.sql.SQLException;
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
public class ViewProfileServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            String name = (String) session.getAttribute("name");
            String role = (String) session.getAttribute("role");
            System.out.println(  "Profile" + role) ;
            String path = null;
            
            
            UserClass usr = DatabaseWrapper.retriveUserProfile(name, role);
            request.setAttribute("user", usr);
            System.out.println(usr.getUserId());
            
            switch (role) {
                case "Officer":
                    path = "/OfficerDash.jsp";
                    break;
                case "Reporter":
                    path = "/ReporterDash.jsp";
                    break;
                case "Admin":
                    path = "/AdminDash.jsp";
                    break;
                
            }
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(path);
            
            dispatcher.forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ViewProfileServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request,response);
    }

}
