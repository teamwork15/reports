/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

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

/**
 *
 * @author luganu
 */
public class RegisterUserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String id = request.getParameter("id");
            String action = "register";
            boolean exist = DatabaseWrapper.verifyExisting(id, action);

            String password = request.getParameter("password");
            String cpassword = request.getParameter("cpassword");
            if(!(cpassword.equals(password))){
                 
                request.setAttribute("usrerr", "Confirm password and password don't match");
                String path = "UserRegister.jsp";
                RequestDispatcher dispatcher = request.getRequestDispatcher(path);
                dispatcher.forward(request, response);
            }else{
            if (exist == true) {
                System.out.println("error");
                request.setAttribute("usrerr", "User already exists");
                String path = "UserRegister.jsp";
                RequestDispatcher dispatcher = request.getRequestDispatcher(path);
                dispatcher.forward(request, response);
            } else {
                String fname = request.getParameter("fname");
                String sname = request.getParameter("sname");

                String email = request.getParameter("email");
                String phone = request.getParameter("phone");

                String category = "Reporter";
                request.setAttribute("errMessage", "Successfully registered");
                DatabaseWrapper.registerUser(id, password, email, category, fname, sname, phone);
                String path = "UserLogin.jsp";
                RequestDispatcher dispatcher = request.getRequestDispatcher(path);
                dispatcher.forward(request, response);
            }
            }

        } catch (SQLException ex) {
            Logger.getLogger(RegisterUserServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
