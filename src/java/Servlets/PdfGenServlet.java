/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Data.DatabaseConnection;
import com.lowagie.text.Cell;
import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Table;
import com.lowagie.text.pdf.PdfWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author justus
 */
public class PdfGenServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String str = "pdf";

        Connection conn;
        PreparedStatement ps ;
        ResultSet rs;
        try {
            Document document = new Document();
            if (str.equals("pdf")) {
                response.setContentType("application/pdf");
                PdfWriter.getInstance(document, response.getOutputStream());
            }
            conn = DatabaseConnection.getConnection();
            String query = "select * from cases where occdate = ?";          //Fetching data from table

            ps = conn.prepareStatement(query);                // executing query
            ps.setString(1, "2019-05-12");
            rs = ps.executeQuery();

            document.open();
            Table t = new Table(2);
            Cell c1 = new Cell();
            c1.add("name");
            t.addCell(c1);

            /* new paragraph instance initialized and add function write in pdf file*/
            document.add(new Paragraph("---------------------------------------------------------REPORT---------------------------------------------------------\n\n"));
            document.add(new Paragraph("                              CREATED REPORT BY-BULUMA\n\n"));
            document.add(new Paragraph("---------------------------------------------------------------------------------------------------------------------------------"));
            document.addCreationDate();

            while (rs.next()) {
                // fetch & writing records in pdf files
                document.add(new Paragraph("MSG_ID ::" + rs.getString(1) + "\nTIME ::" + rs.getString(5) + "\nNAME ::" + rs.getString(2) + "\nEMAIL ::" + rs.getString(3) + "\nMESSAGE ::" + rs.getString(4) + "\n\n"));
            }
            document.add(new Paragraph("---------------------------------------------------------PAGE NO::" + document.getPageNumber() + "------------------------------------------------------"));

            document.close(); //document instance closed
            conn.close();  //db connection close
        } catch (DocumentException | IOException | SQLException de) {
            System.err.println("document: " + de.getMessage());

        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
