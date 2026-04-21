<%-- 
    Document   : bmiReslt
    Created on : Apr 21, 2026, 3:35:31 PM
    Author     : junel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .result {
                background: linear-gradient(135deg, #2e7d32 0%, #1a1a1a 100%);
                padding: 30px;
                border-radius: 15px;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
                text-align: center;
                max-width: 400px;
                margin: 20px auto;
                animation: fadeIn 0.5s ease-in;
            }

            /* Individual Result Items */
            .bmi-value {
                background: rgba(255, 255, 255, 0.95);
                margin: 15px 0;
                padding: 15px 20px;
                border-radius: 10px;
                font-size: 18px;
                font-weight: 600;
                color: #333;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                transition: transform 0.3s ease, box-shadow 0.3s ease;
            }
        </style>
    </head>
    <body>
        <%
            Double weight = Double.parseDouble(request.getParameter("weight"));
            Double height = Double.parseDouble(request.getParameter("height"));
            Double bmi = Double.parseDouble(request.getParameter("bmi"));
            String category = request.getParameter("category");
        %>
        
        <%@include file='header.jsp' %>
        
        <div class="result">
            <div class="bmi-value">Weight: <%= String.format("%.2f", weight) %> kg</div>
            <div class="bmi-value">Height: <%= String.format("%.2f", height) %> m</div>
            <div class="bmi-value">BMI: <%= String.format("%.2f", bmi) %></div>
            <div class="bmi-value">Category: <%= category %></div>
        </div>
        
        <%@include file='footer.jsp' %>
    </body>
</html>
