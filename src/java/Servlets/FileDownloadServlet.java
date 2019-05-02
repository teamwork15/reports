/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Data.DatabaseWrapper;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
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
 * @author user
 */
public class FileDownloadServlet extends HttpServlet {

       private static final long serialVersionUID = 1L;

	public static int BUFFER_SIZE = 1024 * 100;
	public static final String UPLOAD_DIR = "uploads";

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           try {
               this.handleRequest(request,response);
           } catch (SQLException ex) {
               Logger.getLogger(FileDownloadServlet.class.getName()).log(Level.SEVERE, null, ex);
           }
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    public void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {

		
		String caseId = request.getParameter("caseid");
                String type = request.getParameter("type");
                
                boolean exists = DatabaseWrapper.checkFile(caseId, type);
                if(exists == false){
                    request.setAttribute("caseid", caseId);
                    request.setAttribute("errMsg", "File not yet uploaded");
                    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ViewCaseDetails");
            dispatcher.forward(request, response);
                   
                }else{
                String filePath = DatabaseWrapper.retrievePath(caseId, type);
                System.out.println(filePath);
  		File file = new File(filePath);
		OutputStream outStream = null;
		FileInputStream inputStream = null;

		if (file.exists()) {

			
			String mimeType = "application/octet-stream";
			response.setContentType(mimeType);

			
			String headerKey = "Content-Disposition";
			String headerValue = String.format("attachment; filename=\"%s\"", file.getName());
			response.setHeader(headerKey, headerValue);

			try {

				
				outStream = response.getOutputStream();
				inputStream = new FileInputStream(file);
				byte[] buffer = new byte[BUFFER_SIZE];
				int bytesRead;

				
				while ((bytesRead = inputStream.read(buffer)) != -1) {
					outStream.write(buffer, 0, bytesRead);
				}				
			} catch(IOException ioExObj) {
				System.out.println("Exception While Performing The I/O Operation?= " + ioExObj.getMessage());
			} finally {				
				if (inputStream != null) {
					inputStream.close();
				}

				outStream.flush();
				if (outStream != null) {
					outStream.close();
				}
			}
		} else {

			
			response.setContentType("text/html");

			
                }	
		}}
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}