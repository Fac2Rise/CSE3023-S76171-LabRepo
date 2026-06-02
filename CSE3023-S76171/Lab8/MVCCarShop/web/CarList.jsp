<%-- 
    Document   : CarList
    Created on : Jun 2, 2026, 3:03:43 PM
    Author     : junel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Employee Management Application</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-md navbar-dark"
            style="background-color: tomato">
                <div>
                    <a href="<%=request.getContextPath()%>/list" class="navbar-brand"> Car Management App </a>
                </div>
                
                <ul class="navbar-nav">
                    <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Cars</a></li>
                </ul>
            </nav>
        </header><br>
        
        <div class="row">
            <div class="container">
                <h3 class="text-center">List of Cars</h3>
                <hr>
                <div class="container text-left">
                    <a href="<%=request.getContextPath()%>/new"
                    class="btn btn-success">Add New Car</a>
                </div>
                <br>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Brand</th>
                            <th>Model</th>
                            <th>Cylinder</th>
                            <th>Price</th>
                            <th>Actions</th>
                        </tr>
                    </thead>

                    <tbody>
                        <c:forEach var="car" items="${listCar}">
                            <tr>
                                <td><c:out value="${car.carId}"/></td>
                                <td><c:out value="${car.brand}"/></td>
                                <td><c:out value="${car.model}"/></td>
                                <td><c:out value="${car.cylinder}" /></td>
                                <td><c:out value="${car.price}" /></td>
                                <td>
                                    <a href="edit?id=<c:out value='${car.carId}' />">Edit</a>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="delete?id=<c:out value='${car.carId}' />">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
