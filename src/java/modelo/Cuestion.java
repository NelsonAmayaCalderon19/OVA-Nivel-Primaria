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
    String sql=("select pun.id_cuestionario, p.descripcion,pun.id_pregunta,pun.opc,pun.opc2,pun.opc3,pun.opc4,pun.opc,pun.puntuacion,pun.puntuacion2,pun.puntuacion3,pun.puntuacion4 FROM pregunta p, puntuacion pun where p.id=pun.id_pregunta and pun.id_cuestionario=p.id_cuestionario and p.id_cuestionario=1 GROUP BY pun.id_pregunta order by rand() limit 10");   
         try {
             con=cn.Conexion();
             ps=con.prepareStatement(sql);
             rs=ps.executeQuery();
         } catch (Exception ex) {           
         } 
         
    return rs;
    
    };
     public ResultSet listarTodosSecundaria(){
    String sql=("select pun.id_cuestionario, p.descripcion,pun.id_pregunta,pun.opc,pun.opc2,pun.opc3,pun.opc4,pun.opc,pun.puntuacion,pun.puntuacion2,pun.puntuacion3,pun.puntuacion4 FROM pregunta p, puntuacion pun where p.id=pun.id_pregunta and pun.id_cuestionario=p.id_cuestionario and p.id_cuestionario=2 GROUP BY pun.id_pregunta order by rand() limit 10");   
         try {
             con=cn.Conexion();
             ps=con.prepareStatement(sql);
             rs=ps.executeQuery();
         } catch (Exception ex) {           
         } 
         
    return rs;
    
    };
    
}
