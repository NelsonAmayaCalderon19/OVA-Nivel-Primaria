	$(document).ready(function()
		{
                   
		$("#boton").click(function () {	
                    var res = $('input:radio[name=pregunta]:checked').val();
                    if(res=="" || res==null){
                        alert("Debes Seleccionar una Respuesta");
                    }else{

	overlay2.classList.add('active');
	popup2.classList.add('active');
        if(res=="Incorrecto: Te invitamos a que vuelvas a ver el Video, y puedas responder a esta pregunta"){
$("#incorrecto").fadeIn(500);

        }else if(res=="Correcto: El Contenedor en el que debes depositar los plásticos es de Color Azul"){
$("#correcto").fadeIn(500);

        }else if(res=="Incorrecto: Te invitamos a que vuelvas a ver el Video, y puedas responder a esta pregunta"){
$("#incorrecto2").fadeIn(500);

        } else{
$("#incorrecto3").fadeIn(500);

        }
                    } 
			});
		 });
               btnCerrarPopup2 = document.getElementById('btn-cerrar-popup2');
btnCerrarPopup2.addEventListener('click', function(e){
	e.preventDefault();
	overlay2.classList.remove('active');
	popup2.classList.remove('active');
        $("#correcto").fadeOut(0);
        $("#incorrecto").fadeOut(0);
        $("#incorrecto2").fadeOut(0);
        $("#incorrecto3").fadeOut(0);
});      
$(document).ready(function() {
    setTimeout(function() {
        $("#contenido").fadeIn(500);
    },500);  
});
               




