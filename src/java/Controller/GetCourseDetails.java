/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Kemboi.Courses;
import Kemboi.Department;
import Kemboi.Lecturer;
import Kemboi.SemesterOfStudy;
import Kemboi.YearOfStudy;
import database.controller.Retrive;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Keboi
 */
@WebServlet(name = "GetCourseDetails", urlPatterns = {"/GetCourseDetails"})
public class GetCourseDetails extends HttpServlet {

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
            
        HttpSession session=request.getSession();
        
        Retrive retrive=new Retrive();
        ArrayList<Lecturer> lecturers=retrive.viewLecturers();
        ArrayList<Courses> courseses=retrive.viewCourseses();
        ArrayList<Department> departments=retrive.viewdepartment();
        ArrayList<SemesterOfStudy> semesterOfStudys=retrive.viewSemesterOfStudys();
        ArrayList<YearOfStudy> yearOfStudys=retrive.viewOfStudys();
         YearOfStudy yos=new YearOfStudy(2021);
        
        session.setAttribute("lectures", lecturers);
        session.setAttribute("courseses", courseses);
        session.setAttribute("departments", departments);
        session.setAttribute("semesterOfStudys", semesterOfStudys);
        session.setAttribute("yearOfStudys", yearOfStudys);
        session.setAttribute("yos", yos);

        
        
        RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/HodtaskCourseAllocation.jsp");
        
        dispatcher.forward(request, response);
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
        processRequest(request, response);
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
