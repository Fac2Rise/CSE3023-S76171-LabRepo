<%-- 
    Document   : ArrayList
    Created on : Apr 14, 2026, 4:09:53 PM
    Author     : junel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Use Java ArrayList</title>
    </head>
    <body>
        <h1>Use JSP Page Directive</h1>
        <%
            ArrayList<String> studentList = new ArrayList<String>();
            
            studentList.add("Mohamad Azam");
            studentList.add("Peter Chong");
            studentList.add("Rahimah Mansor");
            studentList.add("Sri Devi");
            studentList.add("Ng Hue Ween");
            studentList.add("S. Nagarajan"); 

            out.println("<p>The number of records in ArrayList is " + studentList.size() + "</p>");
        
            int i = 0;
            for(String name : studentList){
                out.println("<p>Record " + (i+1) + " is " + name + "</p>");
                i++;
            }
        %>
        
        <br>
        <footer>&copy;2026-JunHan</footer>
    </body>
</html>
