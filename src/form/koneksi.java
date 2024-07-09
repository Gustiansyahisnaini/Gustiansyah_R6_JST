/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package form;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class koneksi {
    public static Connection conn;
    public static Connection conn() {
      try{
          Class.forName("com.mysql.jdbc.Driver");
          conn = DriverManager.getConnection("jdbc:mysql://localhost/perpustakaan","root","");
      }catch (Exception e) {
          System.out.println(e.getMessage());
      }  
      return conn;
    }
    public static void main(String args[]) {
        System.out.println(koneksi.conn());
}   

    static Connection koneksi_report() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
