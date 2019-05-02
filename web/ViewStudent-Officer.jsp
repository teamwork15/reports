<%-- 
    Document   : OfficerDash
    Created on : Mar 21, 2019, 4:28:48 PM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Officer Dash</title>
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="resources/css/mdb.min.css" rel="stylesheet">
</head>

<jsp:include page="OfficerHeader.jsp">
    <jsp:param name="title" value="Dash"/>
</jsp:include>
<main style="height: 900px">

    <div class="container text-center border border-light p-5" style="width:700px;">
        <!-- Default form register -->


        <p class="h4 mb-4"><strong>Student Details</strong></p>
        
        
        <!-- ID-->
        <div class="form-row mb-4">

            <label> ID:</label>
            <i class="fas fa-user prefix grey-text"></i>
            <input   class="form-control validate"  value="${student[0]}" readonly>
        </div>
        
        <!--Name-->
        <div class="form-row mb-4">
            <label>Name:</label>
            <i class="fas fa-user prefix grey-text"></i>
            <input   class="form-control validate" value="${student[1]}" readonly>
        </div>


        <!-- Residence -->
        <div class="form-row mb-4">

            <label>Residence</label>
            <i class="fas fa-user prefix grey-text"></i>
            <input   class="form-control validate"  value="${student[3]}" readonly>
        </div>
        
        <!-- Course-->
        <div class="form-row mb-4">
            <label>Course:</label>
            <i class="fas fa-user prefix grey-text"></i>
            <input   class="form-control validate" value="${student[4]}" readonly>
        </div>
        
        <!-- Status-->
        <div class="form-row mb-4">
            <label>Academic Status:</label>
            <i class="fas fa-user prefix grey-text"></i>
            <input   class="form-control validate" value="${student[5]}" readonly>
        </div>
        
       <!-- phone number -->
        <div class="form-row mb-4">
            <label>Phone:</label>
            <i class="fas fa-user prefix grey-text"></i>
            <input   class="form-control validate"  value="${student[2]}" readonly>
        </div>
          
        <!-- E-mail -->
        <div class="form-row mb-4">
            <i class="fas fa-user prefix grey-text"></i>
            <label>Email:</label>
            <input  class="form-control validate" value="${student[6]}" readonly>
        </div>

        <!-- Search button -->
        <a href="SearchStudent.jsp"class="btn btn-blue" >Search Again</a>      
    </div>
</main>
            
<jsp:include page="Footer.jsp"/>

