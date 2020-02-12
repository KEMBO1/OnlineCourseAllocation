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
public class SemesterOfStudy {
    private int SemesterID;
    private String SemesterName;

    public SemesterOfStudy(int SemesterID, String SemesterName) {
        this.SemesterID = SemesterID;
        this.SemesterName = SemesterName;
    }

    public int getSemesterID() {
        return SemesterID;
    }

    public void setSemesterID(int SemesterID) {
        this.SemesterID = SemesterID;
    }

    public String getSemesterName() {
        return SemesterName;
    }

    public void setName(String SemesterName) {
        this.SemesterName = SemesterName;
    }
    
    
    
}
