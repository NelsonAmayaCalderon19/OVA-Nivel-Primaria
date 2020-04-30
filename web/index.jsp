<%-- 
    Document   : index
    Created on : 23/04/2020, 04:31:56 PM
    Author     : TURBO Core i3
--%>

<%@page import="java.util.Iterator"%>
<%@page import="modelo.Colegio"%>
<%@page import="java.util.List"%>
<%@page import="modelDAO.ColegioDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ include file="header.jsp" %> 

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon"  href="images/logo_galan.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="http://code.jquery.com/jquery-1.12.0.js"></script> 
        <link rel="stylesheet" type="text/css" href="css/index_styles.css">
        <title>${colegio.getNombre()}</title>
         
    </head>
    <script>
                       var parrafo =  document.getElementById('colegio').innerHTML;
                         var parrafo2 = document.getElementById('colegio2').innerHTML;
                           if(parrafo==""){     
                               parrafo.innerHTML="Objetos Virtuales de Aprendizaje";   
                           }
                           if(parrafo2=="" || parrafo2==null){ 
                               parrafo2.innerHTML="En el Tema de Manejo de Residuos Sólidos";

                           }
                        </script>
    <body>

         <form name="reporte" action="Certificado?menu=Certificar" method="POST">
             <div id="seleccion">
             <h4 id="tit">Selecciona tu Colegio: </h4>
            <select name="txtColegio" class="select" id="present">
                            <!--<option value="${producto.getId_Presentacion()}">${presentacion.getDescripcion()}</option>-->
                            <%
                    ColegioDao daos3 = new ColegioDao();
                    List<Colegio>lista3=daos3.listar();
                    Iterator<Colegio>itera3=lista3.iterator();
                    Colegio em3 = null;
                    while(itera3.hasNext()){
                        em3=itera3.next();                    
                    %>                        
                        <option value="<%=em3.getId()%>"><%=em3.getNombre()%></option>
                                <%}%>
                            </select>
                            <input class="btn btn-primary" type="submit" value="Aceptar" id="aceptar" name="accion" onclick="ActivarCampoOtroTema();"/>
             </div>
        </form>
        <div id="contenido">
            <div id="conten">
                <a href="preescolar.jsp"><div id="preescolar">
                    <div id="titulito">
                        <h3 id="nivel1">Nivel Preescolar</h3>                       
                    </div>
                    <a href="preescolar.jsp" class="linkopacity"><img class="imagen1" src="images/preescolar.jpg" alt=""></a> 
                    </div></a>
                <a href="Certificado?accion=ingresar&id=${colegio.getId()}" ><div id="primaria">
                    
                    <div id="titulito2">
                        <h3 id="nivel2">Nivel Primaria</h3>                       
                    </div>
               <a href="Certificado?accion=ingresar&id=${colegio.getId()}" class="linkopacity"><img class="imagen2" src="images/primaria.jpg" alt=""></a>   
                    </div></a>
                <a href="secundaria.jsp"><div id="secundaria">
                    
                    <div id="titulito3">
                        <h3 id="nivel3">Nivel Secundaria</h3>                         
                    </div>
                <a href="secundaria.jsp" class="linkopacity"><img class="imagen3" src="images/secundaria.jpg" alt=""></a> 
                    </div></a>
            </div>
        </div>         
    </body>
</html>
