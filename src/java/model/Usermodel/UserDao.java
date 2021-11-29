/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.Usermodel;

import Database.Dbcontext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hieun
 */
public class UserDao {
    public ArrayList<User> LoginUser(){
        
        ArrayList<User> Users=new ArrayList<User>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Dbcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        try (
                    
                    Connection connection = Dbcontext.getConnection();
                    Statement stmt = connection.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM user ");) {

                while (rs.next()) {
                    String UserName=rs.getString("UserName");
                    String Email=rs.getString("Email");
                    String Password=rs.getString("Password");
                    String status=rs.getString("status");                                      
                    User pr=new User(UserName, Password, Email, status);
                    Users.add(pr);
                }           
            } catch (Exception e) {
               
                System.err.println(e.getMessage());
            } finally{
                    return Users;
                }

        
    }
    
    public void SignupUser(User Users) {        
        try {   
            Dbcontext.getConnection();            
            String sql = "INSERT INTO user(UserName, Password,Email,Phone,Address,status) VALUES(?, ?, ?, ?, ?, ?)";
            PreparedStatement  statement = (PreparedStatement) Dbcontext.getConnection().prepareStatement(sql);           
            statement.setString(1, Users.getUserName());
            statement.setString(2, Users.getPassword());
            statement.setString(3, Users.getEmail());
            statement.setString(4, Users.getPhone());
            statement.setString(5, Users.getAddress());
            statement.setString(6, Users.getStatus());
            statement.executeUpdate();                        
            System.out.println("insert data successfully");
        } catch(SQLException ex) {
            System.err.println("Error in SQL: "+ex.toString());
        }                
    }
    
}
