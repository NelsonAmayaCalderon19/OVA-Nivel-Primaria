<%-- 
    Document   : admin
    Created on : 5/06/2020, 01:43:01 PM
    Author     : NELSON
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="modelDAO.DocenteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
        <link rel="shortcut icon"  href="${colegio.getImagen()}">

	<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="javaScript/alertifyjs/css/themes/default.css">
<link rel="stylesheet" type="text/css" href="javaScript/alertifyjs/css/alertify.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script src="javaScript/jquery-3.2.1.min.js"></script>
<script src="javaScript/alertifyjs/alertify.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
  	<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
	<!--<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">-->
   <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script> 
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js">   
   <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css">
    <!--<script src = "jquery-1.7.1.js"></script>-->

        <title>Panel Rector</title>
    </head>
    <body>
                     <nav class="navbar navbar-expand-lg navbar-light bg-light">
                        
                         <img class="logo" src="${colegio.getImagen()}" width="150px" height="80px"  alt="" title="${colegio.getNombre()}">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
                        
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="nav nav-pills col-10" id="pills-tab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Lista Docentes</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Registrar Docente</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Contact</a>
  </li>
</ul>
      
     <ul class="navbar-nav mr-auto">
  <form  action="Control_Rector" method="POST">
    
              <button name="accion" value="Salir" class="btn btn-danger">Cerrar Sesión</button>
         
 </form>
    </ul>
    
  </div>
</nav>
    <div class="container">
  <div class="row">
      <div class="col-md-12">
         <div class="tab-content" id="pills-tabContent">
             <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                 <h1 class="text-center text-success">Listado de Docentes</h1>
                 <br>
                   <div class="col-sm-12" style=" margin-top: -10px;">

                   <!-- <br>-->
                    <%                                       
                        DocenteDAO cad = new DocenteDAO();
                   ResultSet rs;
                   String colegio= request.getSession().getAttribute("resultado").toString();  
                    rs=cad.listarTodos(colegio);                   
                    %>  
            <table id="minhatabela" class="display responsive table table-striped table-bordered table-hover" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th class="text-center">NOMBRE</th>
                        <th class="text-center">CEDULA</th>
                        <th class="text-center">CODIGO</th>
                        <th class="text-center">EMAIL</th>
                        <th class="text-center">ACCIONES</th>
                    </tr>
                </thead>
                <tbody>     
                    <%while(rs.next()){%>
                        <tr>                            
                            <td class="text-center"><h5  id="intro"><%=rs.getString("nombre")%></h5></td>
                            <td class="text-center"><h5  id="intro"><%=rs.getString("cedula")%></h5></td>
                            <td class="text-center"><h5  id="intro"><%=rs.getString("codigo")%></h5></td>                     
                            <td class="text-center"><h5  id="intro"><%=rs.getString("email")%></h5></td>
          
                            <td class="text-center">
                                <a class="btn btn-warning" onclick="pais();" href="Control_Rector?accion=Editar&id=<%=rs.getString("id")%>"><span class="fa fa-pencil-square-o" style="color: white;"</span></a>
                                <a class="btn btn-danger" href="javascript:;" onclick="aviso('Control_Rector?accion=Delete&id=<%=rs.getString("id")%>'); return false;"><span class="fa fa-minus-circle" style="color: white;"</span></a>
                            </td>
                        </tr>
                       <%}%>                       
                </tbody>
            </table> 
               <script src="js/tablajs.js" type="text/javascript"></script>
        </div>  
             </div>
  <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">Profile
      
  </div>
  <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">Contact
  
  </div>
</div>
      </div>
  </div>
    </div>
  
    </body>
</html>
