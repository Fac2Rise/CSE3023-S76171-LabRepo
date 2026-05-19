<%-- 
    Document   : dashboard
    Created on : May 19, 2026, 3:19:12 PM
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
            session = request.getSession();
            String matricNo = (String) session.getAttribute("matricNo");
            System.out.println(matricNo);
            
            if(matricNo == null){
                response.sendRedirect("login.html");
                return;
            }
        %>
        
        <div class="container d-flex justify-content-center align-items-center" style="min-height: 100vh;">
            <div class="card shadow-lg border-0 rounded-4 p-4 p-md-5 text-center" style="max-width: 600px; width: 100%;">
                <div class="card-body">
                <h2 class="fw-bold text-dark mb-2">Welcome, ${matricNo}!</h2>
                <p class="text-muted fs-5 mb-4">Matric Number: <strong class="text-secondary">${matricNo}</p>
                    <div class="d-flex justify-content-center gap-3 flex-wrap">
                        <a href="login.html" class="btn btn-dark px-4 py-2 fw-semibold">Logout</a>
                        <a href="subject/registerSubject.jsp" class="btn btn-dark px-4 py-2 fw-semibold">Register Subject</a>
                        <a href="subject/viewSubject.jsp" class="btn btn-dark px-4 py-2 fw-semibold">View Subject</a>
                    </div>
                </div>
            </div>
        </div>
                    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
