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
        <link rel="stylesheet" type="text/css" href="css/style_contenido_secundaria_9.css">
        <title>Contenido 3</title>
    </head>
    <body>
        <div id="contenido">
            <div id="encabezado">
                <div id="bienv">
                    <h6 id="bienv_text">Manejo de Residuos Sólidos</h6>
                </div>
                <div id="navegacion">
                   <a href="contenido_secundaria8.jsp" target="frame" id="anterior"><i class="fa fa-caret-left" id="caretant"></i> Anterior</a> <input id="campo" type="text" value="9/18" disabled=""/><a href="contenido_secundaria10.jsp" target="frame" id="siguiente">Siguiente <i class="fa fa-caret-right" id="caret"></i></a>
                </div>
                </div>
            <div id="conten">
                <div id="titulo">
                    <div id="titulos">
                        <h1 id="titulo_video">Responde en Base al tema Visto Anteriormente</h1></div>  
                </div>
                <div id="preguntas">
                    <div id="conten_pregunta">
                    <h1 id="titulo_pregunta">Observa el siguiente ejemplo: Si tu vas a la tienda y compras un refresco en envase de plástico y un pastel envuelto en una servilleta, luego de comertelos ¿en que colores de recipientes debes arrojar la servilleta y el embase desechable respectivamente? - Recuerda que puedes seleccionar mas de una opción</h1>
                    </div><br><br><br>
                    <div id="pregunta">
                        <form name="formulario" id="formulario">
      <input type="checkbox" name="pregunta" value="1" id="pregunta1">
      <label for="pregunta1">A). Azul</label>
      <input type="checkbox" name="pregunta" value="2" id="pregunta2">
      <label for="pregunta2">B). Verde</label>
      <input type="checkbox" name="pregunta" value="3" id="pregunta3">
      <label for="pregunta3">C). Rojo</label>
      <input type="checkbox" name="pregunta" value="4" id="pregunta4">
      <label for="pregunta4">D). Amarillo</label><br><br>      
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
                            <i class="fa fa-times" id="incorrecto"><label><b>Incorrecto:</b> Has Arrojado estos elementos en Contenedores no adecuados para ellos.</label></i><br>
                            <i class="fa fa-check" id="correcto"><label><b>Correcto:</b> Has Arrojado estos elementos en los Contenedores adecuados<br> ya que los plásticos se deben disponer en el contenedor Amarillo, y los papales en el Contenedor Azul<br> Felicitaciones!!!</label></i><br>  
                            </div> 				                                                                                            
			</div>
		</div>
      <script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
      <script src="js/contenido_secundaria9.js" type="text/javascript"></script>
    </body>
</html>
