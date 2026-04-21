<%-- 
    Document   : processBMI
    Created on : Apr 21, 2026, 3:56:00 PM
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
        <%
            String w = request.getParameter("weight");
            String h = request.getParameter("height");
            
            double weight = Double.parseDouble(w);
            double height = Double.parseDouble(h);
            
            double bmi = -1;
            bmi = weight / (height * height);
            
            String category = "Normal";
            
            if(bmi < 18.5){
                category = "Underweight";
            } else if (bmi < 25){
                category = "Normal";
            } else {
                category = "Overweight";
            }
        %>
        
        <jsp:forward page="bmiResult.jsp">
            <jsp:param name="weight" value="<%= weight%>"/>
            <jsp:param name="height" value="<%= height%>"/>
            <jsp:param name="bmi" value="<%= bmi%>"/>
            <jsp:param name="category" value="<%= category%>"/>
        </jsp:forward>
    </body>
</html>
