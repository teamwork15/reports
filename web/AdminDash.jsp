<%-- 
    Document   : Admin
    Created on : Mar 21, 2019, 6:45:43 PM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dash</title>
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

                                        <div class="row">


                                            <div class="col-xl-3 col-md-6 mb-4">
                                                <div class="card border-left-primary shadow h-100 py-2">
                                                    <div class="card-body">
                                                        <div class="row no-gutters align-items-center">
                                                            <div class="col mr-2">
                                                                <div class="font-weight-bold text-primary text-uppercase mb-1"><a href="ViewUsers"> View users</a></div>
                                                                <p class=" text-gray-800"> View users existing in the system</p>
                                                                   
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-xl-3 col-md-6 mb-4">
                                                <div class="card border-left-primary shadow h-100 py-2">
                                                    <div class="card-body">
                                                        <div class="row no-gutters align-items-center">
                                                            <div class="col mr-2">
                                                                <div class="font-weight-bold text-primary text-uppercase mb-1"><a href="CreateNewUser.jsp"> Add user</a></div>
                                                                <p class=" text-gray-800"> Add a new user to the system</p>
                                                                    
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-xl-3 col-md-6 mb-4">
                                                <div class="card border-left-primary shadow h-100 py-2">
                                                    <div class="card-body">
                                                        <div class="row no-gutters align-items-center">
                                                            <div class="col mr-2">
                                                                <div class="font-weight-bold text-primary text-uppercase mb-1"><a href="SearchStudent.jsp">Search student</a></div>
                                                                <p class=" text-gray-800"> Search student to get their information</p>
                                                                    
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-xl-3 col-md-6 mb-4">
                                                <div class="card border-left-primary shadow h-100 py-2">
                                                    <div class="card-body">
                                                        <div class="row no-gutters align-items-center">
                                                            <div class="col mr-2">
                                                                <div class="font-weight-bold text-primary text-uppercase mb-1"><a href="ViewCases?type=allocated"> View allocated cases</a></div>
                                                                <p class=" text-gray-800"> View cases that have been allocated</p>
                                                                    
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-xl-3 col-md-6 mb-4">
                                                <div class="card border-left-primary shadow h-100 py-2">
                                                    <div class="card-body">
                                                        <div class="row no-gutters align-items-center">
                                                            <div class="col mr-2">
                                                                <div class="font-weight-bold text-primary text-uppercase mb-1"><a href="ViewCases?type=unallocated"> View unallocated cases</a></div>
                                                                <p class=" text-gray-800"> View cases that are pending</p>
                                                                  
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                                <div class="col-xl-3 col-md-6 mb-4">
                                                    <div class="card border-left-primary shadow h-100 py-2">
                                                        <div class="card-body">
                                                            <div class="row no-gutters align-items-center">
                                                                <div class="col mr-2">
                                                                    <div class="font-weight-bold text-primary text-uppercase mb-1"><a href="ViewCases?type=resolved"> View resolved cases</a></div>
                                                                    <p class=" text-gray-800"> View cases resolved</p>
                                                                        
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                             <div class="col-xl-3 col-md-6 mb-4">
                                                    <div class="card border-left-primary shadow h-100 py-2">
                                                        <div class="card-body">
                                                            <div class="row no-gutters align-items-center">
                                                                <div class="col mr-2">
                                                                    <div class="font-weight-bold text-primary text-uppercase mb-1"><a href="Reports.jsp"> Reports</a></div>
                                                                    <p class=" text-gray-800"> Generate and view reports</p>
                                                                        
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>


                    </div>

                </div>
            </div>    

        </div>

    </body>
</html>