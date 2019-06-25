<%-- 
    Document   : Admin
    Created on : Mar 21, 2019, 6:45:43 PM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
    </head>
    <body class="animsition">
        <div class="page-wrapper">
            <c:if test="${sessionScope.role == 'Admin'}">
                <jsp:include page="AdminHeader.jsp"/>
            </c:if>
            <c:if test="${sessionScope.role == 'Officer'}">
                <jsp:include page="OfficerHeader.jsp"/>
            </c:if>
            <c:if test="${sessionScope.role == 'Reporter'}">
                <jsp:include page="UserHeader.jsp"/>
            </c:if>
            
            <div class="page-container">
                <jsp:include page="Navbar.jsp"/>

                <div class="main-content">


                    <div class="section__content section__content--p30">

                        <div class="container" style="width: 100%">
                            <jsp:include page="Profile.jsp"/>
                        </div>
                    </div>
                </div>
            </div>



            <jsp:include page="Footer.jsp"/>

        </div>
    </div>    

</body>
</html>