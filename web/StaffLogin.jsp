
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <p class="h4 mb-4">Security Cases Reporting System</p>
                <p class="h4 mb-4"> Staff Login</p>



                <!-- Email -->
                <input type="text" id="defaultLoginFormEmail" class="form-control mb-4" placeholder="User name" name="username" required>

                <!-- Password -->
                <input type="password" id="defaultLoginFormPassword" class="form-control mb-4" placeholder="Password"  name="password" required>

                <p class="text-danger" style="font-size: 20px">${requestScope.errMessage}</p>


                <!-- Sign in button -->

                <button class="btn btn-primary btn-block my-4" type="submit" style=" position: relative; top: 15px;">Sign in</button>



            </form>
        </div>

    </body>

</html>
