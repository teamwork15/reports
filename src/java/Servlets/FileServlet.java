/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.DataInputStream;
import java.io.File;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.ResourceBundle;
import java.util.StringTokenizer;
import javax.servlet.ServletContext;
import javax.servlet.ServletOutputStream;

/**
 *
 * @author justus
 */
public class FileServlet extends HttpServlet implements javax.servlet.Servlet {

    static final long serialVersionUID = 1L;
    String image_name = "";
    ResourceBundle props = null;
    String filePath = "";
    private static final int BUFSIZE = 100;
    private ServletContext servletContext;

    public FileServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("FROM SERVLET");
        sendImage(getServletContext(), request, response);
    }

    public void sendImage(ServletContext servletContext,
            HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.servletContext = servletContext;
        String reqUrl = request.getRequestURL().toString();
        StringTokenizer tokens = new StringTokenizer(reqUrl, "/");
        int noOfTokens = tokens.countTokens();
        String tokensString[] = new String[noOfTokens];
        int count = 0;
        while (tokens.hasMoreElements()) {
            tokensString[count++] = (String) tokens.nextToken();
        }
        String folderName = tokensString[noOfTokens - 2];
        image_name = tokensString[noOfTokens - 1];
        
        String fullFilePath = request.getParameter("path");
        System.out.println("FULL PATH :: " + fullFilePath);
// doShowImageOnPage(fullFilePath, request, response);
        doShowImageOnPage(fullFilePath, request, response);
    }

    private void doShowImageOnPage(String fullFilePath,
            HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        response.reset();
        response.setHeader("Content-Disposition", "inline");
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Expires", "0");
        response.setContentType("image/jpg");
        byte[] image = getImage(fullFilePath);
        try (OutputStream outputStream = response.getOutputStream()) {
            outputStream.write(image);
        }
    }

    private void doDownload(String filePath, HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        File fileName = new File(filePath);
        int length = 0;
// ServletContext context = getServletConfig().getServletContext();
        try (ServletOutputStream outputStream = response.getOutputStream()) {
            // ServletContext context = getServletConfig().getServletContext();
            ServletContext context = servletContext;
            String mimetype = context.getMimeType(filePath);
            response.setContentType((mimetype != null) ? mimetype
                    : "application/octet-stream");
            response.setContentLength((int) fileName.length());
            response.setHeader("Content-Disposition", "attachment; filename=\""
                    + image_name + "\"");
            byte[] bbuf = new byte[BUFSIZE];
            DataInputStream in = new DataInputStream(new FileInputStream(fileName));
            while ((in != null) && ((length = in.read(bbuf)) != -1)) {
                outputStream.write(bbuf, 0, length);
            }
            in.close();
            outputStream.flush();
        }
    }

    private byte[] getImage(String filename) {
        byte[] result = null;
        String fileLocation = filename;
        File f = new File(fileLocation);
        result = new byte[(int) f.length()];
        try {
            FileInputStream in = new FileInputStream(fileLocation);
            in.read(result);
        } catch (IOException ex) {
            System.out.println("GET IMAGE PROBLEM :: " + ex);
        }
        return result;
    }
}
