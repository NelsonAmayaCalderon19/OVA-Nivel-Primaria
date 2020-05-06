	$(document).ready(function()
		{
                   
		$("#boton").click(function () {	
                    var res = $('input:radio[name=pregunta]:checked').val();
                    if(res=="" || res==null){
                        alert("Debes Seleccionar una Respuesta");
                    }else{

	overlay2.classList.add('active');
	popup2.classList.add('active');
        if(res=="Azul"){
$("#correcto").fadeIn(500);

        } else{
$("#incorrecto").fadeIn(500);

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
       $('input:radio[name=pregunta]:checked').removeAttr('checked');
});      
$(document).ready(function() {
    setTimeout(function() {
        $("#contenido").fadeIn(500);
    },500);  
});
               



