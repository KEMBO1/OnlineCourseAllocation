/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Kemboi;

/**
 *
 * @author Keboi
 */
public class CourseAllocation {
    private int LecturerID;
    private String CourseID;
    private int DepartmentID;
    private int SemesterID;
    private int YearID;
    private int AllocationID;
    
     public CourseAllocation(){
     
     }
    

    public CourseAllocation(int LecturerID, String CourseID, int DepartmentID, int SemesterID, int YearID) {
        this.LecturerID = LecturerID;
        this.CourseID = CourseID;
        this.DepartmentID = DepartmentID;
        this.SemesterID = SemesterID;
        this.YearID = YearID;
       
    }

   public CourseAllocation(int LecturerID, String CourseID, int DepartmentID, int SemesterID,int YearID, int  AllocationID) {
        this.LecturerID = LecturerID;
        this.CourseID = CourseID;
        this.DepartmentID = DepartmentID;
        this.SemesterID = SemesterID;
        this.YearID = YearID;
        this.AllocationID= AllocationID;

    }

    public int getLecturerID() {
        return LecturerID;
    }

    public void setLecturerID(int LecturerID) {
        this.LecturerID = LecturerID;
    }

    public String getCourseID() {
        return CourseID;
    }

    public void setCourseID(String CourseID) {
        this.CourseID = CourseID;
    }

    public int getDepartmentID() {
        return DepartmentID;
    }

    public void setDepartmentID(int DepartmentID) {
        this.DepartmentID = DepartmentID;
    }

    public int getSemesterID() {
        return SemesterID;
    }

    public void setSemesterID(int SemesterID) {
        this.SemesterID = SemesterID;
    }

    public int getYearID() {
        return YearID;
    }

    public void setYearID(int YearID) {
        this.YearID = YearID;
    }

    public int getAllocationID() {
        return AllocationID;
    }

    public void setAllocationID(int AllocationID) {
        this.AllocationID = AllocationID;
    }
    
    
}
