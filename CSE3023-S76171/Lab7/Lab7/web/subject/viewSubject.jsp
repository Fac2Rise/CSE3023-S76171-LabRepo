<%-- 
    Document   : viewSubject
    Created on : May 19, 2026, 3:21:08 PM
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
        <section class="table-container">
                <table id="subjectTable"> <%-- Added ID here --%>
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Matric No</th>
                            <th>Subject Name</th>
                            <th>Subject Code</th>
                        </tr>
                    </thead>
                    <tbody id="subjectTableBody">
                        
                    </tbody>
                </table>
        </section>
    </body>
    
    <script src="viewSubject.js"></script>
</html>
