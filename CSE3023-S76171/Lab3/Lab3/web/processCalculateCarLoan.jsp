<%-- 
    Document   : processCalculateCarLoan
    Created on : Apr 14, 2026, 3:25:47 PM
    Author     : junel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Perform Car Loan Calculation</h2>
        
        <fieldset>
            <%
                double result = 0; 
                String op = "+";
                String year = "0 year";
                String num1 = null;

                char yearChar = year.charAt(0);
                if(request.getParameter("year") != null){
                    year = request.getParameter("year");
                    yearChar = year.charAt(0);

                    num1 = request.getParameter("myLoan");
                    
                    switch(yearChar){
                        case '3': result = Integer.parseInt(num1) * Math.pow((1 + 0.05/12), (12 * 3)) ;
                        break;
                        case '4': result = Integer.parseInt(num1) * Math.pow((1 + 0.05/12), (12 * 4));
                        break;
                        case '5': result = Integer.parseInt(num1) * Math.pow((1 + 0.05/12), (12 * 5));
                        break;
                        case '7': result = Integer.parseInt(num1) * Math.pow((1 + 0.05/12), (12 * 7));
                        break;
                    }
                }
                
                String res = String.format("%.2f", result);
            
            %>
            
            <h1>Details of car loan: </h1>
            <p>Loan Amount:  <%= num1 %></p>
            <p>Period of Payment:  <%= year %> years</p>
            <p>Total Loan (+ interest): <%= res %></p>
        </fieldset>
    </body>
</html>
