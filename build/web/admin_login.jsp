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
  <link rel="shortcut icon"  href="images/admin.jpg">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="css/admin_login_style.css">
        <title>Login</title>
    </head>
    <body>
        
        <!-- if you want to create login page and register page together in one page ...you have to only chnage his name...that's it...                 -->
<div class="container" style="margin-top: 5%;">
  <div class="row">
    <div class="col-sm-4"> </div>
<div class="col-md-4">


<div class="col-sm-12">

  <ul class="nav nav-pills" >



    <li class="" style="width:50%"><a class="nav-link active btn btn-lg btn-default" data-toggle="tab" href="#home" id="btn-rec">Rector</a></li>
   
    <li class=" " style="width:48%"><a class="nav-link btn btn-lg btn-default" data-toggle="tab" href="#menu1" id="btn-doc">Docente</a></li>



  </ul>

<br/>


  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h1 class="text-center text-success">Login Rector</h1>
      <br>
<form action="Control_Rector" method="POST">

  <div class="form-group">
    <label for="Usuario">Usuario</label>
    <input type="text" class="form-control" id="usuario" name="txtuser"  placeholder="Ingresa tu Usuario" required="">
  </div>
  
  <div class="form-group">
    <label for="contrseña">Contraseña</label>
    <input type="password" class="form-control" id="password" name="txtpass"  placeholder="Ingresa tu Contraseña" required="">
  </div>



   <input class="pull-right btn btn-block btn-success" type="submit" value="Ingresar" id="ingresar" name="accion" />
   <a class="pull-right btn btn-block btn-warning" href="index.jsp">Volver</a>

</form>
    </div>
    <div id="menu1" class="tab-pane fade">
  <h1 class="text-center text-success">Login Docente</h1>
  <br>
<form action="Control_Docente" method="POST">

  <div class="form-group">
    <label for="Usuario">N° Cedula ó Código</label>
    <input type="text" class="form-control" id="cedula" name="txtcedula" placeholder="Ingresa tu N° de Cedula o Código " required="">
  </div>
  
  <div class="form-group">
    <label for="contrseña">Contraseña</label>
    <input type="password" class="form-control" name="txtpass" id="password" placeholder="Ingresa tu Contraseña" required="">
  </div>

   <input class="pull-right btn btn-block btn-success" type="submit" value="Ingresar" id="ingresar" name="accion" />
   <a class="pull-right btn btn-block btn-warning" href="index.jsp">Volver</a>
</form>
    </div>
   </div>
  </div>
</div>
</div>
    </body>
</html>
