/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.OrderDetailmodel;

/**
 *
 * @author hieun
 */
public class OrderDetail {
    public Integer orderdetailId;
    public Integer quantity;
    public Integer orderId;
    public Integer Productid;
    public Integer Userid;
    public Integer statusId;
    public String ProductName;
    public Float Price;
    public String Email;

    

    public void setStatusId(Integer statusId) {
        this.statusId = statusId;
    }

    public OrderDetail(Integer quantity, Integer orderId, Integer Productid) {
        this.quantity = quantity;
        this.orderId = orderId;
        this.Productid = Productid;
    }

    public OrderDetail(Integer orderdetailId, Integer quantity, Integer Productid, String ProductName, Float Price, String Email,Integer orderId) {
        this.quantity = quantity;
        this.Productid = Productid;
        this.ProductName = ProductName;
        this.Price = Price;
        this.Email = Email;
        this.orderdetailId = orderdetailId;
        this.orderId = orderId;

    }
  

    public OrderDetail(Integer orderdetailId, Integer quantity, Integer Productid, String ProductName, Float Price,Integer orderId) {
        this.quantity = quantity;
        this.Productid = Productid;
        this.ProductName = ProductName;
        this.Price = Price;
        this.orderdetailId = orderdetailId;
        this.orderId = orderId;

    }
    
    public OrderDetail(Integer quantity, Integer Productid, Integer Userid, Integer statusId) {
        this.quantity = quantity;
        this.Productid = Productid;
        this.Userid = Userid;
        this.statusId = statusId;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public Integer getOrderdetailId() {
        return orderdetailId;
    }

    public void setOrderdetailId(Integer orderdetailId) {
        this.orderdetailId = orderdetailId;
    }
    
    
    
    public Integer getUserid() {
        return Userid;
    }

    public void setUserid(Integer Userid) {
        this.Userid = Userid;
    }

    public Integer getStatusId() {
        return statusId;
    }
    
    
    
    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String ProductName) {
        this.ProductName = ProductName;
    }

    public Float getPrice() {
        return Price;
    }

    public void setPrice(Float Price) {
        this.Price = Price;
    }

    

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getProductid() {
        return Productid;
    }

    public void setProductid(Integer Productid) {
        this.Productid = Productid;
    }

    
    
}
