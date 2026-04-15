<%-- 
    Document   : memberDirectory
    Created on : Apr 14, 2026, 11:11:38 PM
    Author     : junel
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table, td, th, tr {
                border-collapse: collapse;
                border: 1px solid grey;
                color: black;
            }
            
            tbody tr:nth-child(even) {
                background-color: beige;
            }

            tbody tr:nth-child(odd) {
                background-color: white;
            }
            
            th {
                font-weight: bold;
                background-color: gold;
            }
            
            th, td {
                padding: 10px;
            }
        </style>
    </head>
    <%@include file="header.jsp" %><br><br>
    <body>
        <%
            ArrayList<String> studentList = new ArrayList<String>();
            
            studentList.add("Mohamad Azam");
            studentList.add("Peter Chong");
            studentList.add("Rahimah Mansor");
            studentList.add("Sri Devi");
            studentList.add("Ng Hue Ween");
            studentList.add("S. Nagarajan"); 

            out.println("<p>The number of records in ArrayList is " + studentList.size() + "</p>");
        
            int i = 1;
            
            out.println("<table>");
            out.println("<tr>");
            out.println("<th>No.</th>");
            out.println("<th>Name</th>");
            out.println("</tr>");
            for(String name : studentList){
                out.println("<tr>");
                out.println("<td>" + i + "</td>");
                out.println("<td>" + name + "</td>");
                out.println("</tr>");
                i++;
            }
            out.println("</table");
        %>
        
        
    </body>
    <%@include file="footer.jsp" %>
</html>
