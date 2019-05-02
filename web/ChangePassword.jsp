<%-- 
    Document   : ChangePassword
    Created on : Mar 20, 2019, 11:40:43 PM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
    </head>
    <body>
        <form action="ChangePassword" method="post"  >

            <div class="text-center">
                <i class="far fa-address-card"></i>frame

                <a href="" data-toggle="modal" data-target="#modalRegisterForm" style="margin-left: 10px">Change Password</a>
            </div>
            <p>${reg}</p>
            <div class="modal fade" id="modalRegisterForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header text-center">
                            <h4 class="modal-title w-100 font-weight-bold">Change Password</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body mx-3">
                            <div class="md-form mb-5">
                                <i class="fas fa-user prefix grey-text"></i>
                                <input type="password"  name="oldPass" id="orangeForm-id" class="form-control validate" required placeholder="Old Password">

                            </div>
                            <div class="md-form mb-5">
                                <i class="fas fa-user prefix grey-text"></i>
                                <input type="password"  name="newPass" id="orangeForm-fname" class="form-control validate" required placeholder="New Password">

                            </div>
                            <div class="md-form mb-5">
                                <i class="fas fa-user prefix grey-text"></i>
                                <input type="password"  name="confPass" id="orangeForm-sname" class="form-control validate" required placeholder="Confirm New Password">

                            </div>





                        </div>
                        <div class="modal-footer d-flex justify-content-center">

                            <button class="btn btn-blue-grey" type="submit">Change</button>
                        </div>
                    </div>
                </div>
            </div>


        </form>

    </body>
</html>
