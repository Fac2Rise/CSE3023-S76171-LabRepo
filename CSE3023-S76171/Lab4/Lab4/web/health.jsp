<%-- 
    Document   : health
    Created on : Apr 21, 2026, 3:35:36 PM
    Author     : junel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>BMI Health Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0 px;
            background-color: #f5f5f5;
        }
        
        .container {
            max-width: 600px;
            margin: 30px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
        }
        
        th {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            text-align: left;
        }
        
        td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
        
        tr:hover {
            background-color: #f5f5f5;
        }
    </style>
</head>
<%@include file='header.jsp' %>
<body>

<div class="container">
    
    <h2>BMI Categories</h2>
    
    <%
        // Store BMI categories using an ArrayList
        ArrayList<String[]> bmiList = new ArrayList<String[]>();
        
        // Add 3 categories to the list
        bmiList.add(new String[]{"Underweight", "Less than 18.5", "Eat more nutritious food"});
        bmiList.add(new String[]{"Normal", "18.5 - 24.9", "Maintain healthy lifestyle"});
        bmiList.add(new String[]{"Overweight", "25 and above", "Exercise regularly"});
    %>
    
    <!-- Display categories dynamically in a table -->
    <table>
        <tr>
            <th>Category</th>
            <th>BMI Range</th>
            <th>Recommendation</th>
        </tr>
        
        <%
            for(String[] category : bmiList) {
        %>
        <tr>
            <td><%= category[0] %></td>
            <td><%= category[1] %></td>
            <td><%= category[2] %></td>
        </tr>
        <%
            }
        %>
    </table>
</div>
<%@include file='footer.jsp' %>
</body>
</html>