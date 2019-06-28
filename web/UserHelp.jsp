<%-- 
    Document   : ProfHelp
    Created on : Jun 26, 2019, 12:17:54 PM
    Author     : justus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prof Help</title>
        <link href="resources/fonts/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="animsition">
        <div class="page-wrapper">
            <jsp:include page="UserHeader.jsp"/>

            <div class="page-container">
                <jsp:include page="Navbar.jsp"/>

                <div class="main-content">
                    <div class="section__content section__content--p30" style="width: 75%">
                        <div class="row">
                            <div class="col" >
                                <div class="au-card recent-report">
                                    <div class="au-card-inner">
                                        
                                   
                                            <div class="accordion" id="accordionExample">
                         
                                                    <div class="card-header" id="headingThree">
                                                        <h2 class="mb-0">
                                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                                How to Report a case ?
                                                            </button>
                                                        </h2>
                                                    </div>
                                                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                                        <div class="card-body">
                                                            <p>1. Click on the "Report" option in the side navigation </p>
                                                            <p>2. Fill in the field in the report page</p>
                                                            <p>3. Click report case</p>

                                                        </div>
                                                    </div>
                                                
                                              
                                                    <div class="card-header" id="headingThree">
                                                        <h2 class="mb-0">
                                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseThree">
                                                                How to view your cases?
                                                            </button>
                                                        </h2>
                                                    </div>
                                                    <div id="collapseFour" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                                        <div class="card-body">
                                                           <p>1. Click on the "Cases" option in the side navigation </p>
                                                            <p>2.View the information on the tables</p>
                                                        
                                                  
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
