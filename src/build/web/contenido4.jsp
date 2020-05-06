<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="http://code.jquery.com/jquery-1.12.0.js"></script> 
        <link rel="stylesheet" type="text/css" href="css/style_contenido4.css">
        <title>Contenido 4</title>
    </head>
    <body>
        <div id="contenido">
            <div id="encabezado">
                <div id="bienv">
                    <h6 id="bienv_text">Manejo de Residuos Sólidos</h6>
                </div>
                <div id="navegacion">
                   <a href="contenido3.jsp" target="frame" id="anterior"><i class="fa fa-caret-left" id="caretant"></i> Anterior</a> <input id="campo" type="text" value="5/12" disabled=""/><a href="contenido5.jsp" target="frame" id="siguiente">Siguiente <i class="fa fa-caret-right" id="caret"></i></a>
                </div>
                </div>
            <div id="cuerpo">
                <div id="titulo">
                    <h3 id="aplicacion">Apliación de las 3R</h3>
                </div>
                <div id="campos">
                <div id="campo2">
                    <label id=""><strong><b>a). Reducir:</b></strong></label><br>
                       <p>La reducción de residuos sólidos es un método de minimizar los residuos generando lo menos posible. La reducción es la parte más importante de las 3R. La reducción es el primer objetivo de la estrategia del manejo de los residuos sólidos.</p>                  
                </div>
                <div id="campo3">
                    <img id="imagen" src="images/arbol.png" alt="" />
                </div>
                </div>
                <div id="camposs">
                <div id="campo22">
                    <label id="datos"><strong><b>Algunos Datos importantes </b></strong></label><i class="fa fa-hand-o-left" id="manita"></i><br>
                    <i class="fa fa-recycle" id="recicla"></i><p>Planifica y compra sólo lo necesario.</p><br>
                    <i class="fa fa-recycle" id="recicla"></i><p>Escoge y compra productos con poco empaque</p><br>
                    <i class="fa fa-recycle" id="recicla"></i><p>Prefiere los productos con envases retornables o reciclables.</p><br>
                    <i class="fa fa-recycle" id="recicla"></i><p>Disminuye el uso de fundas plásticas.</p><br>
                    <i class="fa fa-recycle" id="recicla"></i><p>Escribe, imprime sólo lo necesario usando ambos lados de la hoja.</p>
                </div>
                <div id="campo33">
                    <img id="imagen2" src="images/niños.png" alt="" />
                </div>
                </div>
            </div>
        </div>
            <script src="js/contenido4.js" type="text/javascript"></script>
    </body>
</html>
