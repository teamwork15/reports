<%-- 
    Document   : ViewResolvedCase
    Created on : Apr 2, 2019, 3:14:58 PM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Details</title>
    </head>
    <body>
        <jsp:include page="AdminHeader.jsp">
            <jsp:param name="title" value="case"/>
        </jsp:include>

        <main style="height: 950px;">

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
                        <input    style="height: 50px" class="form-control validate" value="${caseDet.officerAllocated}" readonly >
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


                <form  class=" container border border-light" action="DownloadFile"   style="height: 270px">
                    
                     <!-- Material inline 1 -->
                <div class="  form-check form-check-inline" >
                    <input type="radio" class="form-check-input" id="materialInline1" name="type" value="Report" required="">
                    <label class="form-check-label" for="materialInline1">Report</label>
                </div>

                <!-- Material inline 2 -->
                <div class="form-check form-check-inline" >
                    <input type="radio" class="form-check-input" id="materialInline2" name="type" value="Statement" required="">
                    <label class="form-check-label" for="materialInline2">Statement</label>
                </div>

                     <input  type="text"  name="caseid" hidden="true" value="${caseDet.id}"> 
                    <button type="submit" style="position: relative; top: 130px; right: 250px" class="btn-lg btn-primary"   >Download</button>
                </form>




            </div>
        </main>



        <jsp:include page="Footer.jsp"/>

