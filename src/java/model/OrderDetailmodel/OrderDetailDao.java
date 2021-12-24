/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.OrderDetailmodel;

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
public class OrderDetailDao {
    public void InsertOrderDetail(OrderDetail OrderDetails) {        
        try {   
            Dbcontext.getConnection();            
            String sql = "INSERT INTO orderdetail(quantity,orderId,Productid) VALUES(?,?,?)";
            PreparedStatement  statement = (PreparedStatement) Dbcontext.getConnection().prepareStatement(sql);           
            statement.setInt(1, OrderDetails.getQuantity());
            statement.setInt(2, OrderDetails.getOrderId());
            statement.setInt(3, OrderDetails.getProductid());
            statement.executeUpdate();                        
            System.out.println("insert data successfully");
        } catch(SQLException ex) {
            System.err.println("Error in SQL: "+ex.toString());
        }                
    }
    
    public ArrayList<OrderDetail> GetOderDetail(int x){
        String innpr ="INNER JOIN product ON orderdetail.Productid = product.Productid ";
        String innod ="INNER JOIN `order` ON orderdetail.orderId = `order`.orderId ";
        String innodst ="INNER JOIN status ON `order`.statusId = status.statusId ";
        ArrayList<OrderDetail> OrderDetails=new ArrayList<OrderDetail>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Dbcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        try (
                    
                    Connection connection = Dbcontext.getConnection();
                    Statement stmt = connection.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM orderdetail "+innpr+innod+"WHERE statusId=6 AND Userid="+x);) {

                while (rs.next()) {
                    
                    String ProductName=rs.getString("ProductName");
                    Float Price=rs.getFloat("Price");
                    Integer quantity=rs.getInt("quantity");
                    Integer Productid=rs.getInt("Productid");
                    Integer orderdetailId=rs.getInt("orderdetailId");
                    Integer orderId=rs.getInt("orderId");
                    
                    OrderDetail pr=new OrderDetail(orderdetailId,quantity, Productid, ProductName, Price,orderId);
                    OrderDetails.add(pr);
                }           
            } catch (Exception e) {
               
                System.err.println(e.getMessage());
            } finally{
                    return OrderDetails;
                }

        
    }
    
    public ArrayList<OrderDetail> GetOderDetailHistory(int x){
        String innpr ="INNER JOIN product ON orderdetail.Productid = product.Productid ";
        String innod ="INNER JOIN `order` ON orderdetail.orderId = `order`.orderId ";
        String innodst ="INNER JOIN status ON `order`.statusId = status.statusId ";
        ArrayList<OrderDetail> OrderDetails=new ArrayList<OrderDetail>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Dbcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        try (
                    
                    Connection connection = Dbcontext.getConnection();
                    Statement stmt = connection.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM orderdetail "+innpr+innod+"WHERE statusId>=7 AND Userid="+x);) {

                while (rs.next()) {
                    
                    String ProductName=rs.getString("ProductName");
                    Float Price=rs.getFloat("Price");
                    Integer quantity=rs.getInt("quantity");
                    Integer Productid=rs.getInt("Productid");
                    Integer orderdetailId=rs.getInt("orderdetailId");
                    Integer orderId=rs.getInt("orderId");
                    
                    OrderDetail pr=new OrderDetail(orderdetailId,quantity, Productid, ProductName, Price,orderId);
                    OrderDetails.add(pr);
                }           
            } catch (Exception e) {
               
                System.err.println(e.getMessage());
            } finally{
                    return OrderDetails;
                }

        
    }
    
    public String GetNameStatus(int x){
        String status="";
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Dbcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        try (
                    
                    Connection connection = Dbcontext.getConnection();
                    Statement stmt = connection.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM `order` INNER JOIN status ON `order`.statusId = status.statusId WHERE orderId="+x);) {

                while (rs.next()) {
                    
                    String statusName=rs.getString("status");
                    
                    status=statusName;
                }           
            } catch (Exception e) {
               
                System.err.println(e.getMessage());
            } finally{
                    return status;
                }

        
    }
    
    
    public ArrayList<OrderDetail> GetOderDetailcf(){
        String innpr ="INNER JOIN product ON orderdetail.Productid = product.Productid ";
        String innod ="INNER JOIN `order` ON orderdetail.orderId = `order`.orderId ";
        String innus ="INNER JOIN user ON user.Userid = `order`.Userid ";
        String innodst ="INNER JOIN status ON `order`.statusId = status.statusId ";
        ArrayList<OrderDetail> OrderDetails=new ArrayList<OrderDetail>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Dbcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        try (
                    
                    Connection connection = Dbcontext.getConnection();
                    Statement stmt = connection.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM orderdetail "+innpr+innod+innus+"WHERE statusId=6");) {

                while (rs.next()) {
                    
                    String ProductName=rs.getString("ProductName");
                    Float Price=rs.getFloat("Price");
                    Integer quantity=rs.getInt("quantity");
                    Integer Productid=rs.getInt("Productid");
                    String Email=rs.getString("Email");
                    Integer orderdetailId=rs.getInt("orderdetailId");
                    Integer orderId=rs.getInt("orderId");
                    
                    OrderDetail pr=new OrderDetail(orderdetailId,quantity, Productid, ProductName, Price,Email,orderId);
                    OrderDetails.add(pr);
                }           
            } catch (Exception e) {
               
                System.err.println(e.getMessage());
            } finally{
                    return OrderDetails;
                }

        
    }
    
    public ArrayList<OrderDetail> ShowOderDetail(int x){
        String innpr ="INNER JOIN product ON orderdetail.Productid = product.Productid ";
        String innod ="INNER JOIN `order` ON orderdetail.orderId = `order`.orderId ";
        String innus ="INNER JOIN user ON user.Userid = `order`.Userid ";
        String innodst ="INNER JOIN status ON `order`.statusId = status.statusId ";
        ArrayList<OrderDetail> OrderDetails=new ArrayList<OrderDetail>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Dbcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        try (
                    
                    Connection connection = Dbcontext.getConnection();
                    Statement stmt = connection.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM orderdetail "+innpr+"WHERE orderId="+x);) {

                while (rs.next()) {
                    
                    String ProductName=rs.getString("ProductName");
                    Float Price=rs.getFloat("Price");
                    Integer quantity=rs.getInt("quantity");
                    Integer Productid=rs.getInt("Productid");
                    Integer orderdetailId=rs.getInt("orderdetailId");
                    Integer orderId=rs.getInt("orderId");
                    
                    OrderDetail pr=new OrderDetail(orderdetailId,quantity, Productid, ProductName, Price,orderId);
                    OrderDetails.add(pr);
                }           
            } catch (Exception e) {
               
                System.err.println(e.getMessage());
            } finally{
                    return OrderDetails;
                }

        
    }
    
    public void UpdateOrderDetail(OrderDetail OrderDetails) {        
        try {   
            Dbcontext.getConnection();            
            String sql = "UPDATE orderdetail INNER JOIN `order` ON orderdetail.orderId = `order`.orderId SET quantity=? WHERE Productid=? AND statusId=? AND Userid=?";
            PreparedStatement  statement = (PreparedStatement) Dbcontext.getConnection().prepareStatement(sql);           
            statement.setInt(1, OrderDetails.getQuantity());
            statement.setInt(2, OrderDetails.getProductid());
            statement.setInt(3, OrderDetails.getStatusId());
            statement.setInt(4, OrderDetails.getUserid());
            statement.executeUpdate();                        
            System.out.println("Update data successfully");
        } catch(SQLException ex) {
            System.err.println("Error in SQL: "+ex.toString());
        }                
    }
}
