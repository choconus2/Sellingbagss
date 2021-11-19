/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.ImgProductmodel;

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
public class ImageDao {
    public ArrayList<Image> GetImage(int x){
        
        ArrayList<Image> Images=new ArrayList<Image>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Dbcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        try (
                    
                    Connection connection = Dbcontext.getConnection();
                    Statement stmt = connection.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM Image WHERE Productid="+x);) {

                while (rs.next()) {
                    Integer Productid=rs.getInt("Productid");
                    String Image=rs.getString("Image");
                    Integer Imageid=rs.getInt("Imageid");
                    
                    Image pr=new Image(Imageid, Image, Productid);
                    Images.add(pr);
                }           
            } catch (Exception e) {
               
                System.err.println(e.getMessage());
            } finally{
                    return Images;
                }

        
    }
    
    public void InsertImage(Image Images) {        
        try {   
            Dbcontext.getConnection();            
            String sql = "INSERT INTO image(Image, Productid) VALUES(?, ?)";
            PreparedStatement  statement = (PreparedStatement) Dbcontext.getConnection().prepareStatement(sql);           
            statement.setString(1, Images.getImage());
            statement.setInt(2, Images.getProductid());
            statement.executeUpdate();                        
            System.out.println("insert data successfully");
        } catch(SQLException ex) {
            System.err.println("Error in SQL: "+ex.toString());
        }                
    }
    
    
}
