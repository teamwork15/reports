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
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author root
 */
@WebServlet(description = "Download File From The Server", urlPatterns = {"/downloadServlet"})
public class DownloadFileServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public static int BUFFER_SIZE = 1024 * 100;
    public static final String UPLOAD_DIR = "C:\\apache-tomcat-8.5.5\\webapps\\newdata";

    /**
     * *** This Method Is Called By The Servlet Container To Process A 'GET'
     * Request
     *
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException ****
     */
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            handleRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(DownloadFileServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {

        /**
         * *** Get The Absolute Path Of The File To Be Downloaded ****
         */
        
        String id = request.getParameter("caseid");
        String type = request.getParameter("type");
                //applicationPath = getServletContext().getRealPath(""),
                //downloadPath =  File.separator + UPLOAD_DIR,
       String filePath = DatabaseWrapper.retrievePath(id,type);

        File file = new File(filePath);
        OutputStream outStream = null;
        FileInputStream inputStream = null;

        if (file.exists()) {

            /**
             * ** Setting The Content Attributes For The Response Object ***
             */
            String mimeType = "application/octet-stream";
            response.setContentType(mimeType);

            /**
             * ** Setting The Headers For The Response Object ***
             */
            String headerKey = "Content-Disposition";
            String headerValue = String.format("attachment; filename=\"%s\"", file.getName());
            response.setHeader(headerKey, headerValue);

            try {

                /**
                 * ** Get The Output Stream Of The Response ***
                 */
                outStream = response.getOutputStream();
                inputStream = new FileInputStream(file);
                byte[] buffer = new byte[BUFFER_SIZE];
                int bytesRead = -1;

                /**
                 * ** Write Each Byte Of Data Read From The Input Stream Write
                 * Each Byte Of Data Read From The Input Stream Into The Output
                 * Stream ***
                 */
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outStream.write(buffer, 0, bytesRead);
                }
            } catch (IOException ioExObj) {
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

            /**
             * *** Set Response Content Type ****
             */
            response.setContentType("text/html");

            /**
             * *** Print The Response ****
             */
            response.getWriter().println("<h3>File  Is Not Present .....!</h3>");
        }
    }
}
