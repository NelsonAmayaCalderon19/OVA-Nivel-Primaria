	$(document).ready(function()
		{
                   
		$("#boton").click(function () {	
                    var total="";
$("input:checkbox:checked").each(function() {
             //alert($(this).val());
             total+=($(this).val());
        });
        //alert(total);
        if(total==""){
            alert("Desbes Seleccionar al menos una Opción");
        }else{
	overlay2.classList.add('active');
	popup2.classList.add('active');
        if(total=="14" || total=="41"){
$("#correcto").fadeIn(500);
$("#correcto2").fadeOut(500);

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
        $("#correcto2").fadeOut(0);
        $("#incorrecto").fadeOut(0);
       $('input:checkbox[name=pregunta]:checked').removeAttr('checked');
});      
$(document).ready(function() {
    setTimeout(function() {
        $("#contenido").fadeIn(500);
    },500);  
});
               



