/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

/**
 *
 * @author Jan
 */
import model.WordModel;
import java.util.*; 
import java.sql.Connection;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.*;

public class MVC{
     

  public static Connection Connect()
    {
        Connection con = null;
        try 
        {
            
            Class.forName("com.mysql.jdbc.Driver");
            
           
            try {
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dictionary", "root", "");
            } 
            catch (SQLException ex) {
                Logger.getLogger(MVC.class.getName()).log(Level.SEVERE, null, ex);
            }
  
        } 
        catch(ClassNotFoundException  ex) {
            Logger.getLogger(MVC.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return (con);
    }
  public static ResultSet DisplaySpecific(String word, String sql)
    {
        ResultSet i=null;
        Connection con = Connect();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, word);// change
            i = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(DaoMVC.class.getName()).log(Level.SEVERE, null, ex);
        }
        return(i);
    }
    
   public static int AddRecord(WordModel region, String sql)
    {
        int i=0;
        Connection con = Connect();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, region.getWord());
            ps.setString(2, region.getType());
            ps.setString(3,region.getDef() );
            i = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(MVC.class.getName()).log(Level.SEVERE, null, ex);
        }
        return(i);
    }

    
}
