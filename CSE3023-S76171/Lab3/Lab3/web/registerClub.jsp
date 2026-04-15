<%-- 
    Document   : registerClub
    Created on : Apr 14, 2026, 4:45:05 PM
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
        <form id="memberFrm" action="processRegistration.jsp" method="post" onsubmit="return checkICNo()">
            <fieldset>
                <legend style="font-size: 1.5em;">Member Registration</legend>

                <label for="matricno">Matric No</label>
                <input type="text" id="matricno" name="my_matricNo" size="15" placeholder="E.g. S76171"><br><br>

                <label for="name">Name</label>
                <input type="text" id="name" name="my_name" size="45" placeholder="Key-in your name"><br><br>
                
                <label for="club">Club: </label>
                <select id="club" name="my_club" size="1">
                    <option value="0">Soccer</option>
                    <option value="1">Singing</option>
                    <option value="2">Basketball</option>
                    <option value="3">Dancing</option>
                    <option value="4">Track & field</option>
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
