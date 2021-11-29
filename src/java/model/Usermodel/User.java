/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.Usermodel;

/**
 *
 * @author hieun
 */
public class User {
    public Integer Userid;
    public String UserName;
    public String Password;
    public String Email;
    public String Phone;
    public String Address;
    public String status;

    public User(Integer Userid, String UserName, String Password, String Email, String Phone, String Address) {
        this.Userid = Userid;
        this.UserName = UserName;
        this.Password = Password;
        this.Email = Email;
        this.Phone = Phone;
        this.Address = Address;
    }

    public User(Integer Userid, String UserName, String Password, String Email, String Phone, String Address, String status) {
        this.Userid = Userid;
        this.UserName = UserName;
        this.Password = Password;
        this.Email = Email;
        this.Phone = Phone;
        this.Address = Address;
        this.status = status;
    }

    public User(String UserName, String Password, String Email, String status) {
        this.UserName = UserName;
        this.Password = Password;
        this.Email = Email;
        this.status = status;
    }
    
    
    
    public Integer getUserid() {
        return Userid;
    }

    public void setUserid(Integer Userid) {
        this.Userid = Userid;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
