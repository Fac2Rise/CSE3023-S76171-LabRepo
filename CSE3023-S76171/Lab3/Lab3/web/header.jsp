<%-- 
    Document   : header
    Created on : Apr 14, 2026, 4:35:22 PM
    Author     : junel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
               background-color: purple;
               color: white; 
            }
            
            header {
                font-size: 3em;
                padding: 10px;
                text-align: center;
            }
            
            a {
                color: white;
            }
            
            a:hover {
                color: grey;
            }
        </style>
    </head>
    <body>
        <header>Student Club Registration System</header>
        
        <nav>
            <a href="registerClub.jsp">Registration</a>
            <a href="feeCalculator.jsp">Fee Calculator</a>
            <a href="memberDirectory.jsp">Member Directory</a>
        </nav>
    </body>
</html>
