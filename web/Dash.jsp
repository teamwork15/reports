<%-- 
    Document   : trial
    Created on : Mar 21, 2019, 11:19:38 AM
    Author     : luganu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
    <title>Reporter</title>
</head>
<body>
<jsp:include page="UserHeader.jsp">
            <jsp:param name="title" value="Dash"/>
        </jsp:include>
<main style="height: 700px">
    
    <jsp:include page="Profile.jsp">
            <jsp:param name="title" value="Dash"/>
        </jsp:include>
</main>
  <jsp:include page="Footer.jsp"/>
</body>

</html>
