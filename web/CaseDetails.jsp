<%-- 
    Document   : CaseDetails
    Created on : Apr 2, 2019, 3:04:19 PM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="resources/fonts/bootstrap.min.css" rel="stylesheet">



    </head>
    <body class="animsition">
        <div class="page-wrapper">
            <jsp:include page="AdminHeader.jsp"/>

            <div class="page-container">
                <jsp:include page="Navbar.jsp"/>

                <div class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="row">
                            <div class="col" >
                                <div class="au-card recent-report">
                                    <div class="au-card-inner">


                                        <div class="container " style="width:70%;height: 700px;">
                                            <!-- Default form register -->
                                            <p class="h4 mb-4 text-center "><u>Case Details</u></p>

                                            <!-- Case ID -->
                                            <div class="row">
                                                <label class="col-label">Case ID:</label>

                                                <input  name="newid"  class="form-control validate"  value="${caseDet.id}" readonly>

                                            </div>

                                            <!-- ID-->
                                            <div class="row">
                                                <label class="col-label"> Reporter ID:</label>

                                                <input   class="form-control validate" value="${caseDet.reporterId}" readonly>
                                            </div>
                                        </div>

                                        <div class="form-row">

                                            <!--location-->
                                            <div class="col">
                                                <label class="col-label">Location: </label>

                                                <input   class="form-control validate" value="${caseDet.location}" readonly>
                                            </div>


                                            <!--Allocation date-->
                                            <div class="row">
                                                <label class="col-label1">Allocation Date:</label>

                                                <input     class="form-control validate" value="${caseDet.allocationDate}" readonly >
                                            </div>
                                        </div>

                                        <!-- second Name -->
                                        <div class="form-row ">

                                            <div class="col">
                                                <label class="col-label1">Case Category:</label>

                                                <input   class="form-control validate"  value="${caseDet.category}" readonly>
                                            </div>

                                            <!-- Occurrence Date -->
                                            <div class="col">
                                                <label class="col-label1">Occurrence Date:</label>


                                                <input  class="form-control validate" value="${caseDet.occDate}" readonly>
                                            </div>

                                        </div>
                                        <!-- Details -->
                                        <div class="form-row ">
                                            <div class="form-group purple-border">
                                                <label  class="row-label">Details:</label>
                                                <textarea class="form-control" id="exampleFormControlTextarea4" rows="5" cols="100"  readonly>${caseDet.details}</textarea>
                                            </div>
                                        </div>
                                        <hr>
                                    </div>  

                                    </body>
                                    </html>
