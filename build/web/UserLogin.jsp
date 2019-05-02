
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Default form login -->
<!Doctype HTML>

<html>
    <head>
        <link rel="icon" type="image/gif" href="../favicon.ico">
        <link rel="stylesheet" href="resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/css/style.min.css">
        <link rel="stylesheet" href="resources/css/mdb.min.css">
        <link rel="stylesheet" href="resources/css/mdb.lite.min.css">
        <link rel="stylesheet" href="login.css">
        <script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="resources/js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="resources/js/mdb.min.js"></script>
       

    </head>
<body class="navy-blue-skin">

    <div class="container" style="width: 600px;height: 800px;margin-top: 20px">
        <!-- Default form login -->
        <form action = "loginServlet" class="text-center border border-light p-5" >
            <p class="h4 mb-4">Security Cases Reporting System</p>

            <p class="h4 mb-4">Sign in</p>

            <!-- Email -->
            <input type="text" id="defaultLoginFormEmail" class="form-control mb-4" placeholder="Name" name="name" required>

            <!-- Password -->
            <input type="password" id="defaultLoginFormPassword" class="form-control mb-4" placeholder="Password"  name="password" required>



            <!-- Sign in button -->

            <button class="btn btn-info btn-block my-4" type="submit" style="width: 200px">Sign in</button>
            <div class="text-center">
                <a href="UserRegister.jsp" class="fa fa-cart-plus" style="margin-left: 10px">Register</a>
            </div>
            

        </form>
    </div>
    
    </body>

</html>
