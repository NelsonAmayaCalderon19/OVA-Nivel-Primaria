/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author TURBO Core i3
 */
public class Conexion {
//     public String db="ova";
//    public String url="jdbc:mysql://localhost/" +db;
//    public String user="root";
//    public String pass="";
    public String db="sql10340336";
    public String url="jdbc:mysql://sql10.freemysqlhosting.net/" +db;
    public String user="sql10340336";
    public String pass="yxUvmRqAaF";
    Connection link=null;
    public Conexion(){
        
    }
    
    public Connection Conexion(){
        
        try{
            Class.forName("org.gjt.mm.mysql.Driver");
            link=DriverManager.getConnection(this.url, this.user, this.pass);
        }catch(ClassNotFoundException | SQLException e){
            JOptionPane.showMessageDialog(null, e);
        }
        return link;
    }
    public void cerrarConexion(){
        try{
            link.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
}
