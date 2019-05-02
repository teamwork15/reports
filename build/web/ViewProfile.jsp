<%-- 
    Document   : UserRegister
    Created on : Mar 21, 2019, 2:12:39 PM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>

        <link rel="stylesheet" href="resources/css/bootstrap.min.css">

        <link rel="stylesheet" href="resources/css/mdb.min.css">
        <link rel="stylesheet" href="resources/css/mdb.lite.min.css">
    </head>
    <body>
        <jsp:include page="OfficerHeader.jsp">
            <jsp:param name="title" value="Dash"/>
        </jsp:include>
        <main style="height: 750px">
            <jsp:include page="Profile.jsp">
            <jsp:param name="title" value="Dash"/>
        </jsp:include>
        </main>
                
        <jsp:include page="Footer.jsp"/>

    </body>

</html>
