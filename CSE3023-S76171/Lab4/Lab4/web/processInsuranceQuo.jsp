<%-- 
    Document   : processInsuranceQuo
    Created on : Apr 21, 2026, 2:44:31 PM
    Author     : junel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel='stylesheet' href='index.css'>
    </head>
    <body>
        <%
            // Retrieve form data
            String icno = request.getParameter("icno");
            String name = request.getParameter("name");
            String coverage = request.getParameter("coverage");
            String ncdStr = request.getParameter("ncd");
            
            double price = 0;
            double ncd = 0;
            
            try {
                price = Double.parseDouble(request.getParameter("price"));
                ncd = Double.parseDouble(ncdStr);
            } catch (Exception e) {
                price = 0;
                ncd = 0;
            }
            
            // Business Logic
            double rate = 0;
            String coverageDisplay = "";
            if ("comprehensive".equals(coverage)) {
                rate = 0.05; // 5%
                coverageDisplay = "Comprehensive";
            } else if ("thirdparty".equals(coverage)) {
                rate = 0.03; // 3%
                coverageDisplay = "Third Party";
            }
            
            // Base insurance calculation
            double insurance = price * rate;
            // Apply NCD discount
            double discount = insurance * ncd;
            double afterNCD = insurance - discount;
            // Add 8% SST
            double sst = afterNCD * 0.08;
            double finalAmount = afterNCD + sst;
        %>
        
        <h1>Insurance Quotation</h1>
        
        <div class="container">
            <div class="card">
                <p class="form-title">Insurance Quotation</p>
                
                <div class="result-group">
                    <p>Name: <%= name %></p>
                </div>
                
                <div class="result-group">
                    <p>IC No:  <%= icno %></p>
                </div>
                
                <div class="result-group">
                    <p>Coverage: <%= coverage%></p>
                </div>
                
                <div class="result-group">
                    <p>No Claim Discount <%= ncd%></p>
                </div>
                
                <hr style="height: 3px; background-color: black;">
                
                <div class="result-group">
                    <p>Insurance: <%= insurance %></p>
                </div>
                
                <div class="result-group">
                    <p>Discount: <%= discount %></p>
                </div>
                
                <div class="result-group">
                    <p>After NCD: <%= afterNCD %></p>
                </div>
                
                <div class="result-group">
                    <p>After SST: <%= sst %></p>
                </div>
                
                <div class="result-group" style="font-weight: bold;">
                    <p>Total Amount: <%= finalAmount %></p>
                </div>
                
                <input type='button' class="btn-back" value="Back" onclick="window.location.href='insuranceQuotation.jsp';">
            </div>
        </div>
    </body>
</html>
