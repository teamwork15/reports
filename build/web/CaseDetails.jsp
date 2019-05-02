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
        <link href="resources/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="resources/css/mdb.min.css" rel="stylesheet">

    </head>
    <body>
        <div class="container text-center border border-light p-5" style="width: 900px;height: 920px;margin-top: 10px; color: #37474F">
            <!-- Default form register -->


            <p class="h4 mb-4"><strong>Case Details</strong></p>



            <div class="form-row mb-4">

                <!-- Case ID -->
                <div class="col">
                    <label class="col-label">Case ID:</label>
                    <i class="fas fa-user prefix grey-text"></i>
                    <input  name="newid" style="height: 50px" class="form-control validate"  value="${caseDet.id}" readonly>

                </div>

                <!-- ID-->
                <div class="col">
                    <label class="col-label"> Reporter ID:</label>
                    <i class="fas fa-user prefix grey-text"></i>
                    <input  style="height: 50px" class="form-control validate" value="${caseDet.reporterId}" readonly>
                </div>
            </div>

            <div class="form-row mb-4">

                <!--location-->
                <div class="col">
                    <label class="col-label">Location: </label>
                    <i class="fas fa-user prefix grey-text"></i>
                    <input   style="height: 50px" class="form-control validate" value="${caseDet.location}" readonly>
                </div>


                <!--Allocation date-->
                <div class="col">
                    <label class="col-label1">Allocation Date:</label>
                    <i class="fas fa-user prefix grey-text"></i>
                    <input    style="height: 50px" class="form-control validate" value="${caseDet.allocationDate}" readonly >
                </div>
            </div>

            <!-- second Name -->
            <div class="form-row mb-4">

                <div class="col">
                    <label class="col-label1">Case Category:</label>
                    <i class="fas fa-user prefix grey-text"></i>
                    <input style="height: 50px"  class="form-control validate"  value="${caseDet.category}" readonly>
                </div>

                <!-- Occurrence Date -->
                <div class="col">
                    <label class="col-label1">Occurrence Date:</label>
                    <i class="fas fa-user prefix grey-text"></i>

                    <input style="height: 50px" class="form-control validate" value="${caseDet.occDate}" readonly>
                </div>

            </div>
            <!-- Details -->
            <div class="form-row mb-4">
                <div class="form-group purple-border">
                    <label  class="row-label">Details:</label>
                    <textarea class="form-control" id="exampleFormControlTextarea4" rows="5" cols="100"  readonly>${caseDet.details}</textarea>
                </div>
            </div>
        </div>  

    </body>
</html>
