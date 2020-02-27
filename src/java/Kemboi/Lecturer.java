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
public class Lecturer {
    private String FirstName;
    private String SecondName;
    private String Category;
    private String Department;
    private String Salutation;
    private String Password;
    private String LecturerID;
    private String username;

    public Lecturer(String FirstName, String SecondName, String Category, String Department, String Salutation, String Password, String LecturerID, String username) {
        this.FirstName = FirstName;
        this.SecondName = SecondName;
        this.Category = Category;
        this.Department = Department;
        this.Salutation = Salutation;
        this.Password = Password;
        this.LecturerID = LecturerID;
        this.username = username;
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String FirstName) {
        this.FirstName = FirstName;
    }

    public String getSecondName() {
        return SecondName;
    }

    public void setSecondName(String SecondName) {
        this.SecondName = SecondName;
    }

    public String getCategory() {
        return Category;
    }

    public void setCategory(String Category) {
        this.Category = Category;
    }

    public String getDepartment() {
        return Department;
    }

    public void setDepartment(String Department) {
        this.Department = Department;
    }

    public String getSalutation() {
        return Salutation;
    }

    public void setSalutation(String Salutation) {
        this.Salutation = Salutation;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getLecturerID() {
        return LecturerID;
    }

    public void setLecturerID(String LecturerID) {
        this.LecturerID = LecturerID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    
}
    