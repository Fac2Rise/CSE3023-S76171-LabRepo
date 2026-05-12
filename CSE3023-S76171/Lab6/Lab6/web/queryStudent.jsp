<%-- 
    Document   : queryStudent
    Created on : 12 May 2026, 4:20:27 pm
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table {
                border-collapse: collapse;
            } 
            td, th {
                border: 1px solid black;
                padding: 0.5rem;
                text-align: left;
            }
            th {
                background: gold;
            }
        </style>
    </head>
    <body>
        <h1> Lab 6 - Task 4 : Retrieving record via JSP page</h1>
        
        <%
            out.print("<table>");
                out.print("<thead>");
                    out.print("<tr>");
                        out.print("<th>"+ "ISBN No" + "</th>");
                        out.print("<th>"+ "Author" + "</th>");
                        out.print("<th>"+ "Title" + "</th>");
                    out.print("</tr>");
                out.print("</thead>");
                out.print("<tbody>");
        %>
        
        <%
                Class.forName("com.mysql.jdbc.Driver");
                System.out.println("Step 1: MYSQL driver loaded...!");

                String myURL = "jdbc:mysql://localhost:3306/cse3023";
                Connection conn = DriverManager.getConnection(myURL, "root", "admin");
                System.out.println("Step 2: Database is connected...!");

                Statement stmt = conn.createStatement();

                String query = "SELECT * FROM student";
                ResultSet rs = stmt.executeQuery(query);

                while(rs.next()){
                out.println("<tr>");
                    out.print("<td width=\"20%\">" + rs.getString(1) + "</td>");
                    out.print("<td width=\"40%\">" + rs.getString(2) + "</td>");
                    out.print("<td width=\"40%\">" + rs.getString(3) + "</td>");
                out.print("</tr>");
                }

                System.out.println("Step 5: Close database connection");
                conn.close();
                System.out.println("");
                System.out.println("Database connection is closed...!");
            
                out.print("</tbody>");
            out.print("</table>");
        %>
    </body>
</html>
