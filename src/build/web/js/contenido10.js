	$(document).ready(function()
		{
                   
		$("#boton").click(function () {	
                    var res = $('input:radio[name=pregunta]:checked').val();
                    if(res=="" || res==null){
                        alert("Debes Seleccionar una Respuesta");
                    }else{

	overlay2.classList.add('active');
	popup2.classList.add('active');
        if(res=="3"){
$("#correcto").fadeIn(500);

        }else{
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
        $("#incorrecto2").fadeOut(0);
        $("#incorrecto3").fadeOut(0);
        $('input:radio[name=pregunta]:checked').removeAttr('checked');
});
      
$(document).ready(function() {
    setTimeout(function() {
        $("#contenido").fadeIn(500);
    },500);  
});
               
	siguiente = document.getElementById('siguiente'),
	anterior = document.getElementById('anterior'),
	caretant = document.getElementById('caretant');
        caret = document.getElementById('caret');


siguinte.addEventListener('click', function(e){
	e.preventDefault();
        document.getElementById('cicle').src="https://www.youtube.com/embed/85MppyLJHz0?autohide=0";
});
anterior.addEventListener('click', function(e){
	e.preventDefault();
        document.getElementById('cicle').src="https://www.youtube.com/embed/85MppyLJHz0?autohide=0";
});
caretant.addEventListener('click', function(e){
	e.preventDefault();
        document.getElementById('cicle').src="https://www.youtube.com/embed/85MppyLJHz0?autohide=0";
});
caret.addEventListener('click', function(e){
	e.preventDefault();
        document.getElementById('cicle').src="https://www.youtube.com/embed/85MppyLJHz0?autohide=0";
});


