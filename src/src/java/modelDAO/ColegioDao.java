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
import java.util.ArrayList;
import java.util.List;
import modelo.Colegio;

/**
 *
 * @author TURBO Core i3
 */
public class ColegioDao {
    Conexion cn = new Conexion();
    Connection con = cn.Conexion();
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public List listar(){
    String sql="select * from colegio";
    List<Colegio> lista = new ArrayList<>();
    try{
    con=cn.Conexion();
    ps=con.prepareStatement(sql);
    rs=ps.executeQuery();
    while(rs.next()){
    Colegio m = new Colegio();
    m.setId(rs.getInt(1));
    m.setNombre(rs.getString(2));
    m.setImagen(rs.getString(3));
    lista.add(m);
    }
    }catch(Exception e){
    }
    return lista;
    }
    
    public Colegio buscar(String id){
        Colegio m = new Colegio();
    String sql="select * from colegio where id="+id;
    try{
    con=cn.Conexion();
    ps=con.prepareStatement(sql);
    rs=ps.executeQuery();
    while(rs.next()){
    m.setId(rs.getInt(1));
    m.setNombre(rs.getString(2));
    m.setImagen(rs.getString(3));
    }
    }catch(Exception e){   
    }
    return m;
    }
}
