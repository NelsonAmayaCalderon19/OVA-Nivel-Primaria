/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author NELSON
 */
public class Cuestion {
     Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps,ps2;
    ResultSet rs;
    int r;
    
    
    public ResultSet listarTodos(){
    String sql=("select po.id_cuestionario, p.descripcion,po.id_pregunta,po.opc1,po.opc2,po.opc3,po.opc4,pun.opc,pun.puntuacion,pun.puntuacion2,pun.puntuacion3,pun.puntuacion4 FROM pregunta p, preg_opc po, puntuacion pun where pun.opc4=po.opc4 and pun.opc3=po.opc3 and pun.opc2=po.opc2 and pun.opc=po.opc1 and p.id=pun.id_pregunta and pun.id_pregunta=po.id_pregunta and pun.id_cuestionario=p.id_cuestionario and po.id_cuestionario=p.id_cuestionario and p.id_cuestionario=1 GROUP BY po.id_pregunta");   
         try {
             con=cn.Conexion();
             ps=con.prepareStatement(sql);
             rs=ps.executeQuery();
         } catch (Exception ex) {           
         } 
         
    return rs;
    
    };
    
}
