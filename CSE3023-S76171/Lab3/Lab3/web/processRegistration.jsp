<%-- 
    Document   : processRegistration
    Created on : Apr 14, 2026, 4:45:25 PM
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
        <%@include file="header.jsp" %><br><br>
        <h2>Club Registration</h2>
        
        <fieldset>
            <%
                String matricNo = null;
                String myName = null;
                String club = null;
                String res = null;
                
                matricNo = request.getParameter("my_matricNo");
                myName = request.getParameter("my_name");
                club = request.getParameter("my_club");
                
                switch(club){
                    case "0": res = "Soccer"; break;
                    case "1": res = "Singing"; break;
                    case "2": res = "Basketball"; break;
                    case "3": res = "Dancing"; break;
                    case "4": res = "Track & Field"; break;
                }
            
            %>
            
            <p>Thank you for registering for a club..!</p>
            <p>This is your details: </p>
            <p>Matric No: <%= matricNo %></p>
            <p>Name: <%= myName %></p>
            <p>Club: <%= res %></p>
        </fieldset>
    </body>
    <%@include file="footer.jsp" %>
</html>
