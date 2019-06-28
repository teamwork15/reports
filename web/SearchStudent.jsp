<%-- 
    Document   : OfficerDash
    Created on : Mar 21, 2019, 4:28:48 PM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Officer Dash</title>
    <link href="resources/fonts/bootstrap.min.css" rel="stylesheet">

</head>



<body class="animsition">
    <div class="page-wrapper">
        <c:if test="${sessionScope.role == 'Admin'}">
            <jsp:include page="AdminHeader.jsp"/>
        </c:if>
        <c:if test="${sessionScope.role == 'Officer'}">
            <jsp:include page="OfficerHeader.jsp"/>
        </c:if>

        <div class="page-container">
            <jsp:include page="Navbar.jsp"/>

            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="row">
                        <div class="col" >
                            <div class="au-card recent-report">
                                <div class="au-card-inner">
                                    <c:if test="${requestScope.stdmsg != null}">
                                        <div class="alert alert-warning alert-dismissible fade show text-center" role="alert" style="margin:auto; width: 400px">
                                            <strong>${requestScope.stdmsg}</strong> 
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                    </c:if>
                                    <p class="h5 mb-4 text-center"><u>SEARCH STUDENT</u></p>
                                    <div style="width: 100%; margin: auto">
                                        <form class="form-inline mr-auto" style="margin-left: 150px; margin-top: 20px" action="SearchStudent" method="post">
                                            <input class="form-control mr-sm-2" type="text" placeholder="Enter student number..." style="width: 70%;" aria-label="Search " name="reg" required="true">
                                            <button class="btn btn-primary" type="submit">Search</button>
                                        </form>
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
