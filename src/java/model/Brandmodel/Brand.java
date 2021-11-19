/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.Brandmodel;

/**
 *
 * @author hieun
 */
public class Brand {
    private Integer Brandid;
    private String BrandName;
    private String Logo;

    public Brand(Integer Brandid, String BrandName, String Logo) {
        this.Brandid = Brandid;
        this.BrandName = BrandName;
        this.Logo = Logo;
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

    public String getLogo() {
        return Logo;
    }

    public void setLogo(String Logo) {
        this.Logo = Logo;
    }


    

    
    
}
