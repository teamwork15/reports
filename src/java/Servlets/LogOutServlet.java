/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author denis
 */
@WebServlet(name = "LogOutServlet", urlPatterns = {"/LogOutServlet"})
public class LogOutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        String url;
       
    
            url = "/Home.jsp";
            //create session 
        
        //inalidate
        session.invalidate();
        RequestDispatcher dispatch = request.getRequestDispatcher(url);
        dispatch.forward(request, response);

    }

}
