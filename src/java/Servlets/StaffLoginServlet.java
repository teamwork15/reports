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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author root
 */
@WebServlet(description = "Security Login Form")
public class StaffLoginServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String name = request.getParameter("username");
            String password = request.getParameter("password");
            
            
            UserClass usr = DatabaseWrapper.validateStaff(name, password);
            
            String role = usr.getUserType();
            System.out.println(role);
            
            String fname = usr.getFname();
            String sname = usr.getSname();
            HttpSession session = request.getSession();
            session.setAttribute("role", role);
            String fullName = fname + " " + sname;
            if(role == null){
                request.setAttribute("errMessage", "Invalid Credentials");
               request.getRequestDispatcher("/StaffLogin.jsp").forward(request, response);
            }else{

            switch (role) {
                case "Admin": {

                    session.setAttribute("name", name);
                    session.setAttribute("fullName", fullName);

                    request.getRequestDispatcher("/ViewProfile").forward(request, response);
                    break;
                }
                case "Officer": {
                    
                    session.setAttribute("name", name);
                    session.setAttribute("fullName", fullName);
                    request.getRequestDispatcher("/ViewProfile").forward(request, response);
                    break;
                }
                
                    
                    
            }
            }
            } catch (SQLException ex) {
            Logger.getLogger(StaffLoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        
        }
    }

}
