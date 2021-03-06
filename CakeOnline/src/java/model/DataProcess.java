/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import Entity.Cake;
import Entity.Customer;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ChungPhung
 */
public class DataProcess {

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
                Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }

    public String autoId() {
        ArrayList<Cake> list = getListCake();
        return "tc" + (list.size() + 1);
    }

    public static void main(String[] args) {
        DataProcess dt = new DataProcess();
        System.out.println(dt.autoId());
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
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return f;
    }

    // pkung tung
    public ArrayList<Cake> getListCake() {
        ArrayList<Cake> listC = new ArrayList<Cake>();
        String sql = "SELECT * FROM Product";
        try {
            ResultSet rs = getConnection().createStatement().executeQuery(sql);
            while (rs.next()) {
                Cake c = new Cake();
                c.setItemCode(rs.getString("itemcode"));
                c.setName(rs.getString("name"));
                c.setPrice(rs.getFloat("price"));
                c.setEgge(rs.getString("egg"));
                c.setImg(rs.getString("img"));
                c.setEvent(rs.getString("_event"));
                c.setStt(rs.getString("stt"));
                listC.add(c);
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }

        return listC;
    }

    public boolean addProduct(Cake ca) {
        int result = 0;
        String sql = "Insert into Product values(?,?,?,?,?,?,?)";
        Connection conn = getConnection();
        try {
            PreparedStatement pr = conn.prepareStatement(sql);
            pr.setString(1, ca.getItemCode());
            pr.setString(2, ca.getName());
            pr.setFloat(3, ca.getPrice());
            pr.setString(4, ca.getEgge());
            pr.setString(5, ca.getImg());
            pr.setString(6, ca.getEvent());
            pr.setString(7, ca.getStt());
            result = pr.executeUpdate();
            pr.close();
            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result > 0;
    }

    public boolean updateProduct(Cake ca) {
        int result = 0;
        String sql = "update Product set name=?,price=?,egg=?,img=?,_event=?,stt=? where itemcode=?";
        Connection conn = getConnection();
        try {
            PreparedStatement pr = conn.prepareStatement(sql);
            pr.setString(1, ca.getName());
            pr.setFloat(2, ca.getPrice());
            pr.setString(3, ca.getEgge());
            pr.setString(4, ca.getImg());
            pr.setString(5, ca.getEvent());
            pr.setString(6, ca.getStt());
            pr.setString(7, ca.getItemCode());
            result = pr.executeUpdate();
            pr.close();
            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result > 0;
    }

    public boolean updateCustomer(Customer ca) {
        int result = 0;
        String sql = "update Customer set name=?,email=?,addr=?,number=?,ava=? where CusId=?";
        Connection conn = getConnection();
        try {
            PreparedStatement pr = conn.prepareStatement(sql);
            pr.setString(1, ca.getName());
            pr.setString(2, ca.getEmail());
            pr.setString(3, ca.getAddress());
            pr.setString(4, ca.getNumber());
            pr.setString(5, ca.getImg());
            pr.setInt(6, ca.getId());
            result = pr.executeUpdate();
            pr.close();
            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result > 0;
    }

    public boolean updateCustomerNoAva(Customer ca) {
        int result = 0;
        String sql = "update Customer set name=?,email=?,addr=?,number=? where CusId=?";
        Connection conn = getConnection();
        try {
            PreparedStatement pr = conn.prepareStatement(sql);
            pr.setString(1, ca.getName());
            pr.setString(2, ca.getEmail());
            pr.setString(3, ca.getAddress());
            pr.setString(4, ca.getNumber());
            pr.setInt(5, ca.getId());
            result = pr.executeUpdate();
            pr.close();
            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result > 0;
    }

    public boolean updateProductNoImg(Cake ca) {
        int result = 0;
        String sql = "update Product set name=?,price=?,egg=?,_event=?,stt=? where itemcode=?";
        Connection conn = getConnection();
        try {
            PreparedStatement pr = conn.prepareStatement(sql);
            pr.setString(1, ca.getName());
            pr.setFloat(2, ca.getPrice());
            pr.setString(3, ca.getEgge());
            pr.setString(4, ca.getEvent());
            pr.setString(5, ca.getStt());
            pr.setString(6, ca.getItemCode());
            result = pr.executeUpdate();
            pr.close();
            conn.close();

        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result > 0;
    }

    //phan trang
    public ArrayList<Cake> getBookIndex(int index, int i) {
        ArrayList<Cake> list = new ArrayList<>();
        String sql = "select top " + i + " * from Product where itemcode not in (select top " + (i * index + i) + " itemcode from Product)";
        try {
            ResultSet rs = getConnection().createStatement().executeQuery(sql);
            while (rs.next()) {
                String itemCode = rs.getString(1);
                String name = rs.getString(2);
                float price = rs.getFloat(3);
                String egge = rs.getString(4);
                String img = rs.getString(5);
                String event = rs.getString(6);
                String stt = rs.getString(7);
                Cake emp = new Cake(itemCode, name, price, egge, img, event, stt);
                emp.setItemCode(itemCode);
                emp.setName(name);
                emp.setPrice(price);
                emp.setEgge(egge);
                emp.setImg(img);
                emp.setEvent(event);
                emp.setStt(stt);
                list.add(emp);
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public int countTblBook(int i) {
        String sql = "select count(*) from Product";
        int count = 0;
        try {
            ResultSet rs = getConnection().createStatement().executeQuery(sql);
            while (rs.next()) {
                count = rs.getInt(1);
                if (count % i == 0) {
                    count = count / i;
                } else {
                    count = count / i + 1;
                }
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int countTblBook1(int i) {
        String sql = "select count(*) from Customer";
        int count = 0;
        try {
            ResultSet rs = getConnection().createStatement().executeQuery(sql);
            while (rs.next()) {
                count = rs.getInt(1);
                if (count % i == 0) {
                    count = count / i;
                } else {
                    count = count / i + 1;
                }
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int countTblBook2(int i) {
        String sql = "select count(*) from OrderList";
        int count = 0;
        try {
            ResultSet rs = getConnection().createStatement().executeQuery(sql);
            while (rs.next()) {
                count = rs.getInt(1);
                if (count % i == 0) {
                    count = count / i;
                } else {
                    count = count / i + 1;
                }
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
}
