<%-- 
    Document   : forwardInfo
    Created on : Apr 21, 2026, 2:15:08 PM
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
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f4f7f6;
                margin: 0;
                padding: 20px;
                /* REMOVE FLEX */
                display: block;
                
            }
            .title-container {
                width: 100%;
                max-width: 900px;
                margin: 0 auto; /* center properly */
            }
            
            .container {
                width: 100%;
                max-width: 900px;
                margin: 0 auto; /* center properly */
            }
                /* Main Title */
            h1 {
                font-size: 1.5rem;
                color: #333;
                margin-bottom: 20px;
                border-left: 5px solid #6f42c1;
                padding-left: 10px;
            }
            
            .card {
                background: #ffffff;
                padding: 30px;
                border-radius: 8px;
                box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            }
            .form-title {
                color: #6f42c1;
                font-family: 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
                font-size: 1.8rem;
                font-weight: 600;
                letter-spacing: -0.5px;
                margin-top: 0;
                margin-bottom: 25px;
                text-transform: capitalize;
            }
        </style>
    </head>
    <body>
        <%
            String name = request.getParameter("uname");
            String email = request.getParameter("email");
            String nationality = request.getParameter("nationality");
            String background = request.getParameter("background");
        %>
        
        <div class="title-container">
            <h1>Using jsp:forward to display user information</h1>
        </div>
        
        <div class="container">
            <div class="card">
                
                <p class="form-title">Forwarded Info</p>
                <p>Name: <%= name %></p>
                <p>Email: <%= email %></p>
                <p>Nationality: <%= nationality %></p>
                <p>Background: <%= background %></p>
            </div>
        </div>
    </body>
</html>
