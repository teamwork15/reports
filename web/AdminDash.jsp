<%-- 
    Document   : Admin
    Created on : Mar 21, 2019, 6:45:43 PM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dash</title>
    </head>
 <body class="animsition">
        <div class="page-wrapper">
            <jsp:include page="AdminHeader.jsp"/>

            <div class="page-container">
                <jsp:include page="Navbar.jsp"/>

                <div class="main-content">
                     <div class="section__content section__content--p30">
             
                        <jsp:include page="Profile.jsp"/>
                 

                    <jsp:include page="Footer.jsp"/>
                     </div>

                </div>
            </div>    

        </div>

    </body>
</html>