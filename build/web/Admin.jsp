<%-- 
    Document   : AdminDash
    Created on : Mar 13, 2019, 5:54:55 PM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <head>

     
        <link rel="stylesheet" href="resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/css/style.min.css">
        <link rel="stylesheet" href="resources/css/mdb.min.css">
        

        <script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="resources/js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="resources/js/mdb.min.js"></script>
    </head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Allocate Case</title>
</head>
<body>
    <h3>Allocation</h3>

    <form action="AllocateCase">

        <select name="officer" class="btn btn-primary dropdown-toggle">
            <c:forEach items="${list}" var="name" >

                <option value="${name.userId}" >${name.fname}</option>

            </c:forEach>
        </select>
        <br/>







        <div class="form-group shadow-textarea" >

            <textarea name="comments" class=" z-depth-1" id="exampleFormControlTextarea6" rows="10" cols="50" placeholder="Write your comments here..."></textarea>
        </div>

        <button type="submit" class="btn btn-light">Allocate</button>
    </form>

</body>
</html>
