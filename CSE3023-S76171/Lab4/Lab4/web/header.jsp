<%-- 
    Document   : header
    Created on : Apr 21, 2026, 3:28:19 PM
    Author     : junel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>BMI Calculator</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-color: #f5f5f5;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        
        /* Header Styles */
        .header {
            background-color: white;
            border-bottom: 1px solid #e0e0e0;
            padding: 20px 0;
            position: sticky;
            top: 0;
            z-index: 100;
        }
        
        .header-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
        }
        
        .logo h1 {
            font-size: 24px;
            font-weight: normal;
            position: relative;
            padding-left: 15px;
        }
        
        .logo h1::before {
            content: '';
            position: absolute;
            left: 0;
            top: 0;
            height: 100%;
            width: 4px;
            background-color: #4CAF50;
        }
        
        .logo a {
            text-decoration: none;
            color: #333;
        }
        
        .nav-menu {
            display: flex;
            gap: 25px;
        }
        
        .nav-menu a {
            text-decoration: none;
            color: #555;
            font-size: 16px;
            padding: 8px 12px;
            transition: color 0.3s ease;
        }
        
        .nav-menu a:hover {
            color: #4CAF50;
        }
        
        .nav-menu a.active {
            color: #4CAF50;
            font-weight: bold;
        }
        
        /* Main Content Container */
        .main-content {
            flex: 1;
            max-width: 500px;
            margin: 40px auto;
            padding: 0 20px;
            width: 100%;
        }
        
        @media (max-width: 768px) {
            .header-container {
                flex-direction: column;
                gap: 15px;
            }
            
            .footer-container {
                flex-direction: column;
                text-align: center;
            }
            
            .footer-section h3::after {
                left: 50%;
                transform: translateX(-50%);
            }
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <div class="header">
        <div class="header-container">
            <div class="logo">
                <a href="index.jsp">
                    <h1>BMI Calculator</h1>
                </a>
            </div>
            <div class="nav-menu">
                <a href="bmiCalculator.jsp" class="<%= request.getRequestURI().contains("bmiCalculator.jsp") ? "active" : "" %>">BMI Calculator</a>
                <a href="bmiResult.jsp" class="<%= request.getRequestURI().contains("about.jsp") ? "active" : "" %>">BMI Result</a>
                <a href="health.jsp" class="<%= request.getRequestURI().contains("contact.jsp") ? "active" : "" %>">Health Information</a>
            </div>
        </div>
    </div>
</body>
</html>
