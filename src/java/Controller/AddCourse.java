/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Kemboi.Courses;
import database.controller.DAOcontroller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Keboi
 */
@WebServlet(name = "AddCourse", urlPatterns = {"/AddCourse"})
public class AddCourse extends HttpServlet {

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int year=Integer.parseInt(request.getParameter("year"));
        int semester=Integer.parseInt(request.getParameter("semester"));
        String Coursecode=request.getParameter("coursecode");
        String course_title=request.getParameter("course_title");
        int lecturing_hours=Integer.parseInt(request.getParameter("lecturing_hours"));
        int practicals_hours=Integer.parseInt(request.getParameter("practicals_hours"));
        float cummulative=Integer.parseInt(request.getParameter("cummulative"));
        
        
            Courses  course= new Courses(year,semester,Coursecode,course_title,lecturing_hours,practicals_hours,cummulative);
            
            DAOcontroller aOcontroller = new DAOcontroller();
            
            aOcontroller.addCourse(course);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int year=Integer.parseInt(request.getParameter("year"));
        int semester=Integer.parseInt(request.getParameter("semester"));
        String Coursecode=request.getParameter("coursecode");
        String course_title=request.getParameter("course_title");
        int lecturing_hours=Integer.parseInt(request.getParameter("lecturing_hours"));
        int practicals_hours=Integer.parseInt(request.getParameter("practicals_hours"));
        float cummulative=Integer.parseInt(request.getParameter("cummulative"));
        
        
            Courses  course= new Courses(year,semester,Coursecode,course_title,lecturing_hours,practicals_hours,cummulative);
            
            DAOcontroller aOcontroller = new DAOcontroller();
            
            aOcontroller.addCourse(course);
            
      RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/Hodtasks.jsp");
        
        dispatcher.forward(request, response); 
        
        
            
    }
    
    
        
    

} 

