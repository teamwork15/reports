<%-- 
    Document   : ViewResolvedCase
    Created on : Apr 2, 2019, 3:14:58 PM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Details</title>
    </head>
    <body>
        <jsp:include page="AdminHeader.jsp">
            <jsp:param name="title" value="case"/>
        </jsp:include>

        <main style="height: 1400px;">

            <div class="container text-center border border-light p-5" style="width: 900px;height: 1250px;margin-top: 10px; color: #37474F">
                <!-- Default form register -->


                <p class="h4 mb-4"><strong>Case Details</strong></p>
                <hr>


                <div class="form-row mb-4">


                    <label>Case ID:</label>
                    <i class="fas fa-user prefix grey-text"></i>
                    <input  name="newid" style="height: 50px" class="form-control validate"  value="${caseDet.id}" readonly>

                </div>
                <div class="form-row mb-4"
                     <!-- ID-->

                     <label > Reporter ID:</label>
                    <i class="fas fa-user prefix grey-text"></i>
                    <input  style="height: 50px" class="form-control validate" value="${caseDet.reporterId}" readonly>
                </div>



                <div class="form-row mb-4">

                    <!--location-->

                    <label>Location: </label>
                    <i class="fas fa-user prefix grey-text"></i>
                    <input   style="height: 50px" class="form-control validate" value="${caseDet.location}" readonly>
                </div>


                <!--Allocation date-->
                <div class="form-row mb-4">
                    <label>Allocated Officer:</label>
                    <i class="fas fa-user prefix grey-text"></i>
                    <input    style="height: 50px" class="form-control validate" value="${caseDet.officerAllocated}" readonly >
                </div>


                <!-- second Name -->
                <div class="form-row mb-4">


                    <label >Case Category:</label>
                    <i class="fas fa-user prefix grey-text"></i>
                    <input style="height: 50px"  class="form-control validate"  value="${caseDet.category}" readonly>
                </div>

                <!-- Occurrence Date -->
                <div class="form-row mb-4">
                    <label >Occurrence Date:</label>
                    <i class="fas fa-user prefix grey-text"></i>

                    <input style="height: 50px" class="form-control validate" value="${caseDet.occDate}" readonly>
                </div>


                <!-- Details -->
                <div class="form-row mb-4">
                    <div class="form-group purple-border">
                        <label  class="row-label">Details:</label>
                        <textarea class="form-control" id="exampleFormControlTextarea4" rows="5" cols="100"  readonly>${caseDet.details}</textarea>
                    </div>
                </div>


                <form   action="FileDownload" >
                    <div class="alert alert-warning alert-dismissible fade show" role="alert" style="width: 400px;">
                        <p class="text-danger">${requestScope.errMsg}</p>

                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <table  class="table table-bordered">
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
                                        <button type="submit" class=" btn-sm btn-blue" >Download</button>
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
                                  


            </div>
        </main>



        <jsp:include page="Footer.jsp"/>

