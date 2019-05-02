<%-- 
    Document   : Login
    Created on : Aug 15, 2018, 2:18:06 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Egerton University Security department Login Form</title>
    </head>
    <body style="background-color: #394B58">

        <h1 style="font-family: monospace; font-weight: normal; color: white; ">
            EGERTON UNIVERSITY
        </h1>
        <br><br>
        
        <div class="container " style="height: 100px;">
            
                <h2 style=" font-weight: normal; color: white; position: relative; right: -700px;">Security Department Staff Login</h2>
                <form  name="form" action="StaffLoginServlet" method="post" >
                    
            
            
                    <table style="position: relative; right: -700px; ">

                <tr>
                    <td></td>
                    <td style="color: white; font-size: 20px; margin-top: 30px">Username</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input style="height: 40px; width: 400px;"  type="text" name="username" /></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td   style="color: white; font-size: 20px;margin-top: 30px">Password</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input style="height: 40px; width: 400px; " type="password" name="password" /></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input style="width: 200px; height: 40px; color: white; align-self: center; background-color: #394B58; border-style: ridge; border-color: white" type="submit" value="Login"></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td><div style="color: red; font-style: italic; align-self: center"><a style="color: red" href="<%=request.getContextPath()%>/forgotpassword.jsp">Forgot Password?</a></div></td>
                    <td></td>
                </tr>
            </table>
                    
        </form>
           
        </div>
    </body>
</html>
