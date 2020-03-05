/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Kemboi.Login;
import database.controller.DAOcontroller;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

    private String category;

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
       
    
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String Username=request.getParameter("username");
        String Category=request.getParameter("category");
        String Password=request.getParameter("password");
        
        PrintWriter out = response.getWriter();
         out.print(Category);
       Login LOGIN =new Login(Username,Category, Password);
        DAOcontroller aOcontroller=new DAOcontroller();
        if(Category.equals("Hod")){
            Boolean answer1= aOcontroller.login(Username,Category, Password, "lecturer");
            
            if (answer1==true) {
            
            HttpSession session = request.getSession();
            session.setAttribute("username", Username);
            
            RequestDispatcher dispatcher= getServletContext().getRequestDispatcher("/Hodtasks.jsp");
        
            dispatcher.forward(request, response);
//            PrintWriter out = response.getWriter();
//            out.print("Yess");
        }

       
    }else{
        Boolean answer= aOcontroller.login(Username,Category, Password, "lecturer");
            
            if (answer==true) {
            
            HttpSession session = request.getSession();
            session.setAttribute("username", Username);
            
            RequestDispatcher dispatcher= getServletContext().getRequestDispatcher("/index_1.jsp");
        
            dispatcher.forward(request, response);
//            PrintWriter out = response.getWriter();
//            out.print("Yess");
        }    

  }  
} 
}
