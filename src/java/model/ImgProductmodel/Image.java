/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.ImgProductmodel;

/**
 *
 * @author hieun
 */
public class Image {
    public Integer Imageid;
    public String Image;
    public Integer Productid;

    public Image(Integer Imageid, String Image, Integer Productid) {
        this.Imageid = Imageid;
        this.Image = Image;
        this.Productid = Productid;
    }

    public Image(String Image, Integer Productid) {
        this.Image = Image;
        this.Productid = Productid;
    }
    
    
    
    public Integer getImageid() {
        return Imageid;
    }

    public void setImageid(Integer Imageid) {
        this.Imageid = Imageid;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String Image) {
        this.Image = Image;
    }

    public Integer getProductid() {
        return Productid;
    }

    public void setProductid(Integer Productid) {
        this.Productid = Productid;
    }
    
    
}
