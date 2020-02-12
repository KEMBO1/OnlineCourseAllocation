/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Kemboi.CourseAllocation;
import com.sun.xml.internal.fastinfoset.EncodingConstants;
import database.controller.DAOcontroller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Keboi
 */
@WebServlet(name = "AddCourseAllocation", urlPatterns = {"/AddCourseAllocation"})
public class AddCourseAllocation extends HttpServlet {

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
      
        int LecturerID=Integer.parseInt(request.getParameter("lecturerID"));
        String CourseID=request.getParameter("courseID");
        int DepartmentID=Integer.parseInt(request.getParameter("departmentID"));
        int SemesterID=Integer.parseInt(request.getParameter("semesterID"));
        int YearID=Integer.parseInt(request.getParameter("yearID"));
       
        System.out.println(LecturerID);
        CourseAllocation alloc= new CourseAllocation(LecturerID,CourseID,DepartmentID,SemesterID,YearID);
        DAOcontroller aOcontroller = new DAOcontroller();
        aOcontroller.addCourseAllocation(alloc);
        
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
