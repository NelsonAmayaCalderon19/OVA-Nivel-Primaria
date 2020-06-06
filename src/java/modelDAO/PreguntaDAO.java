/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelDAO;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import modelo.Pregunta;

/**
 *
 * @author NELSON
 */
public class PreguntaDAO {
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
     
     public Integer buscarMaxPreguntaCuestionario(String id){      
        Integer consecutivo=0;
    String sql="SELECT max(id) as maximo FROM pregunta WHERE id_cuestionario="+id;
    try{
    con=cn.Conexion();
    ps=con.prepareStatement(sql);
    rs=ps.executeQuery();
    while(rs.next()){
    consecutivo=Integer.parseInt(rs.getString(1));
    }
    }catch(Exception e){    
    }
    return consecutivo;
    }
     
     public int agregarPregunta(Pregunta p){
    String sql="insert into pregunta(id_cuestionario, id, descripcion) values(?,?,?)";
    try{
        con=cn.Conexion();
    ps=con.prepareStatement(sql);
    ps.setInt(1, p.getId_Cuestionario());
    ps.setInt(2, p.getId());
    ps.setString(3, p.getTitulo());
    ps.executeUpdate();
    }catch(Exception ex){
    }
    return r;
    }
      public int agregarOpcion(Pregunta p){
    String sql="insert into puntuacion(id_cuestionario, id_pregunta, opc, puntuacion, opc2, puntuacion2, opc3, puntuacion3, opc4, puntuacion4) values(?,?,?,?,?,?,?,?,?,?)";
    try{
        con=cn.Conexion();
    ps=con.prepareStatement(sql);
    ps.setInt(1, p.getId_Cuestionario());
    ps.setInt(2, p.getId());
    ps.setString(3, p.getOpc1());
    ps.setInt(4, p.getPunt1());
    ps.setString(5, p.getOpc2());
    ps.setInt(6, p.getPunt2());
    ps.setString(7, p.getOpc3());
    ps.setInt(8, p.getPunt3());
    ps.setString(9, p.getOpc4());
    ps.setInt(10, p.getPunt4());
    ps.executeUpdate();
    }catch(Exception ex){
    }
    return r;
    }
    
}
