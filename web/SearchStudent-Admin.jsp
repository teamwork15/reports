<%-- 
    Document   : OfficerDash
    Created on : Mar 21, 2019, 4:28:48 PM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Admin Dash</title>
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="resources/css/mdb.min.css" rel="stylesheet">
</head>

<jsp:include page="AdminHeader.jsp">
    <jsp:param name="title" value="Dash"/>
</jsp:include>
<main>
    <div class="container-fluid  text-center" style="height: 700px">
        
        <div class="alert alert-warning alert-dismissible fade show" role="alert" style="width: 700px; margin-left: 200px">
            <p class="text-danger">${requestScope.stuerr}</p>
      
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>

        <form class="form-inline mr-auto" style="margin-left: 150px" action="SearchStudent" method="post">

            <input class="form-control" type="text" placeholder="Enter student number..." style="width: 900px;height: 50px " aria-label="Search " name="reg" required="true">
            <button class="btn blue-gradient btn-rounded btn-lg my-0" type="submit">Search</button>
        </form>
    </div>

</main>



<jsp:include page="Footer.jsp"/>

