<%-- 
    Document   : ViewUsers
    Created on : Apr 1, 2019, 3:26:36 PM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Users</title>
        <link href="resources/fonts/bootstrap.min.css rel="stylesheet">

    </head>


    <body class="animsition">
        <div class="page-wrapper">
            <jsp:include page="AdminHeader.jsp"/>

            <div class="page-container">
                <jsp:include page="Navbar.jsp"/>

                <div class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="row">
                            <div class="col" >
                                <div class="au-card recent-report">
                                    <div class="au-card-inner">
                                        <p class="h5 mb-4 text-center">USERS</p>
                                        <div style="width: 100%; margin: auto">
                                            
                                            <table class="table table-bordered">
                                                <thead class="grey lighten-2">
                                                    <tr>

                                                        <th scope="col">#</th>
                                                        <th scope="col">First Name</th>
                                                        <th scope="col">Second Name</th>
                                                        <th scope="col">Email</th>
                                                        <th scope="col">Phone</th>
                                                        <th scope="col">Category</th>
                                                        <th scope="col">Delete</th>

                                                    </tr>
                                                </thead>
                                                <tbody >

                                                    <c:forEach items="${userList}" var="usrlist" >

                                                        <tr>
                                                            <td>${usrlist.userId}</td>
                                                            <td>${usrlist.fname}</td> 
                                                            <td>${usrlist.sname}</td>
                                                            <td>${usrlist.emailaddress}</td>
                                                            <td>${usrlist.phone}</td>
                                                            <td>${usrlist.userType}</td>


                                                            <td>
                                                                <form action="UpdateUser">
                                                                    <input type="text" name="userid" hidden="true" value="${usrlist.userId}">
                                                                    <input type="text" name="action" hidden="true" value="delete">


                                                                    <input type="submit"  class="btn-sm btn-danger" value="Remove">
                                                                </form>
                                                            </td>
                                                        </tr> 

                                                    </c:forEach>    
                                                </tbody>
                                            </table>

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
</html>