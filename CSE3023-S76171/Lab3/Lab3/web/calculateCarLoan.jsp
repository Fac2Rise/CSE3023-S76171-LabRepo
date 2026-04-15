<%-- 
    Document   : calculateCarLoan
    Created on : Apr 14, 2026, 3:13:57 PM
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
        <%@include file="header.jsp" %><br><br>
        <h1>Perform Car Loan Calculation</h1>
        
        <form id="loanForm" action="processCalculateCarLoan.jsp" method="post">
            <fieldset>
                <legend>Loan Calculation</legend>

                <label for="loan">Loan Amount *</label>
                <input type="text" id="loan" name="myLoan"/><br>

                <label for="noYears">Period</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <select name="year" size="1">
                    <option value="3">3 year</option>
                    <option value="4">4 year</option>
                    <option value="5">5 year</option>
                    <option value="7">7 year</option>
                </select>
                
                <p>
                    <input type="submit" id="btnSubmit" value="Submit">
                    <input type="reset" id="btnCancel" value="Cancel">
                </p>
            </fieldset>
        </form>
    </body>
    <%@include file="footer.jsp" %>
</html>
