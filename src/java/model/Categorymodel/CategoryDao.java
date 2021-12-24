/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.Categorymodel;

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
public class CategoryDao {
    public ArrayList<Category> GetCategory(int x){
        
        ArrayList<Category> Categorys=new ArrayList<Category>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Dbcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        try (
                    
                    Connection connection = Dbcontext.getConnection();
                    Statement stmt = connection.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM category ORDER BY Categoryid DESC  LIMIT "+x+",6");) {

                while (rs.next()) {
                    Integer Categoryid=rs.getInt("Categoryid");
                    String CategoryName=rs.getString("CategoryName");
                    
                    
                    Category pr=new Category(Categoryid,CategoryName);
                    Categorys.add(pr);
                }           
            } catch (Exception e) {
               
                System.err.println(e.getMessage());
            } finally{
                    return Categorys;
                }

        
    }
    public ArrayList<Category> CountCategory(){
        
        ArrayList<Category> Categorys=new ArrayList<Category>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Dbcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        try (
                    
                    Connection connection = Dbcontext.getConnection();
                    Statement stmt = connection.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM category ");) {

                while (rs.next()) {
                    Integer Categoryid=rs.getInt("Categoryid");
                    String CategoryName=rs.getString("CategoryName");
                    
                    
                    Category pr=new Category(Categoryid,CategoryName);
                    Categorys.add(pr);
                }           
            } catch (Exception e) {
               
                System.err.println(e.getMessage());
            } finally{
                    return Categorys;
                }

        
    }
    
    public ArrayList<Category> GetCategory2(int x){
        
        ArrayList<Category> Categorys=new ArrayList<Category>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Dbcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        try (
                    
                    Connection connection = Dbcontext.getConnection();
                    Statement stmt = connection.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM category WHERE Categoryid="+x);) {

                while (rs.next()) {
                    Integer Categoryid=rs.getInt("Categoryid");
                    String CategoryName=rs.getString("CategoryName");
                    
                    
                    Category pr=new Category(Categoryid,CategoryName);
                    Categorys.add(pr);
                }           
            } catch (Exception e) {
               
                System.err.println(e.getMessage());
            } finally{
                    return Categorys;
                }

        
    }
    
    public void InsertCategory(Category Categorys) {        
        try {   
            Dbcontext.getConnection();            
            String sql = "INSERT INTO category(CategoryName) VALUES(?)";
            PreparedStatement  statement = (PreparedStatement) Dbcontext.getConnection().prepareStatement(sql);           
            statement.setString(1, Categorys.getCategoryName());
            statement.executeUpdate();                        
            System.out.println("insert data successfully");
        } catch(SQLException ex) {
            System.err.println("Error in SQL: "+ex.toString());
        }                
    }
    
    public void UpdateCategory(Category Categorys) {        
        try {   
            Dbcontext.getConnection();            
            String sql = "UPDATE category SET CategoryName=? WHERE Categoryid=?";
            PreparedStatement  statement = (PreparedStatement) Dbcontext.getConnection().prepareStatement(sql);           
            statement.setString(1, Categorys.getCategoryName());
            statement.setInt(2, Categorys.getCategoryid());
            statement.executeUpdate();                        
            System.out.println("Update data successfully");
        } catch(SQLException ex) {
            System.err.println("Error in SQL: "+ex.toString());
        }                
    }
}
