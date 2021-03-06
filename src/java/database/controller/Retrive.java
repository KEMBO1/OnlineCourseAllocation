/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database.controller;

import Kemboi.Category;
import Kemboi.CourseAllocation;
import Kemboi.Courses;
import Kemboi.Department;
import Kemboi.Lecturer;
import Kemboi.Login;
import Kemboi.SemesterOfStudy;
import Kemboi.YearOfStudy;
import database.Database;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Keboi
 */
public class Retrive {
    public ArrayList<CourseAllocation> viewAllocations(){
                    ArrayList<CourseAllocation>  allocations=new ArrayList<>();

        try {
            String query="SELECT * FROM `course-allocation-table`";
            
            Database db =new Database();
            PreparedStatement statemnt=db.getPreparedStatement(query);
            
            ResultSet resultSet=db.retrieveInfo(statemnt);
            
            while(resultSet.next()){
            
                
                CourseAllocation allocation = new CourseAllocation(resultSet.getInt(1), resultSet.getString(2),resultSet.getInt(3),resultSet.getInt(4),resultSet.getInt(5), resultSet.getInt(6));
                allocations.add(allocation);
//                public CourseAllocation(int LecturerID, int CourseID, int DepartmentID, int SemesterID, int YearID, int AllocationID)
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Retrive.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return allocations;

    }
   public ArrayList<Courses> viewCourseses(){
              ArrayList<Courses> courseses= new ArrayList<>();
              
              try {
           String query="SELECT * FROM `course_stable`";
           
           Database db=new Database();
           PreparedStatement statemnt=db.getPreparedStatement(query);
           
           ResultSet resultSet=db.retrieveInfo(statemnt);
           while(resultSet.next()){
               Courses courses=new Courses(resultSet.getInt(1),resultSet.getInt(2),resultSet.getString(3),resultSet.getString(4),resultSet.getInt(5),resultSet.getInt(6),resultSet.getFloat(7));
               courseses.add(courses);
//               public Courses(int year, int semester, String coursecode, String course_title, int lecturing_hours, int practicals_hours, float cummulative)
           }
              }catch(SQLException ex){
                  Logger.getLogger(Retrive.class.getName()).log(Level.SEVERE,null,ex);
                 
              }
              return courseses;
           }
   public ArrayList<Department> viewdepartment(){
       ArrayList<Department> departments=new ArrayList<>();
       
       try {
           String query="SELECT * FROM `department`";
           Database db=new Database();
           PreparedStatement statemnt=db.getPreparedStatement(query);
           
           ResultSet resultSet=db.retrieveInfo(statemnt);
           
           while(resultSet.next()){
               Department department=new Department(resultSet.getString(1), resultSet.getInt(2));
               departments.add(department);
           }
       } catch (SQLException ex) {
           Logger.getLogger(Retrive.class.getName()).log(Level.SEVERE,null,ex);
       }
       return departments;
   }
   public ArrayList<Lecturer> viewLecturers(){
       ArrayList<Lecturer> lecturers = new ArrayList<>();
       
       try {
           String query="SELECT * FROM `lecturer`";
           Database db=new Database();
           PreparedStatement statemnt=db.getPreparedStatement(query);
           
           ResultSet resultSet=db.retrieveInfo(statemnt);
           
           while(resultSet.next()){
               Lecturer lecturer=new Lecturer(resultSet.getString(1), 
                       resultSet.getString(2), resultSet.getString(3), 
                       resultSet.getString(4), resultSet.getString(5), 
                       resultSet.getString(6), resultSet.getString(7),resultSet.getString(8));
               lecturers.add(lecturer);
           }
       } catch (SQLException ex) {
           Logger.getLogger(Retrive.class.getName()).log(Level.SEVERE,null,ex);
       }
       return lecturers;
   }
   public ArrayList<Category> viewCategorys(){
   ArrayList<Category> categorys = new ArrayList<>();
   
       try {
           String query = "SELECT * FROM `category`";
           Database db=new Database();
           PreparedStatement statemnt=db.getPreparedStatement(query);
           
           ResultSet resultSet = db.retrieveInfo(statemnt);
           
           while(resultSet.next()){
           Category category=new Category(resultSet.getInt(1), resultSet.getString(2));
           categorys.add(category);
           }
       } catch (SQLException ex) {
           Logger.getLogger(Retrive.class.getName()).log(Level.SEVERE, null,ex);
       }
       return categorys;
   }
   public ArrayList<SemesterOfStudy> viewSemesterOfStudys(){
       ArrayList<SemesterOfStudy> semesterOfStudys = new ArrayList<>();
       
       try {
           String query="SELECT * FROM `semester-of-study`";
           Database db=new Database();
           
           PreparedStatement statemnt=db.getPreparedStatement(query);
           
           ResultSet resultSet=db.retrieveInfo(statemnt);
           
           while(resultSet.next()){
               SemesterOfStudy semesterOfStudy=new SemesterOfStudy(resultSet.getInt(1), resultSet.getString(2));
               semesterOfStudys.add(semesterOfStudy);
           }
           
       } catch (SQLException ex) {
           Logger.getLogger(Retrive.class.getName()).log(Level.SEVERE,null,ex);
           
       }
       return semesterOfStudys;
   }
   
   public ArrayList<YearOfStudy> viewOfStudys(){
       ArrayList<YearOfStudy> ofStudys=new ArrayList<>();
       
       try {
           String query="SELECT * FROM `year-of-study`";
           Database db= new Database();
           PreparedStatement statemnt=db.getPreparedStatement(query);
           
           ResultSet resultSet=db.retrieveInfo(statemnt);
           
           while(resultSet.next()){
               YearOfStudy ofStudy=new YearOfStudy(resultSet.getInt(1), resultSet.getString(2));
               ofStudys.add(ofStudy);
           }
       } catch (SQLException ex) {
           Logger.getLogger(Retrive.class.getName()).log(Level.SEVERE, null,ex);
           
       }
        return ofStudys;
       }   
   
//    public ArrayList<Login> ViewLogins(){
//        ArrayList<Login> logins=new ArrayList<>();
//        
//        try {
//            String query="SELECT * FROM 'login'";
//            Database db=new Database();
//            PreparedStatement statemnt=db.getPreparedStatement(query);
//            
//            ResultSet resultSet=db.retrieveInfo(statemnt);
//            
//            while(resultSet.next()){
//                Login login=new Login(resultSet.getString(1), resultSet.getString(2));
//                login.add(login);
//            }
//        } catch (Exception e) {
//        }
//        
//    }
   
  }
  
    
    

