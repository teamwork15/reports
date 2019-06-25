
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <p class="h4 ">Security Cases Reporting System</p>
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
               

                <p class="text-danger h3-responsive" style="font-size: 20px">${requestScope.errMessage}</p>


            </form>
        </div>

    </body>

</html>
