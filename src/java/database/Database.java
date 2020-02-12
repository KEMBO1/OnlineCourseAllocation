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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Keboi
 */
public class Database {
    private final String URL="jdbc:mysql://localhost:3306/onlinecourse-allocation";
	private final String USERNAME="root";
	private final String PASSWORD="S13/15330/16";
        private final String DRIVERCLASS="com.mysql.cj.jdbc.Driver";
        private final Connection connection;
        

    public Database() {
        this.connection=this.getConnection();
    }
        

	private   Connection getConnection() {

		try {
			Class.forName(DRIVERCLASS);
			return DriverManager.getConnection(URL,USERNAME,PASSWORD);
		} catch (ClassNotFoundException | SQLException e) {
                    System.out.println("Database.getConnection-->"+e);
		}
		return null;
	}
	
	
	
	public PreparedStatement getPreparedStatement(String sql) {
		PreparedStatement statement=null;
		try {
			statement = this.connection.prepareStatement(sql);
		} catch (SQLException e) {
                    System.out.println("error "+e.getMessage());
		}

		return statement;
	}
	
        
	public boolean insertToDB(PreparedStatement statement) {		
		try {
			return statement.executeUpdate()>0;			
		} catch (SQLException e) {
			// TODO: handle exception
                    System.out.println(" "+e.getMessage());
		}	
	
                return false;
	}
	
        
	public  void close() {
		try {this.connection.close();}
                catch (SQLException e) {System.out.println(" "+e.getMessage());}
	}
        
        
        public ResultSet retrieveInfo(PreparedStatement statement){
            try {
                return statement.executeQuery();
            } catch (SQLException ex) {
                Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            return null;
        }
	

}

    

