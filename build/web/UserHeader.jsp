<%-- 
    Document   : trial
    Created on : Mar 21, 2019, 11:19:38 AM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="resources/mycss.css">
        <script type="text/javascript" src="resources/myjs.js"></script>

        <link rel="stylesheet" href="resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/css/style.min.css">
        <link rel="stylesheet" href="resources/css/mdb.min.css">
        <link rel="stylesheet" href="resources/css/mdb.lite.min.css">





    </head>
    <body class="fixed-sn pink-skin">

        <!--Double navigation-->
        <header class="blue-gradient"  style="height: 70px">
            <!-- Sidebar navigation -->
            <div id="mySidenav" class="sidenav" >
                <ul class="custom-scrollbar">
                    <!-- Logo -->
                    <li>
                    <li> <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a></li>
                    <div class="logo-wrapper waves-light">

                    </div>
                    </li>
                    <li>
                        <ul class="collapsible collapsible-accordion">
                            <li> <a href="ViewProfile" class="fa fa-cart-plus" ><small>Profile</small></a></li>
                            <li> <a href="" class="fa fa-cart-plus" ><small>Report Case</small></a></li>
                            <li> <a href="" class="fa fa-cart-plus" ><small>View Case</small></a></li>
                        </ul>
                    </li>
                    <!--/. Side navigation links -->
                </ul>
                <div class="sidenav-bg mask-strong"></div>
            </div>
            <!--/. Sidebar navigation -->
            <!-- Navbar -->
            <nav class="navbar navbar-toggleable-md navbar-expand-lg scrolling-navbar double-nav blue-gradient ">
                <!-- SideNav slide-out button -->
                <div class="float-left">
                    <span style="font-size:30px;cursor:pointer" onclick="openNav()" class="button-collapse">&#9776;</span>
                </div>

                <!-- Breadcrumb-->
                <div class="breadcrumb-dn mr-auto" >
                    <p style="position: relative; left: 10px; top: 5px ; font-size:20px "><strong>Egerton University</strong></p>
                </div>
                <ul class="nav navbar-nav nav-flex-icons ml-auto">

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false" style="color: greenyellow">
                            <u>${ sessionScope.fullName }</u>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                            <a href="" class="fa fa-cart-plus" data-toggle="modal" data-target="#modalRegisterForm" >Change Password</a>
                            <a class="dropdown-item" href="LogOutServlet">Logout</a>

                        </div>
                    </li>
                </ul>
            </nav>
            <!-- /.Navbar -->
        </header>
        <!--/.Double navigation-->

       
        <form action="ChangePassword" method="post"  >


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

        <!--Main Layout-->
        <script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="resources/js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="resources/js/mdb.min.js"></script>
        <script>// SideNav Button Initialization
                        $(".button-collapse").sideNav();
                        // SideNav Scrollbar Initialization
                        var sideNavScrollbar = document.querySelector('.custom-scrollbar');
                        Ps.initialize(sideNavScrollbar);</script>
    </body>
</html>
