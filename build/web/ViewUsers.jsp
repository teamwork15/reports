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
        <link href="resources/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="resources/css/mdb.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    
<jsp:include page="AdminHeader.jsp">
    <jsp:param name="title" value="Dash"/>
</jsp:include>
    
    <div class="container-fluid " style=" position: relative; top: 50px; height: 700px; width: 1650px">
        <div >
            <div class="">

                <table class="table table-bordered">
                    <thead class="grey lighten-2">
                        <tr>

                            <th scope="col">ID</th>
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
                                    
                                   
                                    <input type="submit"  class="btn-sm btn-red" value="Remove">
                                </form>
                            </td>
                        </tr> 

                    </c:forEach>    




                    </tbody>
                </table>

            </div>
        </div>

    </div>





</main>
<jsp:include page="Footer.jsp"/>
