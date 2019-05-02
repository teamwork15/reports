<%-- 
    Document   : OfficerDash
    Created on : Mar 21, 2019, 4:28:48 PM
    Author     : luganu
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>View Case</title>
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="resources/css/mdb.min.css" rel="stylesheet">
    <link href="resources/css/mycss.css" rel="stylesheet">
   
</head>

<jsp:include page="OfficerHeader.jsp">
    <jsp:param name="title" value="case"/>
</jsp:include>

<main style="height: 1300px;">
    <div class="container text-center border border-light p-5" style="width: 900px;height: 1150px;margin-top: 10px; color: #37474F">
       <div class="alert alert-warning alert-dismissible fade show" role="alert" style="width: 550px;">
            <p class="text-danger">${requestScope.m}</p>

            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>


        <p class="h4 mb-4"><strong>Case Details</strong></p>
        <hr>
         <c:forEach items="${cases}" var="det" >


        <div class="form-row mb-4">
           
            <!-- Case ID -->
            
                 <label>Case ID:</label>
                <i class="fas fa-user prefix grey-text"></i>
                <input  name="newid" style="height: 50px" class="form-control validate"  value="${det.id}" readonly>
                   
            </div>

            <!-- ID-->
            <div class="form-row mb-4">
                <label > Reporter ID:</label>
                <i class="fas fa-user prefix grey-text"></i>
                <input  style="height: 50px" class="form-control validate" value="${det.reporterId}" readonly>
            </div>
       

        <div class="form-row mb-4">

           
                <label>Location: </label>
                <i class="fas fa-user prefix grey-text"></i>
                <input   style="height: 50px" class="form-control validate" value="${det.location}" readonly>
            </div>


            <!--Allocation date-->
           <div class="form-row mb-4">
                <label >Allocation Date:</label>
                <i class="fas fa-user prefix grey-text"></i>
                <input    style="height: 50px" class="form-control validate" value="${det.allocationDate}" readonly >
            </div>
       

        <!-- second Name -->
        <div class="form-row mb-4">

            <div class="col">
                <label class="col-label1">Case Category:</label>
                <i class="fas fa-user prefix grey-text"></i>
                <input style="height: 50px"  class="form-control validate"  value="${det.category}" readonly>
            </div>

            <!-- Occurrence Date -->
            <div class="col">
                <label class="col-label1">Occurrence Date:</label>
                <i class="fas fa-user prefix grey-text"></i>

                <input style="height: 50px" class="form-control validate" value="${det.occDate}" readonly>
            </div>

        </div>
        <!-- Details -->
        <div class="form-row mb-4">
            <div class="form-group purple-border">
                <label  class="row-label">Details:</label>
                <textarea class="form-control" id="exampleFormControlTextarea4" rows="3" cols="100"  readonly>${det.details}</textarea>
            </div>
        </div>
         
            <form  class=" container border border-light" action="FileUpload" method="post" enctype="multipart/form-data" style="height: 230px">
                
                 <p class="h4 mb-4 " style="margin-top: 10px"><strong>Upload File</strong></p>
                 
                <!-- Material inline 1 -->
                <div class="  form-check form-check-inline mb-4" >
                    <input type="radio" class="form-check-input" id="materialInline1" name="type" value="Report" required="">
                    <label class="form-check-label" for="materialInline1">Report</label>
                </div>

                <!-- Material inline 2 -->
                <div class="form-check form-check-inline" >
                    <input type="radio" class="form-check-input" id="materialInline2" name="type" value="Statement" required="">
                    <label class="form-check-label" for="materialInline2">Statement</label>
                </div>

                 
                <div class="file-upload-wrapper " style="margin-bottom: 10px">
                       
                    <input type="file" name="file" id="input-file-now" class="file-upload" accept=".pdf, .docx, .doc"/>
                    </div> 
                
                <div class="modal-footer justify-content-center">                         
                    <input  type="text"  name="caseid" hidden="true" value="${det.id}"> 
                    <div class="form-row">
                    <button type="submit" class="btn btn-primary"   >Upload</button>
                    
                    <div class="col text-center">
                    <a type="button" class="btn btn-primary" href="RetrieveOfficerAllocation"  >Back</a>
                    </div>
                    </div>
                </div>
           </form>
                    </c:forEach>
        <hr>
    
                
</main>



<jsp:include page="Footer.jsp"/>

