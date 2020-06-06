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
public class Pregunta {
    public Integer id;
    public Integer id_Cuestionario;
    public String titulo;
    public String opc1;
    public Integer punt1;
    public String opc2;
    public Integer punt2;
    public String opc3;
    public Integer punt3;
    public String opc4;
    public Integer punt4;

    public Pregunta() {
    }

    public Pregunta(Integer id, Integer id_Cuestionario, String titulo, String opc1, Integer punt1, String opc2, Integer punt2, String opc3, Integer punt3, String opc4, Integer punt4) {
        this.id = id;
        this.id_Cuestionario = id_Cuestionario;
        this.titulo = titulo;
        this.opc1 = opc1;
        this.punt1 = punt1;
        this.opc2 = opc2;
        this.punt2 = punt2;
        this.opc3 = opc3;
        this.punt3 = punt3;
        this.opc4 = opc4;
        this.punt4 = punt4;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId_Cuestionario() {
        return id_Cuestionario;
    }

    public void setId_Cuestionario(Integer id_Cuestionario) {
        this.id_Cuestionario = id_Cuestionario;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getOpc1() {
        return opc1;
    }

    public void setOpc1(String opc1) {
        this.opc1 = opc1;
    }

    public Integer getPunt1() {
        return punt1;
    }

    public void setPunt1(Integer punt1) {
        this.punt1 = punt1;
    }

    public String getOpc2() {
        return opc2;
    }

    public void setOpc2(String opc2) {
        this.opc2 = opc2;
    }

    public Integer getPunt2() {
        return punt2;
    }

    public void setPunt2(Integer punt2) {
        this.punt2 = punt2;
    }

    public String getOpc3() {
        return opc3;
    }

    public void setOpc3(String opc3) {
        this.opc3 = opc3;
    }

    public Integer getPunt3() {
        return punt3;
    }

    public void setPunt3(Integer punt3) {
        this.punt3 = punt3;
    }

    public String getOpc4() {
        return opc4;
    }

    public void setOpc4(String opc4) {
        this.opc4 = opc4;
    }

    public Integer getPunt4() {
        return punt4;
    }

    public void setPunt4(Integer punt4) {
        this.punt4 = punt4;
    }
    
}
