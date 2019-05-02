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
    <!-- Material Design Bootstrap -->
    <link href="resources/css/mdb.min.css" rel="stylesheet">
    <script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
    <script> if ($('#results-table > tbody > tr').length === 0) {
            $('#results-table > thead > th').css('display', 'none');
        }</script>
</head>

<jsp:include page="UserHeader.jsp">
    <jsp:param name="title" value="Dash"/>
</jsp:include>
<!--Main Layout-->
<main>

    <div class="container-fluid " style="height: 100%; width: 1400px">

        <center><h3 ><strong>Your Cases</strong></h3></center>
        <div class="alert alert-warning alert-dismissible fade show" role="alert" style="width: 550px;">
            <p class="text-danger">${requestScope.errMessage}</p>

            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <table class="table table-bordered" style="position: relative; top: 10px" id="results-table" >
            <thead class="grey lighten-2" >
                <tr >

                    <th >case ID</th>
                    <th >Category</th>
                    <th >Status</th>
                    <th >Report date</th>
                    <th >Occurrence date</th>


                </tr>
            </thead>
            <tbody >

                <c:forEach items="${cases}" var="comp" >

                    <tr>
                        <td>${comp.id}</td> 
                        <td>${comp.category}</td>
                        <td>${comp.status}</td>
                        <td>${comp.dateReported}</td>


                        <td>${comp.occDate}</td>

                    </tr> 

                </c:forEach>    




            </tbody>
        </table>

    </div>








</main>
<jsp:include page="Footer.jsp"/>

