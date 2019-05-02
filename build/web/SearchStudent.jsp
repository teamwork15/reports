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
<main>
  <div class="container-fluid " style="height: 700px">

    <form class="form-inline mr-auto" style="margin-left: 150px" action="SearchStudent" method="post">
        <input class="form-control mr-sm-2" type="text" placeholder="Enter student number..." style="width: 900px; " aria-label="Search " name="reg" required="true">
  <button class="btn blue-gradient btn-rounded btn-sm my-0" type="submit">Search</button>
</form>
</div>

</main>


    
<jsp:include page="Footer.jsp"/>

