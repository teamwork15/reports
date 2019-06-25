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
    <link href="resources/fonts/bootstrap.min.css" rel="stylesheet">



</head>
<body class="animsition">
    <div class="page-wrapper">
        <jsp:include page="OfficerHeader.jsp"/>

        <div class="page-container">
            <jsp:include page="Navbar.jsp"/>

            <div class="main-content">
                <div class="section__content section__content--p30" style="width: 70%">
                    <div class="row">
                        <div class="col" >
                            <div class="au-card recent-report">
                                <div class="au-card-inner">
                                    <p class="h4 text-center mb-4 "><u>Case details</u></p>
                                    <div class="container" style="width: 80%">
                                        <c:forEach items="${cases}" var="det" >


                                            <div class="form-row ">

                                                <!-- Case ID -->

                                                <label>Case ID:</label>

                                                <input  name="newid"  class="form-control validate"  value="${det.id}" readonly>

                                            </div>

                                            <!-- ID-->
                                            <div class="form-row ">
                                                <label > Reporter ID:</label>

                                                <input class="form-control validate" value="${det.reporterId}" readonly>
                                            </div>


                                            <div class="form-row ">


                                                <label>Location: </label>

                                                <input    class="form-control validate" value="${det.location}" readonly>
                                            </div>


                                            <!--Allocation date-->
                                            <div class="form-row ">
                                                <label >Allocation Date:</label>

                                                <input    class="form-control validate" value="${det.allocationDate}" readonly >
                                            </div>


                                            <!-- second Name -->
                                            <div class="form-row ">


                                                <label class="col-label1">Case Category:</label>

                                                <input   class="form-control validate"  value="${det.category}" readonly>
                                            </div>

                                            <!-- Occurrence Date -->
                                            <div class="form-row ">
                                                <label class="col-label1">Occurrence Date:</label>


                                                <input  class="form-control validate" value="${det.occDate}" readonly>


                                            </div>
                                            <!-- Details -->
                                            <div class="form-row ">
                                                <div class="form-group purple-border">
                                                    <label  class="row-label">Details:</label>
                                                    <textarea class="form-control" id="exampleFormControlTextarea4" rows="3" cols="100"  readonly>${det.details}</textarea>
                                                </div>
                                            </div>

                                            <form  class=" container border border-light" action="FileUpload" method="post" enctype="multipart/form-data" style="height: 230px">

                                                <p class=" " style="margin-top: 10px">Upload File</p>

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
                                                    <button type="submit" class="btn btn-dark"   >Upload</button>
                                                </div> 

                                                <div class="modal-footer justify-content-center">                         
                                                    <input  type="text"  name="caseid" hidden="true" value="${det.id}"> 
                                                    <div class="form-row">


                                                        <div class="col text-center">
                                                            <a type="button" class="btn btn-primary" href="RetrieveOfficerAllocation?action=allocation"  >Back</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <jsp:include page="Footer.jsp"/>
        </div>
    </div>
</body>








