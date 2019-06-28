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
public class ProcessCaseServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
           // HttpSession session = request.getSession();

            String id = request.getParameter("caseid");
             String path = "";

            boolean x = DatabaseWrapper.checkFile(id, "report");
            boolean y = DatabaseWrapper.checkFile(id, "statement");
            System.out.println(y + " Status file" + x);
            if (x == true && y == true) {
                request.setAttribute("allSuc", "Case resolved succesfully");
                DatabaseWrapper.resolveCase(id);
                path = "/ViewCases?type=allocated";
                
            } else {
               request.setAttribute("errResolve", "Cannot resolve investigation still in progress");
               path = "/ViewCaseDetails?caseid="+id+"";
            }

           
            RequestDispatcher dispatcher = request.getRequestDispatcher(path);
            System.out.println(dispatcher);
            dispatcher.forward(request, response);

        } catch (SQLException ex) {
            Logger.getLogger(ProcessCaseServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
