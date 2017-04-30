/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.WordModel;

/**
 *
 * @author Jan
 */
public class DaoMVC {

    private static Connection connect()  {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dictionary", "root", "");
            } catch (SQLException ex) {
                Logger.getLogger(DaoMVC.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DaoMVC.class.getName()).log(Level.SEVERE, null, ex);
        }
        return (con);
    }
    
    public static int AddRecord(WordModel word, String sql)
    {
        int i=0;
        Connection con = connect();
        try {
            // attributes/parameters
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, word.getWord());
         
            i = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoMVC.class.getName()).log(Level.SEVERE, null, ex);
        }
        return(i);
    }

     public static ResultSet DisplayRecord(String sql)
    {
        ResultSet i=null;
        Connection con = connect();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            i = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(DaoMVC.class.getName()).log(Level.SEVERE, null, ex);
        }
        return(i);
    }
    
    
    public static ResultSet DisplaySpecific(String word, String sql)
    {
        ResultSet i=null;
        Connection con = connect();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, word);// change
            i = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(DaoMVC.class.getName()).log(Level.SEVERE, null, ex);
        }
        return(i);
    }
    
    
}
