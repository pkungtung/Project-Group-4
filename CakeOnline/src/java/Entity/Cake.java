/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author ChungPhung
 */
public class Cake {

    private String itemCode;
    private String name;
    private float price;
    private String egge;
    private String img;
    private String event;
    private String stt;

    public Cake(String itemCode, String name, float price, String egge, String img, String event, String stt) {
        this.itemCode = itemCode;
        this.name = name;
        this.price = price;
        this.egge = egge;
        this.img = img;
        this.event = event;
        this.stt = stt;
    }

    public Cake() {
    }

    public String getItemCode() {
        return itemCode;
    }

    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getEgge() {
        return egge;
    }

    public void setEgge(String egge) {
        this.egge = egge;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getEvent() {
        return event;
    }

    public void setEvent(String event) {
        this.event = event;
    }

    public String getStt() {
        return stt;
    }

    public void setStt(String stt) {
        this.stt = stt;
    }

}
