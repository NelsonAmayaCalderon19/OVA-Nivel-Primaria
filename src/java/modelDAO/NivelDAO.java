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
import modelo.Nivel;

/**
 *
 * @author NELSON
 */
public class NivelDAO {
   Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public List listar(){
    String sql="select * from nivel";
    List<Nivel> lista = new ArrayList<>();
    try{
    con=cn.Conexion();
    ps=con.prepareStatement(sql);
    rs=ps.executeQuery();
    while(rs.next()){
    Nivel m = new Nivel();
    m.setId(rs.getInt(1));
    m.setDescripcion(rs.getString(2));
    lista.add(m);
    }
    }catch(Exception e){
    }
    return lista;
    }
}
