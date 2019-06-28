
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Default form login -->
<!Doctype HTML>

<html>
    <head>

        <link rel="stylesheet" href="resources/fonts/bootstrap.min.css">




    </head>
    <body class="navy-blue-skin">

        <div class="container" style="width: 40%;margin-top: 100px">


            <!-- Default form login -->
            <form action = "StaffLoginServlet" class="text-center border border p-5" method="post" style="height: 430px; border-radius: 1.5em">
                <c:if test="${requestScope.errMessage != null}">
                    <div class="alert alert-warning alert-dismissible fade show text-center" role="alert" style="margin:auto; width: 400px">
                        <strong>${requestScope.errMessage}</strong> 
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </c:if>
                <p class="h4 mb-4">Security Incidents Reporting System</p>
                <p class="h4 mb-4"> Staff Login</p>



                <!-- Email -->
                <input type="text" id="defaultLoginFormEmail" class="form-control mb-4" placeholder="User name" name="username" required>

                <!-- Password -->
                <input type="password" id="defaultLoginFormPassword" class="form-control mb-4" placeholder="Password"  name="password" required>



                <!-- Sign in button -->

                <button class="btn btn-primary btn-block my-4" type="submit" style=" position: relative; top: 15px;">Sign in</button>



            </form>
        </div>
        <script src="resources/vendor/jquery-3.2.1.min.js"></script>
        <!-- Bootstrap JS-->
        <script src="resources/vendor/bootstrap-4.1/popper.min.js"></script>
        <script src="resources/vendor/bootstrap-4.1/bootstrap.min.js"></script>

    </body>

</html>
