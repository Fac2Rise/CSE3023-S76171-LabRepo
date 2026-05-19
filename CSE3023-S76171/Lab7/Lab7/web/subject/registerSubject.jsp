<%-- 
    Document   : registerSubject
    Created on : May 19, 2026, 3:20:46 PM
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
        <h1>Register Your Subject</h1>
        
        <form action="${pageContext.request.contextPath}/SubjectServlet?action=add" method="POST">
            <label>Subject Name: </label>
            <input type="text" name="subjectName">
            
            <label>Subject Code: </label>
            <input type="text" name="subjectCode">
            
            <input type="submit" value="Register Subject">
        </form>
    </body>
</html>
