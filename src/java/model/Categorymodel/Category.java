/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.Categorymodel;

/**
 *
 * @author hieun
 */
public class Category {
    public Integer Categoryid;
    public String CategoryName;

    public Category(Integer Categoryid, String CategoryName) {
        this.Categoryid = Categoryid;
        this.CategoryName = CategoryName;
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
