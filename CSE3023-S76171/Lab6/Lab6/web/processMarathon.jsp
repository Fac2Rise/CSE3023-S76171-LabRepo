<%-- 
    Document   : processMarathon.jsp
    Created on : May 12, 2026, 3:49:09 PM
    Author     : junel
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="dao.MarathonDAO"%>
<%@page import="model.Marathon"%>
<%@page import="util.Database"%>
<jsp:useBean id="myMarathon" class="model.Marathon" scope="request"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:setProperty name="myMarathon" property="*"/>
            
        <%
            int result = 0;
            
            Database db = new Database();
            
            MarathonDAO marathonDAO = new MarathonDAO();
            result = marathonDAO.addDetails(myMarathon);
            
            if(result > 0){
                System.out.println("\tRecord successfully added into Book's table...!");
                out.print("<p>" + "Record with IC No " + myMarathon.getIcno() + " successfully created..!" + "</p>");
                out.print("<p>" + "Details of record are " + "</p>");
                out.print("<p>Ic No: " + myMarathon.getIcno() + "</p>");
                out.print("<p>Name: " + myMarathon.getName() + "</p>");
                out.print("<p>Category: " + myMarathon.getCategory() + "</p>");
            }
            
            System.out.println("Step 5: Close database connection...!");
            db.closeConnection();
            System.out.println("");
            System.out.println("Database connection is closed...!");

        %>
    </body>
</html>
