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
        <!-- Custom fonts for this template -->
        
        <link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css">
        
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
                    <div class="section__content section__content--p30" style="width: 75%">
                        <div class="row">
                            <div class="col" >
                                <div class="au-card recent-report">
                                    <div class="au-card-inner">
                                        <form action="PdfGen" method="post">
                                        <div class="row" style="margin-left: 10px">
                                            <div class="col" >
                                                <label>Date from:</label>
                                                <input type="text" id="datepicker"  class="form-control validate" name="startDate"  required >
                                            </div>
                                            <div class="col" >
                                                <label>To:</label>
                                                <input type="text" id="datepicker1"  class="form-control validate" name="stopDate"  required>
                                            </div>
                                        </div>
                                        <div class="col " style="margin-top: 30px; margin-left: 10px" >
                                            
                                            <input type="submit" class="btn btn-primary" value="Generate report" >
                                        </div>
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script type="text/javascript">
            $(function () {
                $("#datepicker").datepicker({maxDate: "D", dateFormat: "dd-mm-yy"});
                $("#datepicker1").datepicker({maxDate: "1D", dateFormat: "dd-mm-yy"});
            });
        </script>
    </body>
</html>
