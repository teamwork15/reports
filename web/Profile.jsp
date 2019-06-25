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
        <link href="resources/fonts/bootstrap.min.css" rel='stylesheet' type='text/css' />
    </head>

    <div class="row">
        <div class="col" >
            <div class="au-card recent-report" style="width: 70%; margin: auto">
                <div class="au-card-inner">
                    <h3 class="title-2 text-center mb-4"><u>Profile</u></h3>
                    <div style="width: 70%; margin: auto">
                    <div class="form-row ">
                        <label>First Name:</label>

                        <input class="form-control"  value="${user.fname}" readonly>
                    </div>

                    <div class="form-row ">

                        <label>Second Name:</label>
                        <input   class="form-control "  value="${user.sname}" readonly>
                    </div>

                    <div class="form-row ">
                        <label>Email:</label>
                        <input   class="form-control "  value="${user.emailaddress}" readonly>
                    </div>

                    <!-- phone number -->
                    <div class="form-row ">
                        <label>Phone:</label>
                        <input  class="form-control " value="${user.phone}" readonly>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


</html>
