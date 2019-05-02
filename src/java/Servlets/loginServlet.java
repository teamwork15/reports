/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Data.DatabaseWrapper;
import java.io.IOException;

import static java.lang.System.out;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class loginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        ResultSet rs;
        String userName = request.getParameter("name");
        String password = request.getParameter("password");
        session.setAttribute("name", userName);
        String userType ;

        try {

            rs = DatabaseWrapper.validate(userName, password);

            if (rs.next()) {

                userType = rs.getString(5); 
                String fname = rs.getString("fname");
                String sname = rs.getString("sname");
                String fullName = fname +" "+sname;
                 session.setAttribute("fullName",  fullName);
                session.setAttribute("role", userType);

                if (userType.equals("Reporter")) {

                    request.getRequestDispatcher("/ViewProfile").forward(request, response);

                }
            } else {
                request.setAttribute("errMessage", "Invalid credentials");
                getServletContext().getRequestDispatcher("/UserLogin.jsp").include(request, response);
            }

        } catch (SQLException sqe) {
        }

    }
}
