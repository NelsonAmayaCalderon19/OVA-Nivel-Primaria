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
public class Docente {
    public String nombre;
    public String cedula;
    public String password;
    public String codigo;
    public Integer colegio;

    public Docente() {
    }

    public Docente(String nombre, String cedula, String password, String codigo, Integer colegio) {
        this.nombre = nombre;
        this.cedula = cedula;
        this.password = password;
        this.codigo = codigo;
        this.colegio = colegio;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public Integer getColegio() {
        return colegio;
    }

    public void setColegio(Integer colegio) {
        this.colegio = colegio;
    }
    
}
