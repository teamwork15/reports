<%-- 
    Document   : CreateNewUser
    Created on : Mar 20, 2019, 10:59:05 PM
    
--%>

<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet" href="resources/css/bootstrap.min.css">

        <link rel="stylesheet" href="resources/css/mdb.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report Case</title>
        <link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css">



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
                                        <c:if test="${requestScope.repsucc != null}">
                                            <div class="alert alert-warning alert-dismissible fade show text-center" role="alert" style="margin:auto; width: 300px">
                                                <strong>${requestScope.repsucc}</strong> 
                                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                        </c:if>
                                        <p class="h4 mb-4 text-center"><u>Report Case</u></p>
                                        <div class="container" style="width: 80%">
                                            <form action="CreateComplaint" method="post"   >
                                                <!-- ID-->
                                                <div class="form-row mb-1">
                                                    <label for="inputCat">Location:</label>
                                                    <select id="inputState" class="form-control" name="location" required="">
                                                        <option >Buruburu</option>
                                                        <option>Mombasa</option>
                                                        <option>Argentina</option>
                                                        <option>Nairobi</option>
                                                        <option>Ruwenzori</option>
                                                        <option>Maringo</option>
                                                        <option>Kilimo</option>
                                                        <option>Eldoret</option>
                                                        <option>Mama Ngina</option>
                                                        <option>Tsavo</option>
                                                    </select>                  
                                                </div>
                                                <!-- first Name -->
                                                <div class="form-row mb-1 ">
                                                    <label for="inputCat">Category:</label>
                                                    <select id="inputState" class="form-control" name="cat" required>
                                                        <option >Theft</option>
                                                        <option>Terrorism</option>
                                                        <option>Fire</option>

                                                        <option>Other</option>
                                                    </select>                  
                                                </div>
                                                <!-- second Name -->
                                                <div class="form-row mb-1">

                                                    <label>Occurrence Date:</label>

                                                    <input type="text"  name="occdate"  id="datepicker3" class="form-control validate"  required >
                                                </div>
                                                <div class="form-row mb-1">

                                                    <label>Occurrence Time:</label>

                                                    <input type="time" name="occtime" id="orangeForm-sname" class="form-control validate" required>
                                                </div>

                                                <!--Description of the feature-->
                                                <div class="form-row mb-1" >
                                                    <label for="inputType">Description</label>
                                                    <textarea type="text" class="form-control" id="exampleFormControlTextarea6" name="cased" rows="5" placeholder="Description..." required></textarea>
                                                </div>


                                                <div class=" d-flex justify-content-center" style="position: relative; top: 20px">
                                                    <input type="text" name="action" hidden value="add">
                                                    <button class="btn btn-primary " type="submit"  >Report</button>
                                                </div>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <jsp:include page="Footer.jsp"/>
            </div>

        </div>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script type="text/javascript">
            $(function () {
                $("#datepicker3").datepicker({minDate: -20, maxDate: "D", dateFormat: "dd-mm-yy"});

            });
        </script>

    </body>

</html>
