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
    
    <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
          rel = "stylesheet">
    <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

    <!-- Javascript -->
    <script>
        $(function () {
            $("#datepicker-12").datepicker();
            $("#datepicker-12").datepicker("setDate", "10w+1");
        });
    </script>

</head>

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
          

    
        <form  class=" container border border-light" action="AllocateCase"   style="height: 270px">
            <div class="modal-footer justify-content-center"> 
                <select name="officer" style="width: 250px; height: 30px">
                    <c:forEach items="${list}" var="name" >

                        <option value="${name.userId}"   >${name.fname}</option>

                    </c:forEach>
                </select>
                 

                <input  type="text"  name="caseid" hidden="true" value="${caseDet.id}"> 
                <button type="submit" style="position: relative; top: 130px; right: 250px" class="btn-lg btn-primary"   >Allocate</button>

            </div>

        </form>

    </div>
                
</main>



<jsp:include page="Footer.jsp"/>

