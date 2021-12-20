/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.Ordermodel;

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
public class OrderDao {
    public void InsertOrder(Order Orders) {        
        try {   
            Dbcontext.getConnection();            
            String sql = "INSERT INTO `order`(orderDate,statusId,Userid) VALUES(?, ?, ?)";
            PreparedStatement  statement = (PreparedStatement) Dbcontext.getConnection().prepareStatement(sql);           
            statement.setString(1, Orders.getOrderDate());
            statement.setInt(2, Orders.getStatusId());
            statement.setInt(3, Orders.getUserid());
            statement.executeUpdate();                        
            System.out.println("insert data successfully");
        } catch(SQLException ex) {
            System.err.println("Error in SQL: "+ex.toString());
        }                
    }
    
    public Integer GetOrder(int x){
        int id=0;
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Dbcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        try (
                    
                    Connection connection = Dbcontext.getConnection();
                    Statement stmt = connection.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM `order` Where statusId=6 AND Userid="+x);) {

                while (rs.next()) {
                    Integer orderId=rs.getInt("orderId");
                    id=orderId;
                    
                    
                }           
            } catch (Exception e) {
               
                System.err.println(e.getMessage());
            } finally{
                    return id;
                }

        
    }
    
    public ArrayList<Order> GetOrders(){
        
        ArrayList<Order> Orders=new ArrayList<Order>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Dbcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        try (
                    
                    Connection connection = Dbcontext.getConnection();
                    Statement stmt = connection.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM `order` INNER JOIN user ON user.Userid = `order`.Userid Where statusId=7 ");) {

                while (rs.next()) {
                    Integer orderId=rs.getInt("orderId");
                    String orderDate=rs.getString("orderDate");
                    String UserName=rs.getString("UserName");

                    
                    Order pr=new Order(orderId, orderDate, UserName);
                    Orders.add(pr);
                }           
            } catch (Exception e) {
               
                System.err.println(e.getMessage());
            } finally{
                    return Orders;
                }

        
    }
    
    public ArrayList<Order> GetOrders2(){
        
        ArrayList<Order> Orders=new ArrayList<Order>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Dbcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        try (
                    
                    Connection connection = Dbcontext.getConnection();
                    Statement stmt = connection.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM `order` INNER JOIN user ON user.Userid = `order`.Userid Where statusId=8 ");) {

                while (rs.next()) {
                    Integer orderId=rs.getInt("orderId");
                    String orderDate=rs.getString("orderDate");
                    String UserName=rs.getString("UserName");

                    
                    Order pr=new Order(orderId, orderDate, UserName);
                    Orders.add(pr);
                }           
            } catch (Exception e) {
               
                System.err.println(e.getMessage());
            } finally{
                    return Orders;
                }

        
    }
    
    public void UpdateOrders(Order Orders) {        
        try {   
            Dbcontext.getConnection();            
            String sql = "UPDATE `order` SET statusId=? WHERE orderId=?";
            PreparedStatement  statement = (PreparedStatement) Dbcontext.getConnection().prepareStatement(sql);           
            statement.setInt(1, Orders.getStatusId());
            statement.setInt(2, Orders.getOrderId());
            statement.executeUpdate();                        
            System.out.println("Update data successfully");
        } catch(SQLException ex) {
            System.err.println("Error in SQL: "+ex.toString());
        }                
    }
}
