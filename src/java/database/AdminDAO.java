/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Keboi
 */
public class AdminDAO {
    String URL="jdbc:mysql://localhost:3306/onlinecourse-allocation";
    String USERNAME="root";
    String PASSWORD="S13/15330/16";
    Connection connection;
    
    PreparedStatement statement;
    
    public Boolean check(String Username,String Password) throws SQLException{
        try {
            
        
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection=DriverManager.getConnection(URL, USERNAME, PASSWORD);
        statement=connection.prepareStatement("SELECT * FROM `category` where Username=? and Password=?");
        statement.setString(1, Username);
        statement.setString(2, Password);
        
            ResultSet resultSet=statement.executeQuery();
            if (resultSet.next()==true) {
                return true;
                
            } 
        
        }catch(Exception e) {
    e.printStackTrace();
        }
    return false;
    }
    
}
