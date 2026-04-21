<%-- 
    Document   : subjectInfo
    Created on : Apr 21, 2026, 1:52:41 PM
    Author     : junel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subject Information</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f4f7f6;
                margin: 0;
                padding: 20px;
                /* REMOVE FLEX */
                display: block;
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
        </style>
    </head>
    
    <body>
        
        
        <div class="container">
            <div class="card">
                <h1>Subject Information</h1>
                <p>Code: <%= request.getParameter("code")%></p>
                <p>Subject: <%= request.getParameter("subject")%></p>
                <p>Credit: <%= request.getParameter("credit")%></p>
            </div>
        </div>
        
    </body>
</html>
