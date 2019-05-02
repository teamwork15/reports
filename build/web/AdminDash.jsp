<%-- 
    Document   : Admin
    Created on : Mar 21, 2019, 6:45:43 PM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dash</title>
        <link rel="stylesheet" href="resources/css/bootstrap.min.css">
        
        <link rel="stylesheet" href="resources/css/mdb.min.css">



    </head>
    <jsp:include page="AdminHeader.jsp">
        <jsp:param name="title" value="Admin"/>
    </jsp:include>
    
    <main style="height: 750px">
        <jsp:include page="Profile.jsp">
            <jsp:param name="title" value="Dash"/>
        </jsp:include>    
    </main>
    
    
<jsp:include page="Footer.jsp"/>
