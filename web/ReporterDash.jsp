<%-- 
    Document   : trial
    Created on : Mar 21, 2019, 11:19:38 AM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Reporter</title>
    <body class="animsition">
        <div class="page-wrapper">

            <jsp:include page="UserHeader.jsp"/>


            <div class="page-container">
                <jsp:include page="Navbar.jsp"/>
                <div class="main-content">
                    <div class="section__content section__content--p30">

                    <jsp:include page="Profile.jsp"/>
                    </div>
                </div>

                <jsp:include page="Footer.jsp"/>
            </div>
        </div>
    </body>

</html>
