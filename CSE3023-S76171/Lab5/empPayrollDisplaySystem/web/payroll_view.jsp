<%-- 
    Document   : payroll_view
    Created on : Apr 29, 2026, 2:03:24 PM
    Author     : junel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Payroll Display System</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
                background-color: #f4f4f4;
            }
            h2 {
                color: #333;
                text-align: center;
            }
            table {
                width: 80%;
                margin: 20px auto;
                border-collapse: collapse;
                background-color: #fff;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
            }
            th, td {
                padding: 12px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }
            th {
                background-color: #4CAF50;
                color: white;
                font-weight: bold;
            }
            tr:hover {
                background-color: #f5f5f5;
            }
            .senior {
                color: #2c7a4d;
                font-weight: bold;
            }
            .junior {
                color: #d9534f;
                font-weight: bold;
            }
            .no-data {
                text-align: center;
                color: #999;
                padding: 20px;
            }
        </style>
    </head>
    <body>
        <h2>Employee Payroll Display System</h2>
        
        <table>
            <thead>
                <tr>
                    <th>Employee ID</th>
                    <th>Name</th>
                    <th>Department</th>
                    <th>Basic Salary (RM)</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="employee" items="${employeeList}">
                    <tr>
                        <td>${employee.empId}</td>
                        <td>${employee.name}</td>
                        <td>${employee.department}</td>
                        <td>${employee.basicSalary}</td>
                        <td>
                            <c:choose>
                                <c:when test="${employee.basicSalary >= 3000}">
                                    <span class="senior">Senior</span>
                                </c:when>
                                <c:otherwise>
                                    <span class="junior">Junior</span>
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>

                <c:if test="${empty employeeList}">
                    <tr>
                        <td colspan="5" class="no-data">No employee records found.</td>
                    </tr>
                </c:if>
            </tbody>
        </table>
    </body>
</html>
