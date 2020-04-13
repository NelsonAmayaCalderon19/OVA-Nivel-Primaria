/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author NELSON
 */
public class Alumno {
    public String identificacion;
    public String nombre;
    public Integer tipo_doc;

    public Alumno() {
    }

    public Alumno(String identificacion, String nombre, Integer tipo_doc) {
        this.identificacion = identificacion;
        this.nombre = nombre;
        this.tipo_doc = tipo_doc;
    }

    public String getIdentificacion() {
        return identificacion;
    }

    public void setIdentificacion(String identificacion) {
        this.identificacion = identificacion;
    }

    

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Integer getTipo_doc() {
        return tipo_doc;
    }

    public void setTipo_doc(Integer tipo_doc) {
        this.tipo_doc = tipo_doc;
    }
    
}
