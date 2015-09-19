/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nguyen.muoi
 */
public class DataBase {
    public static Connection getConnection() {    
        Connection conn = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String user = "sa";
            String pass = "123456";
            String url = "jdbc:sqlserver://127.0.0.1:1433;databaseName=ProjectGroup4";
            try {
                conn = DriverManager.getConnection(url, user, pass);
            } catch (SQLException ex) {
                Logger.getLogger(DataBase.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DataBase.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    } 
    public boolean checkLogin(String user, String pass) {
        String sql = "SELECT * FROM logincake WHERE _user=? and _pass=?";
        try {
            PreparedStatement prst = getConnection().prepareStatement(sql);
            prst.setString(1, user);
            prst.setString(2, pass);
            ResultSet rs = prst.executeQuery();
            return rs.next();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
     public String checkAdmin(String user) {
        String sql = "SELECT _level FROM logincake WHERE _user='" + user + "'";
        try {
            ResultSet rs = getConnection().createStatement().executeQuery(sql);
            while (rs.next()) {
                sql = rs.getString(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return sql;
    }
     public boolean addNewAcc(String user, String pass, String level, String email) {
        String sql = "insert into logincake (_user, _pass,_level, _email ) values (?,?,?,?)";
        boolean f = false;
        PreparedStatement prat;
        try {
            prat = getConnection().prepareStatement(sql);
            prat.setString(1, user);
            prat.setString(2, pass);
            prat.setString(3, level);
            prat.setString(4, email);            
            f = prat.executeUpdate() > 0;
            prat.close();
        } catch (SQLException ex) {
            Logger.getLogger(DataBase.class.getName()).log(Level.SEVERE, null, ex);
        }
        return f;
    }
}
