/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.Brandmodel;

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
public class BrandDao {
    public ArrayList<Brand> GetBrand(int x){
        
        ArrayList<Brand> Brands=new ArrayList<Brand>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Dbcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        try (
                    
                    Connection connection = Dbcontext.getConnection();
                    Statement stmt = connection.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM brand ORDER BY Brandid DESC  LIMIT "+x+",2");) {

                while (rs.next()) {
                    Integer idBrand=rs.getInt("Brandid");
                    String brandName=rs.getString("BrandName");
                    String logo=rs.getString("Logo");
                    
                    
                    Brand pr=new Brand(idBrand,brandName,logo);
                    Brands.add(pr);
                }           
            } catch (Exception e) {
               
                System.err.println(e.getMessage());
            } finally{
                    return Brands;
                }

        
    }
    public ArrayList<Brand> CountBrand(){
        
        ArrayList<Brand> Brands=new ArrayList<Brand>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Dbcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        try (
                    
                    Connection connection = Dbcontext.getConnection();
                    Statement stmt = connection.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM brand");) {

                while (rs.next()) {
                    Integer idBrand=rs.getInt("Brandid");
                    String brandName=rs.getString("BrandName");
                    String logo=rs.getString("Logo");                                     
                    Brand pr=new Brand(idBrand,brandName,logo);
                    Brands.add(pr);
                }           
            } catch (Exception e) {
               
                System.err.println(e.getMessage());
            } finally{
                    return Brands;
                }

        
    }
    
    public String NameBrand(int id){
        
        String namebr="";
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Dbcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        try (
                    
                    Connection connection = Dbcontext.getConnection();
                    Statement stmt = connection.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM brand WHERE Brandid="+id);) {

                while (rs.next()) {
                    
                    namebr=rs.getString("BrandName");
                   
                }           
            } catch (Exception e) {
               
                System.err.println(e.getMessage());
            } finally{
                    return namebr;
                }

        
    }
    
    public void InsertBrand(Brand brands) {        
        try {   
            Dbcontext.getConnection();            
            String sql = "INSERT INTO brand(BrandName, Logo) VALUES(?, ?)";
            PreparedStatement  statement = (PreparedStatement) Dbcontext.getConnection().prepareStatement(sql);           
            statement.setString(1, brands.getBrandName());
            statement.setString(2, brands.getLogo());
            statement.executeUpdate();                        
            System.out.println("insert data successfully");
        } catch(SQLException ex) {
            System.err.println("Error in SQL: "+ex.toString());
        }                
    }
    
    
    public void deleteBrand(int Brandid) {        
        try {   
            Dbcontext.getConnection();                       
            String sql = "DELETE FROM brand WHERE Brandid = ?";
            PreparedStatement  statement = (PreparedStatement) Dbcontext.getConnection().prepareStatement(sql);           
            statement.setInt(1, Brandid);            
            statement.executeUpdate();                        
            System.out.println("delete data successfully");
        } catch(SQLException ex) {
            System.err.println("Delete error: "+ex.toString());
        }                
    }
}
