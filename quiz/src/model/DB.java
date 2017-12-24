package model;

import java.sql.*;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

public class DB {
    private static ResultSet result;
    public static Connection OpenConnection() {
        Connection con=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3307/online_quiz?user=root&password=root");
        } catch (ClassNotFoundException |SQLException ex) {
            System.out.println("failed to connect database");
        }
        return con;
    }
    
    public static ResultSet executeQuery(PreparedStatement prestmt, List<Object> params){
        
            try {
                for(int i=0;i<params.size();i++){
                prestmt.setObject(i+1, params.get(i));}
                result = prestmt.executeQuery();
            } catch (SQLException ex) {
                Logger.getLogger(DB.class.getName()).log(Level.SEVERE, null, ex);
            }
        
        return result;
    }
    
   public static void executeNonQuery(PreparedStatement prestmt, List<Object> params){
        
            try {
                for(int i=0;i<params.size();i++){
                    prestmt.setObject(i+1, params.get(i));
                }
                prestmt.executeUpdate();
            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(null, "cant delete in DB");
            }
    }
}