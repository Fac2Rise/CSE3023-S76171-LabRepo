/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import com.google.gson.Gson;
import dao.SubjectDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.SubjectBean;

/**
 *
 * @author junel
 */
public class SubjectServlet extends HttpServlet {
    
    private SubjectDAO sDAO;
    
    @Override
    public void init () {
        sDAO = new SubjectDAO();
    }

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
            out.println("<title>Servlet SubjectServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SubjectServlet at " + request.getContextPath() + "</h1>");
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
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        
        HttpSession session = request.getSession(false);
        String matricNo = (String) session.getAttribute("matricNo");
        
        try {
            List<SubjectBean> subjectList = sDAO.getSubjectByMatric(matricNo);
            
            if(subjectList == null) {
                subjectList = new ArrayList<>();
            }
            
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");

            Gson gson = new Gson();
            String json = gson.toJson(subjectList);

            // 4. Write to response
            response.getWriter().print(json);
            
        } catch (Exception e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().print("{\"error\": \"" + e.getMessage() + "\"}");
        }
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
        String action = request.getParameter("action");
        HttpSession session = request.getSession(false);
        
        if("add".equals(action)){
            String subjectName = request.getParameter("subjectName");
            String subjectCode = request.getParameter("subjectCode");
            String matricNo = (String) session.getAttribute("matricNo");
            
            boolean success = sDAO.registerSubject(matricNo, subjectName, subjectCode);
            
            if(success) {
                response.sendRedirect("subject/viewSubject.jsp");
            } else {
                response.sendRedirect("subject/registerSubject.jsp");
            }
        }
        
        if("update".equals(action)){
            String id = request.getParameter("id");
            String subjectName = request.getParameter("subjectName");
            String subjectCode = request.getParameter("subjectCode");
            
            boolean updated = sDAO.updateSubject(id, subjectName, subjectCode);
            
            if(updated){
                response.sendRedirect("subject/viewSubject.jsp");
            } else {
                response.sendRedirect("subject/registerSubject.jsp");
            }
        }
        
        if("delete".equals(action)){
            String id = request.getParameter("id");
            
            boolean deleted = sDAO.deleteSubject(id);
            
            if(deleted){
                response.sendRedirect("subject/viewSubject.jsp");
            } else {
                response.sendRedirect("subject/dashboard.jsp");
            }
        }
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
