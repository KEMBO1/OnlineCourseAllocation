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
public class Courses {
    private int year;
    private int semester;
    private String coursecode;
    private String course_title;
    private int lecturing_hours;
    private int practicals_hours;
    private float cummulative;

    public Courses(int year, int semester, String coursecode, String course_title, int lecturing_hours, int practicals_hours, float cummulative) {
        this.year = year;
        this.semester = semester;
        this.coursecode = coursecode;
        this.course_title = course_title;
        this.lecturing_hours = lecturing_hours;
        this.practicals_hours = practicals_hours;
        this.cummulative = cummulative;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getSemester() {
        return semester;
    }

    public void setSemester(int semester) {
        this.semester = semester;
    }

    public String getCoursecode() {
        return coursecode;
    }

    public void setCoursecode(String coursecode) {
        this.coursecode = coursecode;
    }

    public String getCourse_title() {
        return course_title;
    }

    public void setCourse_title(String course_title) {
        this.course_title = course_title;
    }

    public int getLecturing_hours() {
        return lecturing_hours;
    }

    public void setLecturing_hours(int lecturing_hours) {
        this.lecturing_hours = lecturing_hours;
    }

    public int getPracticals_hours() {
        return practicals_hours;
    }

    public void setPracticals_hours(int practicals_hours) {
        this.practicals_hours = practicals_hours;
    }

    public float getCummulative() {
        return cummulative;
    }

    public void setCummulative(float cummulative) {
        this.cummulative = cummulative;
    }

}