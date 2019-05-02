<%-- 
    Document   : Profile
    Created on : Mar 27, 2019, 8:50:35 PM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            </head>
    <body>
        <div class="container text-center border border-light p-5" style="width: 700px;height: 650px;margin-top: 10px;">
                <!-- Default form register -->


                <p class="h4 mb-4"><strong>Profile </strong></p>
                <!-- ID-->
                <div class="form-row mb-4">
                    <label>ID:</label>
                    <i class="fas fa-user prefix grey-text"></i>
                    <input   class="form-control validate" value="${user.userId}" readonly>
                </div>
                <!-- first Name -->
                <div class="form-row mb-4">

                    <label>First Name:</label>
                    <i class="fas fa-user prefix grey-text"></i>
                    <input   class="form-control validate"  value="${user.fname}" readonly>
                </div>


                <!-- second Name -->
                <div class="form-row mb-4">

                    <label>Second Name:</label>
                    <i class="fas fa-user prefix grey-text"></i>
                    <input   class="form-control validate"  value="${user.sname}" readonly>
                </div>





                <!-- E-mail -->
                <div class="form-row mb-4">
                    <label>Email:</label>
                    <i class="fas fa-user prefix grey-text"></i>
                    <input   class="form-control validate"  value="${user.emailaddress}" readonly>
                </div>

                <!-- phone number -->
                <div class="form-row mb-4">
                    <i class="fas fa-user prefix grey-text"></i>
                    <label>Phone:</label>
                    <input  class="form-control validate" value="${user.phone}" readonly>
                </div>

                

            </div>
    </body>
</html>
