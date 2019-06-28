package Servlets;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import Business.Complaint;
import Data.DatabaseWrapper;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;


import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
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
public class PdfGenServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("stopDate");
        

        String str = "pdf";
        try {
            Document document = new Document();
            if (str.equals("pdf")) {
                response.setContentType("application/pdf");
                PdfWriter.getInstance(document, response.getOutputStream());
            }
            ArrayList<Complaint> list1 = DatabaseWrapper.generateSummary("Theft", "reported", startDate, endDate);
            ArrayList<Complaint> list2 = DatabaseWrapper.generateSummary("Theft", "resolved", startDate, endDate);
            ArrayList<Complaint> list3 = DatabaseWrapper.generateSummary("Terrorism", "resolved", startDate, endDate);
            ArrayList<Complaint> list4 = DatabaseWrapper.generateSummary("Terrorism", "reported", startDate, endDate);
            ArrayList<Complaint> list5 = DatabaseWrapper.generateSummary("Fire", "reported", startDate, endDate);
            ArrayList<Complaint> list6 = DatabaseWrapper.generateSummary("Fire", "resolved", startDate, endDate);
            ArrayList<Complaint> list7 = DatabaseWrapper.generateSummary("other", "resolved", startDate, endDate);
            ArrayList<Complaint> list8 = DatabaseWrapper.generateSummary("other", "reported", startDate, endDate);

            document.open();
            HttpSession session = request.getSession();
            String name = (String) session.getAttribute("fullName");
            /* new paragraph instance initialized and add function write in pdf file*/
            document.add(new Paragraph("--------------------------------------------------------- MUIPS ---------------------------------------------------------\n"));
            document.add(new Paragraph("                                                 CASE SUMMARY  from" + "  " + startDate + " to" + "  " + endDate + "\n"));
            document.add(new Paragraph("                                                 CREATED BY: -" + name.toUpperCase() + "\n"));
            document.add(new Paragraph("---------------------------------------------------------------------------------------------------------------------------------\n\n"));
            Date date = new Date();

            //create a table
            PdfPTable table = new PdfPTable(9);
            table.setWidthPercentage(100);
            Font font = FontFactory.getFont(FontFactory.TIMES_BOLD, 12);
            PdfPCell cell = new PdfPCell(new Phrase("Location", font));

            cell.setBorder(Rectangle.BOX);
            table.addCell(cell);

            cell.setPhrase(new Phrase("Theft open ", font));
            table.addCell(cell);

            cell.setPhrase(new Phrase("Theft resolved", font));
            table.addCell(cell);

            cell.setPhrase(new Phrase("Terrorism resolved", font));
            table.addCell(cell);

            cell.setPhrase(new Phrase("Terrorism  open ", font));
            table.addCell(cell);

            cell.setPhrase(new Phrase("Fire open", font));
            table.addCell(cell);

            cell.setPhrase(new Phrase("Fire resolved", font));
            table.addCell(cell);

            cell.setPhrase(new Phrase("Other resolved", font));
            table.addCell(cell);

            cell.setPhrase(new Phrase("Other open", font));
            table.addCell(cell);

            for (int i = 0; i < list1.size(); i++) {
                cell.setPhrase(new Phrase(list1.get(i).getLocation()));
                table.addCell(cell);

                cell.setPhrase(new Phrase(String.valueOf(list1.get(i).getId())));
                table.addCell(cell);

                cell.setPhrase(new Phrase(String.valueOf(list2.get(i).getId())));
                table.addCell(cell);

                cell.setPhrase(new Phrase(String.valueOf(list3.get(i).getId())));
                table.addCell(cell);

                cell.setPhrase(new Phrase(String.valueOf(list4.get(i).getId())));
                table.addCell(cell);
                
                cell.setPhrase(new Phrase(String.valueOf(list5.get(i).getId())));
                table.addCell(cell);

                cell.setPhrase(new Phrase(String.valueOf(list6.get(i).getId())));
                table.addCell(cell);

                cell.setPhrase(new Phrase(String.valueOf(list7.get(i).getId())));
                table.addCell(cell);
                
                cell.setPhrase(new Phrase(String.valueOf(list8.get(i).getId())));
                table.addCell(cell);
                
               
            }

            cell.setPhrase(new Phrase("Total", font));
            // cell.setBorder(Rectangle.BOX);
            table.addCell(cell);

            cell.setPhrase(new Phrase());
            // cell.setBorder(Rectangle.BOX);
            table.addCell(cell);
            cell.setPhrase(new Phrase());
            // cell.setBorder(Rectangle.BOX);

            // cell.setBorder(Rectangle.BOX);
            table.addCell(cell);

            document.add(table);
            document.add(new Paragraph("\n"));

            String date1 = date.toString();
            document.add(new Paragraph("                                                                                                         " + date1 + "                                               "));
            // document.add(new Paragraph("---------------------------------------------------------PAGE NO::" + document.getPageNumber() + "------------------------------------------------------"));

            document.close(); //document instance closed

        } catch (DocumentException | IOException de) {
            System.err.println("document: " + de.getMessage());

        } catch (SQLException ex) {
            Logger.getLogger(PdfGenServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
