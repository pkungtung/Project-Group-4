/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author nguyen.muoi
 */
public class login {
    private int id;
    private String user;
    private String pass;
    private String egmail;
    private String level;

    public login(int id, String user, String pass, String egmail, String level) {
        this.id = id;
        this.user = user;
        this.pass = pass;
        this.egmail = egmail;
        this.level = level;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }



    

    public String getEgmail() {
        return egmail;
    }

    public void setEgmail(String egmail) {
        this.egmail = egmail;
    }
    

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    @Override
    public String toString() {
        return "login{" + "id=" + id + ", user=" + user + ", pass=" + pass + ", egmail=" + egmail + ", level=" + level + '}';
    }

 
    

    
}
