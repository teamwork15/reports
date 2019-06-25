<%-- 
    Document   : ChangePassword
    Created on : Mar 20, 2019, 11:40:43 PM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>

        <title>Change Password</title>
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
                    <div class="section__content section__content--p30" style="width: 70%">
                        <div class="row">
                            <div class="col" >
                                <div class="au-card recent-report">
                                     <form action="ChangePassword" method="post"  >
                                    <div class="au-card-inner">
                                        <p class="h5 mb-4 text-center"><u>Change password</u></p>
                                        <div class="container" style="width: 80%">
                                           
                                                <div class="form-row mb-1">
                                                    <label>Old password:</label>
                                                    <input type="password"  name="oldPass" id="orangeForm-id" class="form-control " required >

                                                </div>
                                                <div class="form-row mb-1">
                                                    <label>New password:</label>
                                                    <input type="password"  name="newPass" id="orangeForm-fname" class="form-control " required >

                                                </div>
                                                <div class="form-row mb-1">
                                                    <label>Confirm password:</label>
                                                    <input type="password"  name="confPass" id="orangeForm-sname" class="form-control " required >

                                                </div>


                                           


                                        </div>
                                    </div>
                                    <div class=" d-flex justify-content-center" style="margin-top: 20px">

                                        <button class="btn btn-primary" type="submit">Change</button>
                                    </div>
                                     </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



    </form>

</body>
</html>
