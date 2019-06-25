<%-- 
    Document   : CreateNewUser
    Created on : Mar 20, 2019, 10:59:05 PM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add new user</title>
        <link href="resources/fonts/bootstrap.min.css" rel='stylesheet' type='text/css' />

    </head>
    <body class="animsition">
        <div class="page-wrapper">
            <jsp:include page="AdminHeader.jsp"/>

            <div class="page-container">
                <jsp:include page="Navbar.jsp"/>

                <div class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="row">
                            <div class="col" >
                                <div class="au-card recent-report">
                                    <div class="au-card-inner">
                                        <div style="width: 60%; margin: auto">
                                        <form action="AddUser" method="post">

                                            <p class="h5 mb-4 text-center "><u>Add new user</u></p>
                                            <!-- ID-->
                                            <div class="row mb-1">
                                                <label>Employee ID:</label>

                                                <input type="text" name="id" id="orangeForm-id" class="form-control " required >
                                            </div>
                                            <!-- first Name -->
                                            <div class="row mb-1">

                                                <label>First Name:</label>

                                                <input type="text" name="fname" id="orangeForm-fname" class="form-control " required >
                                            </div>
                                            <!-- second Name -->
                                            <div class="row mb-1">

                                                <label>Second Name:</label>

                                                <input type="text" name="sname" id="orangeForm-sname" class="form-control " required >
                                            </div>
                                            <!-- E-mail -->
                                            <div class="row mb-1">
                                                <label>Email:</label>

                                                <input type="email" name="email" id="orangeForm-sname" class="form-control " >
                                            </div>
                                            <!-- phone number -->
                                            <div class="row mb-1">

                                                <label>Phone:</label>
                                                <input type="text" name="phone" id="orangeForm-sname" class="form-control " maxlength="10" minlength="10" >
                                            </div>


                                            <div class=" row"  style="margin-top: 20px">
                                                <button class="btn btn-primary form-control" type="submit"  >Add</button>
                                            </div>
                                        </form>
                                        </div>
                                    </div>



                                </div>
                                <jsp:include page="Footer.jsp"/>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>





    </body>



</html>
