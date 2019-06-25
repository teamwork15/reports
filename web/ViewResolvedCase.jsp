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


                                        <p class="h4 mb-4 text-center"><u>Case Details</u></p>

                                        <div class="container" style="width: 80%">





                                            <div class="form-row ">


                                                <label>Case ID:</label>

                                                <input  name="newid"  class="form-control validate"  value="${caseDet.id}" readonly>

                                            </div>
                                            <div class="form-row "
                                                 <!-- ID-->

                                                 <label > Reporter ID:</label>

                                                <input  class="form-control validate" value="${caseDet.reporterId}" readonly>
                                            </div>



                                            <div class="form-row">

                                                <!--location-->

                                                <label>Location: </label>

                                                <input    class="form-control validate" value="${caseDet.location}" readonly>
                                            </div>


                                            <!--Allocation date-->
                                            <div class="form-row ">
                                                <label>Allocated Officer:</label>

                                                <input     class="form-control validate" value="${caseDet.officerAllocated}" readonly >
                                            </div>


                                            <!-- second Name -->
                                            <div class="form-row ">


                                                <label >Case Category:</label>

                                                <input  class="form-control validate"  value="${caseDet.category}" readonly>
                                            </div>

                                            <!-- Occurrence Date -->
                                            <div class="form-row ">
                                                <label >Occurrence Date:</label>


                                                <input class="form-control validate" value="${caseDet.occDate}" readonly>
                                            </div>


                                            <!-- Details -->
                                            <div class="form-row ">
                                                <div class="form-group purple-border">
                                                    <label  class="row-label">Details:</label>
                                                    <textarea class="form-control" id="exampleFormControlTextarea4" rows="5" cols="100"  readonly>${caseDet.details}</textarea>
                                                </div>
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
                                                            <a href="FileDownload?type=report&caseid=${caseDet.id}">Download</a>
                                                        </td>
                                                    </tr>

                                                    <tr>

                                                        <td>2</td>
                                                        <td>Statement</td>

                                                        <td>
                                                            <a href="FileDownload?type=statement&caseid=${caseDet.id}">Download</a>
                                                        </td>
                                                    </tr>

                                                </tbody>
                                            </table>
                                            <a href="ViewCases?type=resolved"> <button type="submit" class=" btn btn-primary" style="margin-top: 10px">Back</button></a>

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



