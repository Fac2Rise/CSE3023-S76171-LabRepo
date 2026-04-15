<%-- 
    Document   : mainPage
    Created on : Apr 14, 2026, 4:17:03 PM
    Author     : junel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="headerPage.jsp" %>
        
        <h1>Using JSP Include directive</h1>
        <p style="color: red;">
            Java Server Page (JSP) is a technology for controlling the content <br>
            or appearance of Web pages through the use of servlets, small <br>
            programs that are specified in the Web page and run on the Web server <br>
            to modify the Web page before it is sent to the user who requested it. 
        </p>
    </body>
</html>
<%@include file="footerPage.jsp" %>
