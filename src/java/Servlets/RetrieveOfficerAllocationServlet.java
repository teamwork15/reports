/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Business.Complaint;
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
public class RetrieveOfficerAllocationServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        
        String path = null;

        if ("view".equals(action)) {
            try {
                
                viewCase(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(RetrieveOfficerAllocationServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            path = "/ViewCase.jsp";
            

        } else if(action.equals("allocation")) {

            try {
                viewAllocation(request, response);
                path = "/ViewAllocation.jsp";
            } catch (SQLException ex) {
                Logger.getLogger(RetrieveOfficerAllocationServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(path);
      
        dispatcher.forward(request, response);
        
    }

    public void viewCase(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        Integer caseId;
                caseId = Integer.parseInt(request.getParameter("caseid"));
        
        if(caseId == null){
            caseId = (Integer) request.getAttribute("caseid");
        }
        
        Complaint comp ;
        
        ArrayList<Complaint> allocation ;
        
        ArrayList<Complaint> cases = new ArrayList();
        HttpSession session = request.getSession();
        String officerId = (String) session.getAttribute("name");
        allocation = DatabaseWrapper.viewAllocations(officerId);
        for (int i = 0; i < allocation.size(); i++) {
            comp = (Complaint) allocation.get(i);
            if (caseId == (comp.getId())) {
                cases.add(comp);
               
            }
            
        }
        System.out.println(cases);
        request.setAttribute("cases", cases);

    }

    public void viewAllocation(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        ArrayList<Complaint> allocation ;
       
        HttpSession session = request.getSession();
        String officerId = (String) session.getAttribute("name");
        allocation = DatabaseWrapper.viewAllocations(officerId);
        request.setAttribute("allocations", allocation);
        System.out.println(allocation);
    }
     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    
    }
}
