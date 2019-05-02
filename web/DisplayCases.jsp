<%-- 
    Document   : DisplayCases
    Created on : Feb 18, 2019, 4:02:11 AM
    Author     : luganu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View cases</title>
    </head>
    <body>
        <table class="table table-bordered">
            <th>Category</th>
            <th>Location</th>
            <th>Occ Date</th>
            <th> Date Reported</th>
            <th> Reporter Id</th>
            <th> Status</th>
            
            <tr>
                <c:forEach items="${list}" var="cases">
                <tr>
                    <td>${cases.category}</td>
                     <td>${cases.location}</td>
                      <td>${cases.occDate}</td>
                       <td>${cases.dateReported}</td>
                        <td>${cases.reporterId}</td>
                         <td>${cases.status}</td>
                </tr>
                </c:forEach>
            </tr>
        </table>
    </body>
</html>
