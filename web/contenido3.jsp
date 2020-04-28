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
        <link rel="stylesheet" type="text/css" href="css/style_conten3.css">
        <title>Contenido 3</title>
    </head>
    <body>
        <div id="contenido">
            <div id="encabezado">
                <div id="bienv">
                    <h6 id="bienv_text">Manejo de Residuos Sólidos</h6>
                </div>
                <div id="navegacion">
                   <a href="contenido2.jsp" target="frame" id="anterior"><i class="fa fa-caret-left" id="caretant"></i> Anterior</a> <input id="campo" type="text" value="3/11" disabled=""/><a href="contenido4.jsp" target="frame" id="siguiente">Siguiente <i class="fa fa-caret-right" id="caret"></i></a>
                </div>
                </div>
            <div id="conten">
                <div id="titulo">
                    <div id="titulos">
                        <h1 id="titulo_video">Responde en Base al Video Anterior</h1></div>  
                </div>
                <div id="preguntas">
                    <div id="conten_pregunta">
                    <h1 id="titulo_pregunta">¿De que color es el contenedor para reciclar el plástico?</h1>
                    </div>
                    <div id="pregunta">
                        <form name="formulario" id="formulario">
      <input type="radio" name="pregunta" value="Verde" id="pregunta1">
      <label for="pregunta1">A). Verde</label>
      <input type="radio" name="pregunta" value="Azul" id="pregunta2">
      <label for="pregunta2">B). Azul</label>
      <input type="radio" name="pregunta" value="Amarillo" id="pregunta3">
      <label for="pregunta3">C). Amarillo</label>
      <input type="radio" name="pregunta" value="Otro" id="pregunta4">
      <label for="pregunta4">D). Otro </label><br><br>      
                        </form>
                        <input type="submit" value="Verificar" id="boton"  name="boton"/>
    </div>                  
                </div>              
            </div>
        </div>
         <div class="contenedor2">
                            <div class="overlay2" id="overlay2">
			<div class="popup2" id="popup2">
                            <a href="#" id="btn-cerrar-popup2" class="btn-cerrar-popup2"><i class="fa fa-times"></i></a>
                            <i class="fa fa-times" id="incorrecto"><label><b>Incorrecto:</b> Te invitamos a que vuelvas a ver el Video, y puedas responder a esta pregunta</label></i><br>
                            <i class="fa fa-check" id="correcto"><label><b>Correcto:</b> El Contenedor en el que debes depositar los plásticos es de Color Azul</label></i><br>                                      
                            </div> 				                                                                                            
			</div>
		</div>
      <script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
      <script src="js/contenido3.js" type="text/javascript"></script>
    </body>
</html>
