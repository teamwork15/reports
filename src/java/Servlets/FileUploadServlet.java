/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Data.DatabaseWrapper;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import org.apache.commons.fileupload.FileUploadException;

@WebServlet(description = "Upload File To The Server", urlPatterns = {"/fileUploadServlet"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, maxFileSize = 1024 * 1024 * 30, maxRequestSize = 1024 * 1024 * 50)
public class FileUploadServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    public static final String UPLOAD_DIR = "uploads";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            try {
                this.handleRequest(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(FileUploadServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (FileUploadException ex) {
            Logger.getLogger(FileUploadServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, FileUploadException, SQLException {
        String applicationPath = getServletContext().getRealPath("");
       
        String uploadPath = applicationPath + File.separator + UPLOAD_DIR;
       
        Part filePart = request.getPart("file");
        String filen = filePart.getSubmittedFileName();
        System.out.println(filen);
        System.out.println("working");
        
        File fileUploadDirectory = new File(uploadPath);
        if (!fileUploadDirectory.exists()) {
            fileUploadDirectory.mkdirs();
        }
        
        String type = request.getParameter("type");
        String id = request.getParameter("caseid");
      

        String fileName;
         String path = null;
         
        ModelUpload details = new ModelUpload();
        List<ModelUpload> fileList = new ArrayList<>();

        for (Part part : request.getParts()) {
            fileName = extractFileName(part);
           // details = new ModelUpload();
            details.setFileName(fileName);
             
             
            details.setFileSize(part.getSize() / 1024);
            try {
                part.write(uploadPath + File.separator + fileName);
                details.setUploadStatus("Success");
            } catch (IOException ioObj) {
                details.setUploadStatus("Failure : " + ioObj.getMessage());
            }
          fileName=details.getFileName();
        System.out.println(fileName);  
              
         System.out.println(path);   
        }
        
          path = uploadPath + File.separator + filen; 
        HttpSession session = request.getSession();


        
        
         String uploadedby = (String) session.getAttribute("name");
        DatabaseWrapper.saveFile(id, type, path, uploadedby);
        
      

        

       

       // DatabaseWrapper.saveFile(caseid, type, path, uploadedby);

        String message = "file uploaded successfully";
        request.setAttribute("m", message);
        request.setAttribute("caseid", id);
      
        RequestDispatcher dispatcher = request.getRequestDispatcher("/RetrieveOfficerAllocation?action=view");
        dispatcher.forward(request, response);

    }

    private String extractFileName(Part part) {
        String fileName = "";
        String contentDisposition = part.getHeader("content-disposition");
        String[] items = contentDisposition.split(";");
        for (String item : items) {
            if (item.trim().startsWith("filename")) {
                fileName = item.substring(item.indexOf("=") + 2, item.length() - 1);
            }
        }
        return fileName;
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
