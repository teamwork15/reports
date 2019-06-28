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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author denis
 */
public class ChangePasswordServlet extends HttpServlet {

    protected void doGET(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            HttpSession session = request.getSession();
            String username = (String) session.getAttribute("name");
            Boolean status;
            String oldpwd = request.getParameter("oldPass");

            String newpswd = request.getParameter("newPass");

            String confpswd = request.getParameter("confPass");

            String path = null;
            String role = (String) session.getAttribute("role");
            System.out.println(role);
            switch (role) {
                case "Admin":
                    path = "/ChangePassword.jsp";

                    break;
                case "Officer":
                    path = "/ChangePassword.jsp";

                    break;
                case "Reporter":
                    path = "/ChangePassword.jsp";

                    break;

            }

            status = DatabaseWrapper.changePass(username, role, newpswd, oldpwd);
            System.out.println(status);
            if (newpswd.equals(" ") || confpswd.equals(" ")) {

                getServletContext().getRequestDispatcher(path).forward(request, response);

            } else if (!newpswd.equals(confpswd)) {

                request.setAttribute("errpass", "New password and confirm password do not match.");
                getServletContext().getRequestDispatcher(path).forward(request, response);
            } else if (status == false) {

                request.setAttribute("errpass", "Incorrect old password.");
                getServletContext().getRequestDispatcher(path).forward(request, response);
                       } else if (newpswd.equals(confpswd) && (status == true)) {

                request.setAttribute("errpass", "Password Successfully Changed");
                getServletContext().getRequestDispatcher(path).forward(request, response);

            }
        } catch (SQLException ex) {
            Logger.getLogger(ChangePasswordServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
