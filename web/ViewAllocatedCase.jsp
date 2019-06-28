<%-- 
    Document   : ViewResolvedCase
    Created on : Apr 2, 2019, 3:14:58 PM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Details</title>
    </head>
    <body class="animsition">
        <div class="page-wrapper">
            <jsp:include page="AdminHeader.jsp"/>

            <div class="page-container">
                <jsp:include page="Navbar.jsp"/>

                <div class="main-content">
                    <div class="section__content section__content--p30" style="width: 75%">
                        <div class="row">
                            <div class="col" >
                                <div class="au-card recent-report">
                                    <div class="au-card-inner">
                                        <c:if test="${requestScope.errResolve != null}">
                                            <div class="alert alert-warning alert-dismissible fade show text-center" role="alert" style="margin:auto; width: 400px">
                                                <strong>${requestScope.errResolve}</strong> 
                                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                        </c:if>


                                        <p class="h4 mb-4 text-center"><u>Case Details</u></p>

                                        <div class="container" style="width: 80%">

                                            <div class="form-row ">


                                                <label>Case ID:</label>

                                                <input  name="newid" class="form-control "  value="${caseDet.id}" readonly>

                                            </div>
                                            <div class="form-row "
                                                 <!-- ID-->

                                                 <label > Reporter ID:</label>
                                                <input   class="form-control " value="${caseDet.reporterId}" readonly>
                                            </div>



                                            <div class="form-row ">

                                                <!--location-->

                                                <label>Location: </label>
                                                <input    class="form-control " value="${caseDet.location}" readonly>
                                            </div>


                                            <!--Allocation date-->
                                            <div class="form-row ">
                                                <label>Allocated Officer:</label>
                                                <input     class="form-control validate" value="${caseDet.officerAllocated}" readonly >
                                            </div>
                                            <div class="form-row ">
                                                <label>Investigation status:</label>
                                                <input     class="form-control " value="${requestScope.status}" readonly >
                                            </div>



                                            <!-- second Name -->
                                            <div class="form-row ">


                                                <label >Case Category:</label>
                                                <input  class="form-control "  value="${caseDet.category}" readonly>
                                            </div>

                                            <!-- Occurrence Date -->
                                            <div class="form-row ">
                                                <label >Occurrence Date:</label>

                                                <input  class="form-control validate" value="${caseDet.occDate}" readonly>
                                            </div>


                                            <!-- Details -->
                                            <div class="form-row ">
                                                <div class="form-group purple-border">
                                                    <label  class="row-label">Details:</label>
                                                    <textarea class="form-control" id="exampleFormControlTextarea4" rows="5" cols="100"  readonly>${caseDet.details}</textarea>
                                                </div>
                                            </div>


                                        <form   action="FileDownload" >
                                            <p class="text-danger" style="font-size: 15px">${requestScope.errMsg}</p>



                                            <table  class="table table-bordered mb-1">
                                                <thead >
                                                    <tr >
                                                        <th scope="col">#</th>
                                                        <th scope="col">Category</th>

                                                    </tr>
                                                </thead>
                                                <tbody >
                                                    <tr>
                                                        <td>1</td>
                                                        <td>Report</td>

                                                        <td>
                                                            <form action="FileDownload" >
                                                                <button type="submit" class=" btn-sm btn-primary" >Download</button>
                                                                <input  type="text"  name="type" hidden="true" value="report">
                                                                <input  type="text"  name="caseid" hidden="true" value="${caseDet.id}">
                                                            </form>
                                                        </td>
                                                    </tr>

                                                    <tr>

                                                        <td>2</td>
                                                        <td>Statement</td>

                                                        <td>
                                                            <form action="FileDownload" >
                                                                <input  type="text"  name="type" hidden="true" value="statement">
                                                                <input  type="text"  name="caseid" hidden="true" value="${caseDet.id}">
                                                                <button type="submit" class=" btn-sm btn-primary" >Download</button>
                                                            </form>
                                                        </td>
                                                    </tr>

                                                </tbody>
                                            </table>
                                            <form action="ProcessCase">
                                                <button type="submit" class=" btn btn-primary " >Resolve</button>
                                                <input  type="text"  name="caseid" hidden="true" value="${caseDet.id}">
                                                <a href="ViewCases?type=allocated"> <button type="submit" class=" btn btn-primary " >Back</button></a>

                                            </form>


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <jsp:include page="Footer.jsp"/>
                </div>
            </div>
        </div>
    </body>
</html>






