/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Kemboi;

import java.util.Date;

/**
 *
 * @author Keboi
 */
public class YearOfStudy {
    private int YearID;
    private String YearName;

    public YearOfStudy(int YearID, String YearName) {
        this.YearID = YearID;
        this.YearName = YearName;
    }
    
    public YearOfStudy(int YearID) {
        this.YearID = YearID;
        this.YearName = generateYear();
    }
    
    
    private String generateYear(){
        Date date=new Date();
        
        int current_year=date.getYear()+1900;
        int previous_year=current_year-1;
        int next_year=current_year+1;
        
        int month=date.getMonth()+1;
        
        String year_of_study=(month<7)?""+previous_year+"/"+current_year:
                              ""+current_year+"/"+next_year;
        
        return year_of_study;
    }

    public int getYearID() {
        return YearID;
    }

    public String getYearName() {
        return YearName;
    }

    public void setName(String YearName) {
        this.YearName = YearName;
    }
    
    
    
}
