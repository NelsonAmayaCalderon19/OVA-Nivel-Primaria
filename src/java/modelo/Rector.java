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
public class Rector {
    public String usuario;
    public String password;
    public Integer colegio;

    public Rector() {
    }

    public Rector(String usuario, String password,Integer colegio) {
        this.usuario = usuario;
        this.password = password;
        this.colegio = colegio;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getColegio() {
        return colegio;
    }

    public void setColegio(Integer colegio) {
        this.colegio = colegio;
    }
    
    
}
