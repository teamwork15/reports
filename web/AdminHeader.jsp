<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags-->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="au theme template">
        <meta name="author" content="Hau Nguyen">
        <meta name="keywords" content="au theme template">

        <!-- Title Page-->
        <title>Dashboard</title>

        <!-- Fontfaces CSS-->
        <link href="resources/css/font-face.css" rel="stylesheet" media="all">
        <link href="resources/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
        <link href="resources/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
        <link href="resources/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

        <!-- Bootstrap CSS-->
        <link href="resources/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

        <!-- Vendor CSS-->
        <link href="resources/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">


        <!-- Main CSS-->
        <link href="resources/css/theme.css" rel="stylesheet" media="all">

    </head>

    <body class="animsition">
        <div class="page-wrapper">


            <!-- MENU SIDEBAR-->
            <aside class="menu-sidebar d-none d-lg-block">
                <div class="logo">
                    <a href="#">
                        <h4 style="color: lightgreen">Egerton University</h4>
                    </a>
                </div>
               
                    <nav class="navbar-sidebar">
                        <ul class="list-unstyled navbar__list">
                            <li class="active has-sub">
                                <a class="js-arrow" href="AdminDash.jsp">
                                    <i class="fas fa-tachometer-alt"></i>Dashboard</a>

                            </li>


                            <li class="has-sub">
                                <a class="js-arrow" href="#">
                                    <i class="fas fa-user"></i>Account</a>
                                <ul class="list-unstyled navbar__sub-list js-sub-list">
                                  
                                    <li>
                                        <a href="ChangePassword.jsp">Change password</a>
                                    </li>

                                </ul>
                            </li>

                            <li class="has-sub">
                                <a class="js-arrow" href="#">
                                    <i class="fas fa-users"></i>Users</a>
                                <ul class="list-unstyled navbar__sub-list js-sub-list">
                                    <li>
                                        <a href="CreateNewUser.jsp">Add user</a>
                                    </li>
                                    <li>
                                        <a href="ViewUsers">View users</a>
                                    </li>

                                </ul>
                            </li>
                            <li class="has-sub">
                                <a class="js-arrow" href="#">
                                    <i class="fas fa-copy"></i>Cases</a>
                                <ul class="list-unstyled navbar__sub-list js-sub-list">
                                    <li>
                                        <a href="ViewCases?type=unallocated">Unallocated</a>
                                    </li>
                                    <li>
                                        <a href="ViewCases?type=allocated">Allocated</a>
                                    </li>
                                    <li>
                                        <a href="ViewCases?type=resolved">Resolved</a>
                                    </li>


                                </ul>

                            </li>
                            <li class="has-sub">
                                <a class="js-arrow" href="SearchStudent.jsp">
                                    <i class="fas fa-search"></i>Search student</a>

                            </li>
                            <li>
                                <a href="Reports.jsp">
                                    <i class="fas fa-file"></i>Reports</a>
                            </li>
                            <li>
                                <a href="AdminHelp.jsp">
                                    <i class="fas fa-circle"></i>Help</a>
                            </li>
                        </ul>
                    </nav>
                
            </aside>
            <!-- END MENU SIDEBAR-->




            <!-- END PAGE CONTAINER-->
        </div>

   



</body>

</html>
<!-- end document-->
