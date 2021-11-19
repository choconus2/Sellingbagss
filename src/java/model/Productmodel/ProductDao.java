/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.Productmodel;

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
public class ProductDao {
    public ArrayList<Product> GetProduct(int x){
        
        ArrayList<Product> Products=new ArrayList<Product>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Dbcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        try (
                    
                    Connection connection = Dbcontext.getConnection();
                    Statement stmt = connection.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM product INNER JOIN Brand ON Product.Brandid = Brand.Brandid INNER JOIN category ON Product.Categoryid = category.Categoryid ORDER BY Productid DESC  LIMIT "+x+",2");) {

                while (rs.next()) {
                    Integer Productid=rs.getInt("Productid");
                    String ProductName=rs.getString("ProductName");
                    Float Price=rs.getFloat("Price");
                    String Detail=rs.getString("Detail");
                    Integer Brandid=rs.getInt("Brandid");
                    Integer Categoryid=rs.getInt("Categoryid");
                    String BrandName=rs.getString("BrandName");
                    String CategoryName=rs.getString("CategoryName");
                    
                    
                    Product pr=new Product(Productid, ProductName, Price, Detail,Brandid,BrandName,Categoryid,CategoryName);
                    Products.add(pr);
                }           
            } catch (Exception e) {
               
                System.err.println(e.getMessage());
            } finally{
                    return Products;
                }

        
    }
    public ArrayList<Product> CountProduct(){
        
        ArrayList<Product> Products=new ArrayList<Product>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Dbcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        try (
                    
                    Connection connection = Dbcontext.getConnection();
                    Statement stmt = connection.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM product INNER JOIN Brand ON Product.Brandid = Brand.Brandid INNER JOIN category ON Product.Categoryid = category.Categoryid");) {

                while (rs.next()) {
                    Integer Productid=rs.getInt("Productid");
                    String ProductName=rs.getString("ProductName");
                    Float Price=rs.getFloat("Price");
                    String Detail=rs.getString("Detail");
                    Integer Brandid=rs.getInt("Brandid");
                    Integer Categoryid=rs.getInt("Categoryid");
                    String BrandName=rs.getString("BrandName");
                    String CategoryName=rs.getString("CategoryName");
                    
                    
                    Product pr=new Product(Productid, ProductName, Price, Detail,Brandid,BrandName,Categoryid,CategoryName);
                    Products.add(pr);
                }           
            } catch (Exception e) {
               
                System.err.println(e.getMessage());
            } finally{
                    return Products;
                }

        
    }
    
    public Integer GetIdProduct(String pn){
        
        Integer idpd=0;
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Dbcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        try (
                    
                    Connection connection = Dbcontext.getConnection();
                    Statement stmt = connection.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM product Where ProductName='"+pn+"'");) {

                while (rs.next()) {
                    Integer Productid=rs.getInt("Productid");
                    idpd=Productid;
                }           
            } catch (Exception e) {
               
                System.err.println(e.getMessage());
            } finally{
                    return idpd;
                }

        
    }
    
    public void InsertProduct(Product Products) {        
        try {   
            Dbcontext.getConnection();            
            String sql = "INSERT INTO product(ProductName, Price,Detail,Brandid,Categoryid) VALUES(?, ?, ?, ?, ?)";
            PreparedStatement  statement = (PreparedStatement) Dbcontext.getConnection().prepareStatement(sql);           
            statement.setString(1, Products.getProductName());
            statement.setFloat(2, Products.getPrice());
            statement.setString(3, Products.getDetail());
            statement.setInt(4, Products.getBrandid());
            statement.setInt(5, Products.getCategoryid());            
            statement.executeUpdate();                        
            System.out.println("insert data successfully");
        } catch(SQLException ex) {
            System.err.println("Error in SQL: "+ex.toString());
        }                
    }
    
}
