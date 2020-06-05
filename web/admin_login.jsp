<%-- 
    Document   : admin_login
    Created on : 5/06/2020, 12:05:00 PM
    Author     : NELSON
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon"  href="https://previews.123rf.com/images/mamanamsai/mamanamsai1509/mamanamsai150900443/46419881-admin-dise%C3%B1o-de-icono-de-red-en-fondo-amarillo-bot%C3%B3n-vector-limpia.jpg">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="css/admin_login_style.css">
        <title>Login</title>
    </head>
    <body>
        <!-- if you want to create login page and register page together in one page ...you have to only chnage his name...that's it...                 -->
<div class="container" style="margin-top: 2%;">
  <div class="row">
    <div class="col-sm-4"> </div>
<div class="col-md-4">
  
<h1 class="text-center text-success">Login Admin</h1>
<br/>

<div class="col-sm-12">

  <ul class="nav nav-pills" >



    <li class="" style="width:50%"><a class="btn btn-lg btn-default" data-toggle="tab" href="#home">Rector</a></li>
   
    <li class=" " style="width:48%"><a class=" btn btn-lg btn-default" data-toggle="tab" href="#menu1">Docente</a></li>



  </ul>

<br/>


  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      
<form action="Control_Rector" method="POST">

  <div class="form-group">
    <label for="Usuario">Usuario</label>
    <input type="text" class="form-control" id="usuario" placeholder="Ingresa tu Usuario" required="">
  </div>
  
  <div class="form-group">
    <label for="contrseña">Contraseña</label>
    <input type="password" class="form-control" id="password" placeholder="Ingresa tu Contraseña" required="">
  </div>



   <input class="pull-right btn btn-block btn-success" type="submit" value="Ingresar" id="ingresar" name="accion" />


</form>
    </div>
    <div id="menu1" class="tab-pane fade">

<form action="#">

  <div class="form-group">
    <label for="Usuario">N° Cedula ó Código</label>
    <input type="text" class="form-control" id="usuario" placeholder="Ingresa tu N° de Cedula o Código " required="">
  </div>
  
  <div class="form-group">
    <label for="contrseña">Contraseña</label>
    <input type="password" class="form-control" id="password" placeholder="Ingresa tu Contraseña" required="">
  </div>

   <input class="pull-right btn btn-block btn-success" type="submit" value="Ingresar" id="ingresar" name="accion" />
</form>
    </div>
   </div>
  </div>
</div>
</div>
    </body>
</html>
