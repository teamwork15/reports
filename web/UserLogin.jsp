
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Default form login -->
<!Doctype HTML>

<html>
    <head>

        <link rel="stylesheet" href="resources/fonts/bootstrap.min.css">


    </head>
    <body class="navy-blue-skin">

        <div class="container" style="width: 40%;height: 750px;margin-top: 100px">



            <!-- Default form login -->
            <form action = "loginServlet" class="text-center border border p-5" style="border-radius: 1.5em" >
                <c:if test="${requestScope.errMessage != null}">
                    <div class="alert alert-warning alert-dismissible fade show text-center" role="alert" style="margin:auto; width: 300px">
                        <strong>${requestScope.errMessage}</strong> 
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </c:if>
                <p class="h4 ">Security Incidents Reporting System</p>
                <p class="h4 mb-4">Login</p>

                <!-- Email -->
                <input type="text" id="defaultLoginFormEmail" class="form-control mb-4" placeholder="User name" name="name" required>

                <!-- Password -->
                <input type="password" id="defaultLoginFormPassword" class="form-control mb-4" placeholder="Password"  name="password" required>



                <!-- Sign in button -->

                <button class="btn btn-primary form-control mb-1" type="submit" >Sign in</button>
                <p style="margin-right:  190px">
                    Don't you have account?
                    <a href="UserRegister.jsp">Sign Up </a>
                </p>




            </form>
        </div>
        <script src="resources/vendor/jquery-3.2.1.min.js"></script>
        <!-- Bootstrap JS-->
        <script src="resources/vendor/bootstrap-4.1/popper.min.js"></script>
        <script src="resources/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    </body>

</html>
