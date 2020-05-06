<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="http://code.jquery.com/jquery-1.12.0.js"></script> 
        <link rel="stylesheet" type="text/css" href="css/style_contenido2.css">
        <title>Contenido 2</title>
    </head>
    <body>
        <div id="contenido">
            <div id="encabezado">
                <div id="bienv">
                    <h6 id="bienv_text">Manejo de Residuos Sólidos</h6>
                </div>
                <div id="navegacion">
                   <a href="contenido1.1.jsp" target="frame" id="anterior"><i class="fa fa-caret-left" id="caretant"></i> Anterior</a> <input id="campo" type="text" value="3/12" disabled=""/><a href="contenido3.jsp" target="frame" id="siguiente">Siguiente <i class="fa fa-caret-right" id="caret"></i></a>
                </div>
                </div>
            <div id="conten">
                <div id="titulo">
                    <h1 id="titulo_video">¿Por qué el Reciclaje es tan importante?</h1>  
                </div>
                <div id="conten_video">
                     <iframe id="cicle" src="https://www.youtube.com/embed/-UFFFUTMlCw?autohide=0" allowfullscreen></iframe>
                </div>
                <div id="descripcion">
                    <div id="desc">
                        <p>Llamamos basura a todo lo que ya no sirve y queremos quitar de nuestras casas. 
                            Todos los días se generan en los hogares una importante cantidad de basura y se produce acumulación 
                            de desechos en las ciudades. El método de reciclaje permite reutilizar desechos y contribuir a 
                            reducir el volumen de los residuos. La clasificación de la basura es indispensable para facilitar
                            el reciclaje y cuidar el medio ambiente.</p>
                        <div>
                </div>
            </div>
        </div>
                <script src="js/contenido2.js" type="text/javascript"></script>
    </body>
</html>
