<%-- 
    Document   : OfficerDash
    Created on : Mar 21, 2019, 4:28:48 PM
    Author     : luganu
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Case</title>
        <link href="resources/fonts/bootstrap.min.css" rel="stylesheet">



    </head>
    <body class="animsition">
        <div class="page-wrapper">
            <jsp:include page="AdminHeader.jsp"/>

            <div class="page-container">
                <jsp:include page="Navbar.jsp"/>

                <div class="main-content">
                    <div class="section__content section__content--p30" style="width: 70%">
                        <div class="row">
                            <div class="col" >
                                <div class="au-card recent-report">
                                    <div class="au-card-inner">


                                        <div class="container " style="width:80%;height: 700px;">
                                            
                                            <!-- Default form register -->
                                            <p class="h4 mb-4 text-center "><u>Case Details</u></p>

                                            <div class="form-row">
                                                <label >Case ID:</label>

                                                <input  name="newid"  class="form-control validate"  value="${caseDet.id}" readonly>

                                            </div>

                                            <!-- ID-->
                                            <div class="form-row ">
                                                <label > Reporter ID:</label>

                                                <input  class="form-control validate" value="${caseDet.reporterId}" readonly>
                                            </div>


                                            <div class="form-row">

                                                <!--location-->

                                                <label >Location: </label>

                                                <input    class="form-control validate" value="${caseDet.location}" readonly>

                                            </div>

                                            <!-- second Name -->
                                            <div class="form-row ">

                                                <label >Case Category:</label>

                                                <input   class="form-control validate"  value="${caseDet.category}" readonly>
                                            </div>

                                            <!-- Occurrence Date -->
                                            <!-- second Name -->
                                            <div class="form-row ">
                                                <label >Occurrence Date:</label>


                                                <input  class="form-control validate" value="${caseDet.occDate}" readonly>
                                            </div>


                                            <!-- Details -->
                                            <div class="form-row ">
                                                <div class="form-group purple-border">
                                                    <label >Details:</label>
                                                    <textarea class="form-control" id="exampleFormControlTextarea4" rows="5" cols="100"  readonly>${caseDet.details}</textarea>
                                                </div>
                                            </div>



                                            <form  class=" container " action="AllocateCase"   style="height: 20px">

                                                <select name="officer" >
                                                    <c:forEach items="${list}" var="name" >

                                                        <option value="${name.userId}">${name.fname}    ${name.sname}</option>

                                                    </c:forEach>
                                                </select>


                                                <input  type="text"  name="caseid" hidden="true" value="${caseDet.id}"> 
                                                <button type="submit"  class="btn btn-dark"   >Allocate</button>
                                                <a href="ViewCases?type=unallocated"> <button type="submit" class=" btn btn-primary" >Back</button></a>



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

    </body>
</html>