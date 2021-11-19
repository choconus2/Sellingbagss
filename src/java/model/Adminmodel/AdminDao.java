/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.Adminmodel;

import Database.Dbcontext;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hieun
 */
public class AdminDao {
    public ArrayList<Admin> GetAdmin(){

        ArrayList<Admin> Admins=new ArrayList<Admin>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Dbcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        try (
                    
                    Connection connection = Dbcontext.getConnection();
                    Statement stmt = connection.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM admin ");) {

                while (rs.next()) {
                    Integer idadmin=rs.getInt("Adminid");
                    String adminName=rs.getString("AdminName");
                    String password=rs.getString("Password");
                    String phone=rs.getString("Phone");
                    String email=rs.getString("Email");
                    
                    
                    Admin pr=new Admin(idadmin,adminName,password,phone,email);
                    Admins.add(pr);
                }           
            } catch (Exception e) {
               
                System.err.println(e.getMessage());
            } finally{
                    return Admins;
                }

        
    }
}
