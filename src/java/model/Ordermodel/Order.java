/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.Ordermodel;

/**
 *
 * @author hieun
 */
public class Order {
    public Integer orderId;
    public String orderDate;
    public Integer statusId;
    public Integer Userid;
    public String UserName;

    public Order(Integer orderId, String orderDate, Integer statusId, Integer Userid) {
        this.orderId = orderId;
        this.orderDate = orderDate;
        this.statusId = statusId;
        this.Userid = Userid;
    }

    public Order(Integer orderId, Integer statusId) {
        this.orderId = orderId;
        this.statusId = statusId;
    }

    public Order(Integer orderId, String orderDate, String UserName) {
        this.orderId = orderId;
        this.orderDate = orderDate;
        this.UserName = UserName;
    }

    
    
    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    
    public Order(String orderDate) {
        this.orderDate = orderDate;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public Integer getStatusId() {
        return statusId;
    }

    public void setStatusId(Integer statusId) {
        this.statusId = statusId;
    }

    public Integer getUserid() {
        return Userid;
    }

    public void setUserid(Integer Userid) {
        this.Userid = Userid;
    }
    
    
}
