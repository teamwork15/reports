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
    <title>User view cases</title>
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">


</head>

<body class="animsition">
    <div class="page-wrapper">
        <jsp:include page="UserHeader.jsp"/>

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


                                        <table class="table table-bordered" style="position: relative; top: 10px" id="results-table" >
                                            <thead class="grey lighten-2" >
                                                <tr >

                                                    <th >case ID</th>
                                                    <th >Category</th>
                                                  <th >Occurrence date</th>
                                                    <th >Report date</th>
                                                    
                                                      <th >Status</th>


                                                </tr>
                                            </thead>
                                            <tbody >

                                                <c:forEach items="${cases}" var="comp" >

                                                    <tr>
                                                        <td>${comp.id}</td> 
                                                        <td>${comp.category}</td>
                                                            <td>${comp.occDate}</td>
                                                       
                                                        <td>${comp.dateReported}</td>


                                                    
                                                         <td>${comp.status}</td>

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


