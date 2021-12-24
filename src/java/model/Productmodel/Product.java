/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.Productmodel;

import model.Brandmodel.Brand;
import model.Categorymodel.Category;

/**
 *
 * @author hieun
 */
public class Product {
    public Integer Productid;
    public String ProductName;
    public Float Price;
    public String Detail;
    public Integer Brandid;
    public String BrandName;
    public Integer Categoryid;
    public String CategoryName;

    public Product(Integer Productid, String ProductName, Float Price, String Detail, Integer Brandid, String BrandName, Integer Categoryid, String CategoryName) {
        this.Productid = Productid;
        this.ProductName = ProductName;
        this.Price = Price;
        this.Detail = Detail;
        this.Brandid = Brandid;
        this.BrandName = BrandName;
        this.Categoryid = Categoryid;
        this.CategoryName = CategoryName;
    }
    
    public Product(String ProductName, Float Price, String Detail, Integer Brandid, Integer Categoryid) {
        this.ProductName = ProductName;
        this.Price = Price;
        this.Detail = Detail;
        this.Brandid = Brandid;
        this.Categoryid = Categoryid;
    }
    
    public Product(Integer Productid,String ProductName, Float Price, String Detail, Integer Brandid, Integer Categoryid) {
        this.ProductName = ProductName;
        this.Price = Price;
        this.Detail = Detail;
        this.Brandid = Brandid;
        this.Categoryid = Categoryid;
        this.Productid = Productid;
    }

    public Product(Integer Productid) {
        this.Productid = Productid;
    }

    
    
    public Integer getProductid() {
        return Productid;
    }

    public void setProductid(Integer Productid) {
        this.Productid = Productid;
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

    public String getDetail() {
        return Detail;
    }

    public void setDetail(String Detail) {
        this.Detail = Detail;
    }

    public Integer getBrandid() {
        return Brandid;
    }

    public void setBrandid(Integer Brandid) {
        this.Brandid = Brandid;
    }

    public String getBrandName() {
        return BrandName;
    }

    public void setBrandName(String BrandName) {
        this.BrandName = BrandName;
    }

    public Integer getCategoryid() {
        return Categoryid;
    }

    public void setCategoryid(Integer Categoryid) {
        this.Categoryid = Categoryid;
    }

    public String getCategoryName() {
        return CategoryName;
    }

    public void setCategoryName(String CategoryName) {
        this.CategoryName = CategoryName;
    }
    
    

    

    
     

    
    
    
}
