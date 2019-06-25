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
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

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
                <div class="row">
                    <div class="col-10" style="margin: auto; ">
                        <div class="au-card au-card--no-background-image:url('images/bg-title-02.jpg');shadow au-card--no-pad m-b-40" style="width: 80%">
                            <div class="au-card-title" style="background-color: gray;">
                                <div class="bg-overlay bg-overlay"></div>
                                <h3 class="text-center">
                                    Student details</h3>

                            </div>
                            <div class="container " style="margin-left: 70px; margin-top: 30px">
                                <div class="au-inbox-wrap js-inbox-wrap" >
                                    <div class="au-message-list" style="height: 650px; width: 40%">

                                        <!-- ID-->
                                        <div class="au-message__item unread">


                                            <label> ID:</label>

                                            <input   class="form-control validate"  value="${student[0]}" readonly>
                                        </div>

                                        <!--Name-->
                                        <div class="au-message__item unread">
                                            <label>Name:</label>

                                            <input   class="form-control validate" value="${student[1]}" readonly>
                                        </div>


                                        <!-- Residence -->
                                        <div class="au-message__item unread">

                                            <label>Residence</label>

                                            <input   class="form-control validate"  value="${student[3]}" readonly>
                                        </div>

                                        <!-- Course-->
                                        <div class="au-message__item unread">
                                            <label>Course:</label>

                                            <input   class="form-control validate" value="${student[4]}" readonly>
                                        </div>

                                        <!-- Status-->
                                        <div class="au-message__item unread">
                                            <label>Academic Status:</label>

                                            <input   class="form-control validate" value="${student[5]}" readonly>
                                        </div>

                                        <!-- phone number -->
                                        <div class="au-message__item unread">
                                            <label>Phone:</label>

                                            <input   class="form-control validate"  value="${student[2]}" readonly>
                                        </div>

                                        <!-- E-mail -->
                                        <div class="au-message__item unread">

                                            <label>Email:</label>
                                            <input  class="form-control validate" value="${student[6]}" readonly>
                                        </div>

                                        <div class="au-message__footer">
                                            <a href="SearchStudent.jsp"><button class="au-btn au-btn-load js-load-btn">Search again</button></a>
                                        </div>                                      
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