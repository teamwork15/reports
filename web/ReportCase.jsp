<%-- 
    Document   : CreateNewUser
    Created on : Mar 20, 2019, 10:59:05 PM
    
--%>

<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet" href="resources/css/bootstrap.min.css">

        <link rel="stylesheet" href="resources/css/mdb.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report Case</title>

                    <script>
                        funtion myFunction(){
                            confirm("Report Incident");
                        }
                    </script>

    </head>

    <jsp:include page="UserHeader.jsp">
        <jsp:param name="title" value="Admin"/>
    </jsp:include>
    <main style="height: 850px">
        <form action="CreateComplaint" method="post"  >

            <div class="container text-center border border-light p-5" style="width: 700px;height: 775px;margin-top: 10px;">
                <div class="alert alert-warning alert-dismissible fade show" role="alert" style="width: 500px; margin-left: 50px">
                    <p class="text-danger">${requestScope.repsucc}</p>

                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <p class="h4 mb-4"><strong>Case Details </strong></p>
                <hr>
                <!-- ID-->
                <div class="form-row mb-4">
                    <label>Location</label>
                    <i class="fas fa-user prefix grey-text"></i>
                    <input type="text" name="location" id="orangeForm-id" class="form-control validate" required placeholder="Location">
                </div>
                <!-- first Name -->
                <div class="form-row ">
                    <label for="inputCat">Category</label>
                    <select id="inputState" class="form-control" name="cat">
                        <option selected>Theft</option>
                        <option>Terrorism</option>
                        <option>Fire</option>
                        <option>Harassment</option>
                        <option>Drug abuse</option>
                        <option>Other</option>
                    </select>                  
                </div>
                <!-- second Name -->
                <div class="form-row mb-4">

                    <label>Occurrence Date:</label>
                    <i class="fas fa-user prefix grey-text"></i>
                    <input type="date" name="occdate" id="datePickerId" class="form-control validate"  max="" required>
                </div>
                <div class="form-row mb-4">

                    <label>Occurrence Time:</label>
                    <i class="fas fa-user prefix grey-text"></i>
                    <input type="time" name="occtime" id="orangeForm-sname" class="form-control validate" required>
                </div>

                <!--Description of the feature-->
                <div class="form-row " style="margin-top: 30px">
                    <label for="inputType">Description</label>
                    <textarea type="text" class="form-control" id="exampleFormControlTextarea6" name="cased" rows="5" placeholder="Description..." required></textarea>
                </div>


                <div class="modal-footer d-flex justify-content-center" style="position: relative; top: 20px">
                    <input type="text" name="action" hidden value="add">
                    <button class="btn btn-blue" type="submit" onclick="myFunction()" >Report</button>
                </div>

            </div>
        </form>
    </main> 
                    

    <jsp:include page="Footer.jsp"/>

</html>
