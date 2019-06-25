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

        <link rel="stylesheet" href="resources/fonts/bootstrap.min.css">

        

    </head>
    <body>
        <div class="container" style="width: 700px; height: 1200px; margin-top: 40px">



            <!-- Default form register -->
            <form class="text-center border border p-5" style="border-radius: 1.5em" action="RegisterUser" method="post">
                <p class="text-danger h3-responsive" style="font-size: 20px">${requestScope.usrerr}</p>

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
                <input type="text" name="id" id="defaultRegisterFormEmail" class="form-control mb-4" placeholder="Student ID" required>

                <!-- E-mail -->
                <input type="email" name="email" id="defaultRegisterFormEmail" class="form-control mb-4" placeholder="E-mail" required>

                <!-- Phone number -->
                <input type="text"   name="phone" id="defaultRegisterPhonePassword" class="form-control" placeholder="Phone number" maxlength="10" minlength="10"  aria-describedby="defaultRegisterFormPhoneHelpBlock" style="margin-bottom:  20px" required>

                <!-- Password -->
                <input type="password" name="password" id="defaultRegisterFormPassword" class="form-control" placeholder="Password" aria-describedby="defaultRegisterFormPasswordHelpBlock" pattern="(?=.*\d)(?=.*[a-z]).{8,}" required>
                <small id="defaultRegisterFormPasswordHelpBlock" class="form-text text-muted mb-4"   style="color: black">
                    <strong> At least 8 characters and 1 digit</strong>
                </small>
                <input type="password"  name="cpassword" id="defaultRegisterFormPassword" class="form-control" placeholder=" Confirm Password" aria-describedby="defaultRegisterFormPasswordHelpBlock" required>

                <!-- Sign up button -->
                <button class="btn btn-primary my-4 btn-block" type="submit">Sign up</button>
                <hr>


            </form>
            <!-- Default form register -->
        </div>
    </body>
</html>
