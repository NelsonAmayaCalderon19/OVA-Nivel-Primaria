<%-- 
    Document   : header
    Created on : 29/04/2020, 06:42:59 PM
    Author     : TURBO Core i3
--%>
<%@page import="java.util.Iterator"%>
<%@page import="modelo.Colegio"%>
<%@page import="java.util.List"%>
<%@page import="modelDAO.ColegioDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon"  href="${colegio.getImagen()}">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="http://code.jquery.com/jquery-1.12.0.js"></script> 
        <link rel="stylesheet" type="text/css" href="css/style_header.css">
        <title id="icono">Objeto Virtual de Aprendizaje</title>
    </head>
    <body>
        
        <header id="encabezado">
            <div id="division_logo">
		<img class="logo" src="${colegio.getImagen()}"  alt="">
	</div>
            <div id="division_colegio">
		<h3 id="colegio">${colegio.getNombre()}</h3>
                <h3 id="colegio2">Objetos Virtuales de Aprendizaje - Relacionados con el Manejo de Residuos Sólidos</h3>
	</div>

            <div id="division_logo2">
		<img class="logo2" src="${colegio.getImagen()}"  alt="">
	</div>
            </header>
       
                            
</html>
