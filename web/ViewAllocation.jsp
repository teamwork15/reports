<%-- 
    Document   : OfficerDash
    Created on : Mar 21, 2019, 4:28:48 PM
    Author     : luganu
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Officer Dash</title>

    </head>

    <body class="animsition">
        <div class="page-wrapper">
            <jsp:include page="OfficerHeader.jsp"/>

            <div class="page-container">
                <jsp:include page="Navbar.jsp"/>

                <div class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="row">
                            <div class="col" >
                                <div class="au-card recent-report">
                                    <div class="au-card-inner">
                                        <p class="h5 mb-4 text-center"><u>CASES</u></p>
                                        <div style="width: 100%; margin: auto">
                                            <table class="table table-bordered">
                                                <thead class="grey lighten-2">
                                                    <tr>

                                                        <th >case ID</th>


                                                        <th >Allocation date</th>

                                                   
                                                    </tr>
                                                </thead>
                                                <tbody >

                                                    <c:forEach items="${allocations}" var="comp" >
                                                   
                                                        <tr>
                                                            <td><a href="RetrieveOfficerAllocation?caseid=${comp.id}&action=view">${comp.id}</a></td>                         
                                                            <td>${comp.allocationDate}</td>
                                                            
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
