/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import bean.Employee;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author junel
 */
public class PayrollServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PayrollServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PayrollServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List <Employee> employeeList = new ArrayList<>();
        
        Employee emp1 = new Employee();
        emp1.setEmpId("EMP1");
        emp1.setName("Jonathan");
        emp1.setDepartment("Management");
        emp1.setBasicSalary(4000.00);
        
        employeeList.add(emp1);
        
        Employee emp2 = new Employee();
        emp2.setEmpId("EMP2");
        emp2.setName("Ethan");
        emp2.setDepartment("Management");
        emp2.setBasicSalary(5000.00);
        
        employeeList.add(emp2);
        
        Employee emp3 = new Employee();
        emp3.setEmpId("EMP3");
        emp3.setName("Michael");
        emp3.setDepartment("IT");
        emp3.setBasicSalary(6000.00);
        
        employeeList.add(emp3);
        
        Employee emp4 = new Employee();
        emp4.setEmpId("EMP4");
        emp4.setName("Rachel");
        emp4.setDepartment("IT");
        emp4.setBasicSalary(2000.00);
        
        employeeList.add(emp4);
        
        Employee emp5 = new Employee();
        emp5.setEmpId("EMP5");
        emp5.setName("Susan");
        emp5.setDepartment("Logistics");
        emp5.setBasicSalary(1500.00);
        
        employeeList.add(emp5);
        
        request.setAttribute("employeeList", employeeList);
        
        RequestDispatcher rd = request.getRequestDispatcher("payroll_view.jsp");
        rd.forward(request, response);
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
