/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database.controller;

import Kemboi.CourseAllocation;
import Kemboi.Courses;
import Kemboi.Department;
import Kemboi.Lecturer;
import Kemboi.SemesterOfStudy;
import Kemboi.YearOfStudy;
import database.Database;
import java.sql.PreparedStatement;

/**
 *
 * @author Keboi
 */
public class DAOcontroller {
    public boolean addCourse(Courses course){
        String query= "INSERT INTO `onlinecourse-allocation`.`courses` "
                + "(`CourseName`, `UnitCode`) "
                + "VALUES ('"+course.getCourseName()+"', '"+course.getUnitCode()+"')";
        
        Database db = new Database();
        
        PreparedStatement statemnt=db.getPreparedStatement(query);
        
        return db.insertToDB(statemnt);
               
    }
    public boolean addLecturer(Lecturer lec){
        String query="INSERT INTO `onlinecourse-allocation`.`lecturer`"
                + " (`FirstName`, `SecondName`, `Category`, `Department`, "
                + "`Salutation`, `Password`"
                + ") VALUES ('"+lec.getFirstName()+"', '"+lec.getSecondName()+"',"
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
}
