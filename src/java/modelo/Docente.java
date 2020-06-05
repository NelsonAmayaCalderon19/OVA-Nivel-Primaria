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
    public Integer id;
    public String nombre;
    public String cedula;
    public String password;
    public String codigo;
    public String email;
    public Integer colegio;

    public Docente() {
    }

    public Docente(Integer id, String nombre, String cedula, String password, String codigo, String email, Integer colegio) {
        this.id = id;
        this.nombre = nombre;
        this.cedula = cedula;
        this.password = password;
        this.codigo = codigo;
        this.email = email;
        this.colegio = colegio;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getColegio() {
        return colegio;
    }

    public void setColegio(Integer colegio) {
        this.colegio = colegio;
    }
    
}
