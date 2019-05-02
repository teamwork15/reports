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
    <title>Officer Dash</title>
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="resources/css/mdb.min.css" rel="stylesheet">
</head>

<jsp:include page="AdminHeader.jsp">
    <jsp:param name="title" value="Dash"/>
</jsp:include>
<!--Main Layout-->
<main>

    <div class="container-fluid  " style="height: 700px; width: 1550px">
        
        <center><h3><strong>Cases</strong></h3></center>

                <table class="table table-bordered" style="position: relative; top: 10px">
                    <thead class="grey lighten-2">
                        <tr>
                            
                            <th scope="col">case ID</th>
                            <th scope="col">Report date</th>
                            <th scope="col">Status</th>
                            <th scope="col">Category</th>
                            <th scope="col">Occurrence date</th>
                             <th scope="col"></th>

                        </tr>
                    </thead>
                    <tbody >

                        <c:forEach items="${caseList}" var="comp" >

                            <tr>
                              <td>${comp.id}</td> 
                              <td>${comp.dateReported}</td>
                              <td>${comp.status}</td>
                               <td>${comp.category}</td>
                               <td>${comp.occDate}</td>
                                <td>
                                    <form action="ViewCaseDetails">
                                        <input type="text" name="caseid" hidden="true" value="${comp.id}">
                                        <input type="text" name="action" hidden="true" value="view">
                                        <input type="submit"  class=" btn btn-sm  btn-blue" value="view">
                                    </form>
                                </td>
                            </tr> 

                        </c:forEach>    



                      
                    </tbody>
                </table>

            </div>
        

  

    



</main>
<jsp:include page="Footer.jsp"/>

