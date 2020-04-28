<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon"  href="images/logo_galan.png">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="http://code.jquery.com/jquery-1.12.0.js"></script> 
        <link rel="stylesheet" type="text/css" href="css/styles_primaria.css">
        <title>OVA Primaria</title>
         
    </head>
    <body>
        <header class="encabezado">
            <div id="division_logo">
		<img class="logo" src="images/logo_galan.png" alt="">
	</div>
            <div id="division_colegio">
		<h3 id="colegio">Colegio Luis Carlos Galán Sarmiento</h3>
                <h3 id="colegio2">Objeto Virtual de Aprendizaje - Manejo de Residuos Sólidos</h3>
	</div>
            <div id="division_nivel">
		<h3 id="nivel">Nivel</h3>
                <h3 id="nivel2">Primaria</h3>
	</div>
            <div id="division_logo2">
		<img class="logo2" src="images/logo_galan.png" alt="">
	</div>
            </header>
        <div id="contenido">
            <div class="menu_opciones">
	<ul class="menu_opciones2">
            <a id="link" target="frame" href="inicio.jsp"><i class="icono_izquierda fa fa-home"></i><strong>INICIO</strong></a>
            <a id="link2" target="frame" href="objetivos.jsp"><i class="icono_izquierda fa fa-bullseye"></i><strong>OBJETIVOS</strong></a>
            <a id="link3" target="frame" href="contenido1.jsp"><i class="icono_izquierda fa fa-file-text-o"></i><strong>CONTENIDO</strong></a>
            <a id="link4" target="frame" href="cuestionario.jsp"><i class="icono_izquierda fa fa-list-alt"></i><strong>CUESTIONARIO</strong></a>
            <a id="link5" target="frame" href="bibliografia.jsp"><i class="icono_izquierda fa fa-book"></i><strong>TEXTOS - APOYO</strong></a>
	</ul>
        </div>
            <div id="conten_frame">
               <iframe  src="inicio.jsp" name="frame" id="frame" frameborder="0" style="margin: 0px; width: 100%; height:650px; overflow-y:hidden; overflow-x:hidden;"></iframe>	               
            </div>
            <div id="content_video">
                  <a id="video"><i class="icono_izquierda fa fa-video-camera"></i><strong>VIDEO TUTORIAL</strong></a>
                  <a id="creditos"><i class="icono_izquierda fa fa-users"></i><strong>CREDITOS</strong></a>
                  <a id="creditos" style="float: right;"  href="index.jsp"><i class="icono_izquierda fa fa-arrow-left"></i><strong>Volver al Menú Principal  </strong></a>
            </div>
        </div>
        <div class="contenedor">
                            <div class="overlay" id="overlay">
			<div class="popup" id="popup">
                            <a href="#" id="btn-cerrar-popup" class="btn-cerrar-popup"><i class="fa fa-times"></i></a>
                            <div id="popup-video">
                                <i id="video_tut" class="fa fa-video-camera"></i><h3 id="titulo_video">VIDEO TUTORIAL</h3>
                            </div>
                        <iframe id="cicle" width="550" height="300" src="https://www.youtube.com/embed/85MppyLJHz0?autohide=0" allowfullscreen></iframe>
                            </div> 				                                                                                           
			</div>
		</div>
        <div class="contenedor2">
                            <div class="overlay2" id="overlay2">
			<div class="popup2" id="popup2">
                            <a href="#" id="btn-cerrar-popup2" class="btn-cerrar-popup2"><i class="fa fa-times"></i></a>
                            <div id="popup-creditos">
                                <i id="credits_user" class="fa fa-users"></i><h4 id="titulo_creditos">EQUIPO DE TRABAJO</h4>
                            </div>
                            <div id="cred">
                                <div id="creds">
                                    <div id="credd">
                                        <h5><strong>DOCENTE</strong></h5>
                                        <p id="letra2"><strong>Sandra Turizo Florez</strong><br><strong>Lic. en Ciencias Naturales </strong><br>
                                        <strong>Colegio Luis Carlos Galán Sarmiento - San José de Cúcuta </strong></p>                                       
                                    </div> 
                                    <div id="credds">
                                        <h6><strong>EQUIPO DESARROLLADOR</strong></h6>
                                        <p id="letra"><strong><b>DIRECTOR:</b> Ing. Luis Alejandro Jimenez Turizo</strong><br><strong><b>DISEÑADOR:</b> Ing. Jheinember Stith Jimenez </strong><br>
                                            <strong><b>DESARROLLADOR WEB:</b> Ing. Nelson Amaya Calderón </strong><br><strong><b>ANALISTA:</b> Ing Camilo Alexander Jauregui </strong><br><strong><b>ING BD:</b> Ing. William Alberto Montes Gomez </strong><br><strong><b>Gerente Financiero:</b> Ing. Johan Diaz Leal </strong></p>
                                    </div>                                      
                                </div>  
                                <div id="credss">
                                    <div id="cres">
                                        <img class="logo3" src="images/logo_galan.png" alt="">
                                    </div> 
                                    <div id="cress">
                                        <img class="logo3" src="images/LOGO EMPRESA.png" alt="">
                                    </div> 
                                </div> 
                            </div>
                            </div> 				                                                                                            
			</div>
		</div>
                    </div>                  
                            </div>      
                     </div>
                      <script src="js/primariajs.js" type="text/javascript"></script>
    </body>
</html>
