<%-- 
    Document   : bmiCalculator
    Created on : Apr 21, 2026, 3:44:57 PM
    Author     : junel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>BMI Calculator - Calculate Your BMI</title>
    <style>
        .bmi-card {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        
        .bmi-card h2 {
            color: #333;
            margin-bottom: 20px;
            text-align: center;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }
        
        input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }
        
        .btn-calculate {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        
        .btn-calculate:hover {
            background-color: #45a049;
        }
        
        .result {
            margin-top: 25px;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 5px;
            text-align: center;
        }
        
        .bmi-value {
            font-size: 32px;
            font-weight: bold;
            color: #4CAF50;
        }
        
        .bmi-category {
            font-size: 18px;
            margin-top: 10px;
        }
    </style>
</head>
<body>

<%@ include file="header.jsp" %>

<div class="bmi-card">
    <h2>BMI Calculator</h2>
    
    <form method="POST" action="processBMI.jsp">
        <div class="form-group">
            <label for="height">Height (m):</label>
            <input type="number" id="height" name="height" step="0.1" required>
        </div>
        
        <div class="form-group">
            <label for="weight">Weight (kg):</label>
            <input type="number" id="weight" name="weight" step="0.1" required>
        </div>
        
        <button type="submit" class="btn-calculate">Calculate BMI</button>
    </form>
</div>

<%@ include file="footer.jsp" %>

</body>
</html>
