<%-- 
    Document   : feeCalculator
    Created on : Apr 14, 2026, 4:58:39 PM
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
        
        <form id="loanForm" method="get">
            <fieldset>
                <%
                    String num1 = request.getParameter("myActivity");
                    int num2 = 0;

                    if (num1 != null && !num1.isEmpty()) {
                        try {
                            num2 = Integer.parseInt(num1);
                        } catch (NumberFormatException e) {
                            num2 = 0;  // Default value if not a number
                        }
                    }

                    int result = num2 * 10;
                %>
                
                <legend>Membership Fee Calculation</legend>

                <label for="numActivity">Number of Activity *</label>
                <input type="text" id="numActivity" name="myActivity"/><br>
                
                <p>
                    <input type="submit" id="btnSubmit" value="Submit">
                    <input type="reset" id="btnCancel" value="Cancel">
                </p>
            </fieldset>
        </form>
                
        Total Fees = <%= result + ""%>
    </body>
    <%@include file="footer.jsp" %>
</html>
