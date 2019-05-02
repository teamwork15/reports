<%-- 
    Document   : CreateNewUser
    Created on : Mar 20, 2019, 10:59:05 PM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet" href="resources/css/bootstrap.min.css">

        <link rel="stylesheet" href="resources/css/mdb.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add new user</title>

    </head>

    <jsp:include page="AdminHeader.jsp">
        <jsp:param name="title" value="Admin"/>
    </jsp:include>
    <main style="height: 750px">
        <form action="AddUser" method="post"  >

        <div class="container text-center border border-light p-5" style="width: 700px;height: 700px;margin-top: 10px;">

            <p class="h4 mb-4"><strong>User Details </strong></p>
            <!-- ID-->
            <div class="form-row mb-4">
                <label>ID:</label>
                <i class="fas fa-user prefix grey-text"></i>
                <input type="text" name="id" id="orangeForm-id" class="form-control validate" required placeholder="Employee ID">
            </div>
            <!-- first Name -->
            <div class="form-row mb-4">

                <label>First Name:</label>
                <i class="fas fa-user prefix grey-text"></i>
                <input type="text" name="fname" id="orangeForm-fname" class="form-control validate" required placeholder="First Name">
            </div>
           <!-- second Name -->
            <div class="form-row mb-4">

                <label>Second Name:</label>
                <i class="fas fa-user prefix grey-text"></i>
                <input type="text" name="sname" id="orangeForm-sname" class="form-control validate" required placeholder="Second Name">
            </div>
            <!-- E-mail -->
            <div class="form-row mb-4">
                <label>Email:</label>
                <i class="fas fa-user prefix grey-text"></i>
                <input type="email" name="email" id="orangeForm-sname" class="form-control validate" required placeholder="Email">
            </div>
            <!-- phone number -->
            <div class="form-row mb-4">
                <i class="fas fa-user prefix grey-text"></i>
                <label>Phone:</label>
                <input type="text" name="phone" id="orangeForm-sname" class="form-control validate" required placeholder="Phone Number">
            </div>
            
            <!-- Material inline 1 -->
            <div class="  form-check form-check-inline" style="position: relative; right:  30px ;top:   10px" >
                <input type="radio" class="form-check-input" id="materialInline1" name="type" value="Officer" required>
                <label class="form-check-label" for="materialInline1">Officer</label>
            </div>
            <!-- Material inline 2 -->
            <div class="form-check form-check-inline" style="position: relative; right:   30px;top:   10px">
                <input type="radio" class="form-check-input" id="materialInline2" name="type" value="Admin" required>
                <label class="form-check-label" for="materialInline2">Administrator</label>
            </div>
            <div class="modal-footer d-flex justify-content-center" style="position: relative; top: 20px">
                <button class="btn btn-blue" type="submit" >Add</button>
            </div>
            
        </div>
        </form>
    </main>  

    <jsp:include page="Footer.jsp"/>

</html>
