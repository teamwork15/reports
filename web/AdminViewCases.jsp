<%-- 
    Document   : OfficerDash
    Created on : Mar 21, 2019, 4:28:48 PM
    Author     : luganu
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cases</title>
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
                                         <c:if test="${requestScope.allSuc != null}">
                                                    <div class="alert alert-warning alert-dismissible fade show text-center" role="alert" style="margin:auto; width: 400px">
                                                        <strong>${requestScope.allSuc}</strong> 
                                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                </c:if>
                                        <p class="h5 mb-4 text-center"><u>CASES</u></p>
                                        <div style="width: 100%; margin: auto">

                                            

                                            <table class="table table-bordered">
                                                <thead class="grey light-blue" >
                                                    <tr>

                                                        <th>case ID</th>
                                                        <th >Category</th>
                                                        <th >Occurrence date</th>
                                                        <th >Report date</th>
                                                        <th >Status</th>
                                                        
                                                        
                                                   

                                                    </tr>
                                                </thead>
                                                <tbody >

                                                    <c:forEach items="${caseList}" var="comp" >

                                                        <tr>
                                                            <td><a href="ViewCaseDetails?caseid=${comp.id}&action=view">${comp.id}</a></td> 
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
</html>
