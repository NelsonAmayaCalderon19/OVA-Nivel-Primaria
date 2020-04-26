<%@page import="Config.Conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="modelo.Cuestion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="http://code.jquery.com/jquery-1.12.0.js"></script> 
        <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
<link rel="stylesheet" type="text/css" href="css/style_cuestionario_secundaria.css">
        <title>Cuestionario Secundaria</title>
    </head>
    <body>
        <div id="contenido">
            <div id="encabezado">
                <h5>Manejo de Residuos sólidos - Evalución de Aprendizaje</h5>
            </div>
            <div id="conten">
                <div id="titulito">
                    <i class="fa fa-check-square-o" id="iconito"></i><h4 id="enc">10 Preguntas</h4>
                </div>
                <div id="preguntas">
                    <div id="pregunta">
                    <%
                        Cuestion cad = new Cuestion();
                    ResultSet rs;
                    rs=cad.listarTodosSecundaria();
                    
                    %> 
                    <%while(rs.next()){%>                   
                        <form name="formulario<%=rs.getString("id_pregunta")%>" id="formulario<%=rs.getString("id_pregunta")%>">
                            <div id="conten_pregunta">
                    <h1 id="titulo_pregunta"><%=rs.getString("id_pregunta")%>. <%=rs.getString("descripcion")%></h1>
                    </div>
      <input type="radio" name="pregunta<%=rs.getString("id_pregunta")%>" value="<%=rs.getString("puntuacion")%>" id="pregunta1">
      <label for="<%=rs.getString("opc1")%>"><%=rs.getString("opc1")%></label><br>
      <input type="radio" name="pregunta<%=rs.getString("id_pregunta")%>" value="<%=rs.getString("puntuacion2")%>" id="pregunta2">
      <label for="<%=rs.getString("opc2")%>"><%=rs.getString("opc2")%></label><br>
      <input type="radio" name="pregunta<%=rs.getString("id_pregunta")%>" value="<%=rs.getString("puntuacion3")%>" id="pregunta3">
      <label for="<%=rs.getString("opc3")%>"><%=rs.getString("opc3")%></label><br>
      <input type="radio" name="pregunta<%=rs.getString("id_pregunta")%>" value="<%=rs.getString("puntuacion4")%>" id="pregunta4">
      <label for="<%=rs.getString("opc4")%>"><%=rs.getString("opc4")%></label><br><br>
       </form>
   <%}%>
                        <input type="submit" value="Verificar" id="boton"  name="boton"/>                   
                </div>
            </div>   
            </div>
        </div>
<div class="contenedor2">
                            <div class="overlay2" id="overlay2">
			<div class="popup2" id="popup2">
                            <div id="pop_enc">
                            <a href="#" id="btn-cerrar-popup2" class="btn-cerrar-popup2"><i class="fa fa-times"></i></a>
                            <div id="popup-video">
                                <i id="video_tut" class="fa fa-list-alt"></i><h3 id="titulo_video">PUNTAJE CUESTIONARIO</h3>
                            </div>
                            </div>
                            <label id="puntaje"><b>Puntaje Obtenido: </b></label><label id="res"><b></b></label><label id="puntaje"><b>%</b></label><br>
                            <div id="mensajito2"><p>No Obtuviste el Puntaje Necesario para Ser Certificado</p></div>
                            <div id="mensajito"><p>Obtenen tu Certificado, Solo Ingresa los Siguientes Campos</p></div>
                            <div id="aprobado">
                                  <form name="reporte" action="Certificado_Secundaria?menu=Certificar" target="_blank" method="POST">
                                      <label id="lbl_nombre">Nombre: <input type="text" id="nombre" name="nombre" autocomplete="off"/><input type="hidden" name="nombre2" id="nombre2" /></label><br>
                                      <label id="lbl_ti">Tipo Documento: <select name="tipo" id="cars" class="select">
  <option value="TI">Tarjeta Identidad</option>
  <option value="CC">Cedula Ciudadania</option>
</select></label><br>
<label id="lbl_ti">Número: <input type="text" id="tarjeta" name="tarjeta" autocomplete="off"/><input type="hidden" name="tarjeta2" id="tarjeta2" /></label><br><br><br>                                                                  
            <button type="submit" name="accion" value="Generar" onclick="return validarFormulario()" class="btn btn-outline-primary" id="confirmar" >Aceptar</button>
        </form> 
                                </form>
                            </div>
                            </div> 				                                                                                            
			</div>
		</div>
      <script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
      <script src="js/cuestion_secundaria.js" type="text/javascript"></script>
    </body>
</html>
