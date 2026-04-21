<%-- 
    Document   : processCurrency
    Created on : Apr 21, 2026, 11:56:59 AM
    Author     : junel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: Arial, Helvetica, sans-serif;
                background-color: #f5f5f5;
            }

            .banner {
                background-color: #f5f5f5;
                padding: 30px 20px;
                text-align: center;
                border-bottom: 1px solid #e0e0e0;
            }

            .banner h1 {
                font-size: 24px;
                font-weight: normal;
                line-height: 1.4;
                display: inline-block;
                position: relative;
                padding-left: 15px;
            }

            .banner h1::before {
                content: '';
                position: absolute;
                left: 0;
                top: 0;
                height: 100%;
                width: 4px;
                background-color: purple;
            }

            .container {
                max-width: 500px;
                margin: 50px auto;
                background: white;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            }

            .container h2 {
                color: #333;
                margin-bottom: 25px;
                text-align: center;
                font-size: 24px;
                border-bottom: 2px solid #667eea;
                display: inline-block;
                width: auto;
                padding-bottom: 8px;
            }

            label {
                display: block;
                margin-bottom: 8px;
                font-weight: 600;
                color: #555;
                font-size: 14px;
            }

            p {
                width: 100%;
                padding: 12px 15px;
                margin-bottom: 20px;
                border: 1px solid #ddd;
                border-radius: 6px;
                font-size: 16px;
                transition: border-color 0.3s ease;
            }
        </style>
    </head>
    <body>
        <%!
            // Define constant exchange rates
            final double USD = 0.25;
            final double EURO = 0.21;
            final double JPY = 40;
            final double SGD = 0.32;
            // Method to calculate conversion
            private double calculateRate(String currency, int amount) {
                double currencyChange = 0.0;

                if (currency != null) {
                    if (currency.equals("1")) {
                        currencyChange = amount * USD;
                    } else if (currency.equals("2")) {
                        currencyChange = amount * EURO;
                    } else if (currency.equals("3")) {
                        currencyChange = amount * JPY;
                    } else {
                        currencyChange = amount * SGD;
                    }
                }

                return currencyChange;
            }
        %>
        
        <%
            String currencyType = request.getParameter("currency");
            String amountRaw = request.getParameter("amountInput");
            
            int amount = 0;
            double total = 0;
            
            try {
                if (amountRaw != null) {
                amount = Integer.parseInt(amountRaw);
                total = calculateRate(currencyType, amount);
                }
            } catch (Exception e) {
                amount = 0;
            }
            // Determine currency name for display
            String currencyName = "N/A";
            if ("1".equals(currencyType)) currencyName = "USD";
            else if ("2".equals(currencyType)) currencyName = "EURO";
            else if ("3".equals(currencyType)) currencyName = "JPY";
            else if ("4".equals(currencyType)) currencyName = "SGD";
            
        %>
        
        <div class="banner">
            <h1>Use JSP Declaration Tag, JSP Scriplet, JSP Expression <br> in Application</h1>
        </div>
        <div class="container">
            <h2>Currency Conversion</h2>
            
            <form>
                <label>Amount in Ringgit Malaysia (RM):</label>
                <p>RM <%= amount %></p>

                <label>Converted to (<%= currencyName %>):</label>
                <p><%= String.format("%.2f", total) %></p>
            </form>
        </div>
        
    </body>
</html>
