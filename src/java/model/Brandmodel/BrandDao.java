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
}
