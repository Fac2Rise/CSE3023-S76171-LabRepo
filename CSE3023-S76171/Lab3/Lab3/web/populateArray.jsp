<%-- 
    Document   : populateArray
    Created on : Apr 14, 2026, 2:40:27 PM
    Author     : junel
--%>

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
    <body>
        <h1>Read Java array and populate it into HTML table.</h1>
    
        <%
            int[][] matrix = {{1, 2500, 2100, 2200}, 
                              {2, 2000, 1900, 2400}, 
                              {3, 1800, 2200, 2450}}; 

            String[] store = {"Salesman", "Jan", "Feb", "Mac"};

            out.println("<table>");
            for(int i = -1; i < 3; i++){
                out.println("<tr>");
                for(int j = 0; j < 4; j++){
                    if(i == -1){
                        out.println("<th>" + store[j] + "</th>");
                    } else if (j == 0){
                        out.println("<td> Salesman " + matrix[i][j] + "</td>"); 
                    } else{
                        out.println("<td>" + matrix[i][j] + "</td>"); 
                    }
                }
                out.println("</tr>");
            }
            out.println("</table>");
        %>
   
        
        
        &copy;2026-JunHan
    </body>
</html>
