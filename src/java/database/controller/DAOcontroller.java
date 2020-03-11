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
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.tomcat.jni.User;

/**
 *
 * @author Keboi
 */
public class DAOcontroller {
    public boolean addCourse(Courses course){
        String query= "INSERT INTO `onlinecourse-allocation`.`course_stable` (`year`, `semester`, `course code`, `Course title`, `lecturing hours`, `practical hours`, `Cummulative`) VALUES ('"+course.getYear()+"',"
                + " '"+course.getSemester()+"',"
                + " '"+course.getCoursecode()+"',"
                + " '"+course.getCourse_title()+"', '"+course.getLecturing_hours()+"', '"+course.getPracticals_hours()+"', '"+course.getCummulative()+"')";
        
        Database db = new Database();
        
        PreparedStatement statemnt=db.getPreparedStatement(query);
        
        return db.insertToDB(statemnt);
               
    }

    public boolean addCategory(Category cate ){
        String query="INSERT INTO `onlinecourse-allocation`.`category` (`categoryID`, `category`) VALUES ('"+cate.getCategory()+"', "
                + "'"+cate.getCategoryID()+"')";
        
        Database db=new Database();
        PreparedStatement statemnt=db.getPreparedStatement(query);
        return db.insertToDB(statemnt);
    }
    
    public boolean addLecturer(Lecturer lec){
        String query="INSERT INTO `onlinecourse-allocation`.`lecturer`"
                + " (`FirstName`, `SecondName`,`user_name`, `Category`, `Department`, "
                + "`Salutation`, `Password`"
                + ") VALUES ('"+lec.getFirstName()+"', '"+lec.getSecondName()+"','"+lec.getUsername()+"',"
                + " '"+lec.getCategory()+"', "
                + "'"+lec.getDepartment()+"', "
                + "'"+lec.getSalutation()+"', '"+lec.getPassword()+"')";
        
        System.out.println(query);
        
        Database db =new Database();
        PreparedStatement statemnt=db.getPreparedStatement(query);
        return db.insertToDB(statemnt);
        
    }
    public boolean addCourseAllocation(CourseAllocation alloc){
        
        
        
        String query="INSERT INTO `onlinecourse-allocation`.`course-allocation-table`"
                + " (`LecturerID`, `CourseID`, `DepartmentID`,"
                + " `SemesterID`, `YearID`) VALUES ('"+alloc.getLecturerID()+"', '"+alloc.getCourseID()+"', '"+alloc.getDepartmentID()+"',"
                + " '"+alloc.getSemesterID()+"', '"+alloc.getYearID()+"')";
        
        Database db= new Database();
        PreparedStatement statemnt=db.getPreparedStatement(query);
        return db.insertToDB(statemnt);
    }
    
    public boolean AddDepartment(Department depart){
        String query="INSERT INTO `onlinecourse-allocation`.`department` (`DepartmentName`, "
                + "`DepartmentID`) "
                + "VALUES ('"+depart.getDepartmentName()+"',"
                + " '"+depart.getDepartmentID()+"')";
        
        Database db=new Database();
        PreparedStatement statemnt=db.getPreparedStatement(query);
       return db.insertToDB(statemnt);
    }
    public boolean AddSemesterOfStudy(SemesterOfStudy sem){
        String query="INSERT INTO `onlinecourse-allocation`."
                + "`semester-of-study` "
                + "(`SemesterID`, `SemesterName`) VALUES ('"+sem.getSemesterID()+"', '"+sem.getSemesterName()+"')";
        
        Database db=new Database();
        PreparedStatement statemnt=db.getPreparedStatement(query);
        return db.insertToDB(statemnt);
    }
    public boolean AddYearOfStudy(YearOfStudy yofs){
        String query="INSERT INTO `onlinecourse-allocation`."
                + "`year-of-study` (`YearID`, "
                + "`YearName`) VALUES ('"+yofs.getYearID()+"', '"+yofs.getYearName()+"')";
        
        Database db=new Database();
        PreparedStatement statemnt=db.getPreparedStatement(query);
        return db.insertToDB(statemnt);
    }
    
        public  boolean login(String username, String category,String password, String table){
//            String query="select from `onlinecourse-allocation`.`lecturer` where LecturerID='"+login.getUsername()+"' and Password= '"+login.getPassword()+"'";
//            System.out.println(query);
//             Boolean answer=false;       
//            Database db=new Database();
//            PreparedStatement statemnt=db.getPreparedStatement(query);
//            
//            
//        try {
//            ResultSet resultSet=statemnt.executeQuery();
//            if(resultSet.next()){
//               answer=true;
//                
//            }
//        } catch (SQLException ex) {
//            
//             answer=false;
//            Logger.getLogger(DAOcontroller.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        
//        return answer;
//        }
    PreparedStatement pst = null;
    ResultSet rs = null;
            Connection con = null;
            
            
            String query = "select * from "+table+" where user_name = ? and Category = ? and Password = ?";
            
            Database db=new Database();
            
          con = db.getConnection();
          
            try {
                pst = con.prepareStatement(query);
                pst.setString(1, username);
                pst.setString(2, category);
                pst.setString(3, password);
                
                rs = pst.executeQuery();
                
                if(rs.next()){
                    return true;
                }else
                    return false;
            } catch (Exception e) {
                System.out.println("error" + e.toString());
            }
      return true;

        
        }
        public List<YearOfStudy> get_years(){
            PreparedStatement pst = null;
            ResultSet rs = null;
            Connection con = null;
            List<YearOfStudy> model = new ArrayList<>();
            String sql = "select * from `onlinecourse-allocation`.`year-of-study`";
            
            Database db=new Database();
            
           con = db.getConnection();
           
            try {
                pst = con.prepareStatement(sql);
                rs = pst.executeQuery();
                
                while (rs.next()) {
                    YearOfStudy y = new YearOfStudy();
                    y.setName(rs.getString("YearName"));
                    model.add(y);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return  model;
            }
    }
