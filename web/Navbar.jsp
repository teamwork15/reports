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

 

    <!-- Main CSS-->
    <link href="resources/css/theme.css" rel="stylesheet" media="all">

</head>

<body >
    
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                            
                            <div class="header-button">
                                
                                <div class="account-wrap" style="position: fixed; right: 5px">
                                    <div class="account-item clearfix js-item-menu">
                                       
                                        <div class="content">
                                            <a class="js-acc-btn" style="color: blue"><u>${sessionScope.fullName}</u></a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="#">${sessionScope.fullName}</a>
                                                    </h5>
                                                    <span class="email">${sessionScope.fullName}@gmail.com</span>
                                                </div>
                                            </div>
                                           
                                               
                                            
                                            <div class="account-dropdown__footer">
                                                <a href="LogOutServlet">
                                                    <i class="zmdi zmdi-power"></i>Logout</a>
                                            </div>
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
           
        

 

    <!-- Jquery JS-->
    <script src="resources/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="resources/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="resources/vendor/bootstrap-4.1/bootstrap.min.js"></script>
  
    <script src="resources/vendor/animsition/animsition.min.js"></script>
   
    </script>


    <!-- Main JS-->
    <script src="resources/js/main.js"></script>

</body>

</html>
<!-- end document-->
