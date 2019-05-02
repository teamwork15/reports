<%-- 
    Document   : UserRegister
    Created on : Mar 21, 2019, 2:12:39 PM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>

        <link rel="stylesheet" href="resources/css/bootstrap.min.css">

        <link rel="stylesheet" href="resources/css/mdb.min.css">
        <link rel="stylesheet" href="resources/css/mdb.lite.min.css">
        <script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="resources/js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="resources/js/mdb.min.js"></script>

    </head>
    <body>
        <div class="container" style="width: 600px;height: 1000px;margin-top: 20px">
            <div class="alert alert-warning alert-dismissible fade show" role="alert" style="width: 550px;">
                <p class="text-danger">${requestScope.usrerr}</p>

                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <!-- Default form register -->
            <form class="text-center border border-light p-5" action="RegisterUser" method="post">

                <p class="h4 mb-4">Sign up</p>

                <div class="form-row mb-4">

                    <div class="col">
                        <!-- First name -->
                        <input type="text" name="fname" id="defaultRegisterFormFirstName" class="form-control" placeholder="First name"required >
                    </div>
                    <div class="col">
                        <!-- Last name -->
                        <input type="text" name="sname" id="defaultRegisterFormLastName" class="form-control" placeholder="Last name" required>
                    </div>
                </div>
                <!-- E-mail -->
                <input type="text" name="id" id="defaultRegisterFormEmail" class="form-control mb-4" placeholder="Employee/Student ID" required>

                <!-- E-mail -->
                <input type="email" name="email" id="defaultRegisterFormEmail" class="form-control mb-4" placeholder="E-mail" required>

                <!-- Phone number -->
                <input type="text"   name="phone" id="defaultRegisterPhonePassword" class="form-control" placeholder="Phone number" aria-describedby="defaultRegisterFormPhoneHelpBlock" style="margin-bottom:  20px" required>

                <!-- Password -->
                <input type="password" name="password" id="defaultRegisterFormPassword" class="form-control" placeholder="Password" aria-describedby="defaultRegisterFormPasswordHelpBlock" required>
                <small id="defaultRegisterFormPasswordHelpBlock" class="form-text text-muted mb-4"  pattern="(?=.*\d)(?=.*[a-z]).{8,}" style="color: black">
                    <strong> At least 8 characters and 1 digit</strong>
                </small>
                <input type="password"  name="cpassword" id="defaultRegisterFormPassword" class="form-control" placeholder=" Confirm Password" aria-describedby="defaultRegisterFormPasswordHelpBlock" required>
                
                <!-- Sign up button -->
                <button class="btn btn-info my-4 btn-block" type="submit">Sign up</button>
                <hr>

                
            </form>
            <!-- Default form register -->
        </div>
    </body>
</html>
