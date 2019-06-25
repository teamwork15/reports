<%-- 
    Document   : Reports
    Created on : Jun 22, 2019, 5:51:16 PM
    Author     : justus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="animsition">
        <div class="page-wrapper">
            <c:if test="${sessionScope.role == 'Admin'}">
                <jsp:include page="AdminHeader.jsp"/>
            </c:if>
            <c:if test="${sessionScope.role == 'Officer'}">
                <jsp:include page="OfficerHeader.jsp"/>
            </c:if>
           

            <div class="page-container">
                <jsp:include page="Navbar.jsp"/>

                <div class="main-content">
                    <div class="section__content section__content--p30" style="width: 70%">
                        <a href="PdfGen"> down</a>
                        
                    </div>
                </div>
            </div>
        </div>


    </body>
</html>
