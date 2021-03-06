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
            <jsp:include page="OfficerHeader.jsp"/>

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
                                                                How to view case allocation ?
                                                            </button>
                                                        </h2>
                                                    </div>
                                                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                                        <div class="card-body">
                                                            <p>1. Click on the "Cases" option in the side navigation </p>
                                                            <p>2. Click on the id of the case in the list to view details</p>
                                                            <p>3. Select the officer to allocate the case and click allocate</p>

                                                        </div>
                                                    </div>
                                                
                                              
                                                    <div class="card-header" id="headingThree">
                                                        <h2 class="mb-0">
                                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseThree">
                                                                How to search student?
                                                            </button>
                                                        </h2>
                                                    </div>
                                                    <div id="collapseFour" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                                        <div class="card-body">
                                                           <p>1. Click on the "Search student" option in the side navigation </p>
                                                            <p>2.Enter student information and click search</p>
                                                        
                                                  
                                                        </div>
                                                    </div>
                                                
                                                
                                                    <div class="card-header" id="headingThree">
                                                        <h2 class="mb-0">
                                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseThree">
                                                                How to view reports?
                                                            </button>
                                                        </h2>
                                                    </div>
                                                    <div id="collapseFour" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                                        <div class="card-body">
                                                           <p>1. Click on the "Reports" option in the side navigation </p>
                                                            <p>2.Select the dates range and click "generate report"</p>
                                                        
                                                  
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
