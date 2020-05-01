$(document).ready(function()
		{
                var total=0;   
		$("#boton").click(function () {	
                    var res = $('input:radio[name=pregunta1]:checked').val();
                    var res2 = $('input:radio[name=pregunta2]:checked').val();
                    var res3 = $('input:radio[name=pregunta3]:checked').val();
                    var res4 = $('input:radio[name=pregunta4]:checked').val();
                    var res5 = $('input:radio[name=pregunta5]:checked').val();
                    var res6 = $('input:radio[name=pregunta6]:checked').val();
                    var res7 = $('input:radio[name=pregunta7]:checked').val();
                    var res8 = $('input:radio[name=pregunta8]:checked').val();
                    var res9 = $('input:radio[name=pregunta9]:checked').val();
                    var res10 = $('input:radio[name=pregunta10]:checked').val();
                    if(res=="" || res==null){                      
                        alert("Debes Seleccionar una Opción a la Pregunta 1");                       
                    }else if(res2=="" || res2==null){
                        alert("Debes Seleccionar una Opción a la Pregunta 2");
                    }else if(res3=="" || res3==null){
                        alert("Debes Seleccionar una Opción a la Pregunta 3");
                    }else if(res4=="" || res4==null){
                        alert("Debes Seleccionar una Opción a la Pregunta 4");
                    }else if(res5=="" || res5==null){
                        alert("Debes Seleccionar una Opción a la Pregunta 5");
                    }else if(res6=="" || res6==null){
                        alert("Debes Seleccionar una Opción a la Pregunta 6");
                    }else if(res7=="" || res7==null){
                        alert("Debes Seleccionar una Opción a la Pregunta 7");
                    }else if(res8=="" || res8==null){
                        alert("Debes Seleccionar una Opción a la Pregunta 8");
                    }else if(res9=="" || res9==null){
                        alert("Debes Seleccionar una Opción a la Pregunta 9");
                    }else if(res10=="" || res10==null){
                        alert("Debes Seleccionar una Opción a la Pregunta 10");
                    }else{
overlay2.classList.add('active');
	popup2.classList.add('active');
        
total = parseInt(res) + parseInt(res2) + parseInt(res3) + parseInt(res4) + parseInt(res5) + parseInt(res6) + parseInt(res7) + parseInt(res8) + parseInt(res9) + parseInt(res10);
var porcentaje = parseFloat((total / 10)*100);
//alert(total);
document.getElementById('res').innerHTML = parseInt(porcentaje);
if(porcentaje>=80){
    setTimeout(function() {
        $("#mensajito").fadeIn(500);
        $("#aprobado").fadeIn(500);
    },500); 
    //select po.id_cuestionario, po.id_pregunta,po.opc1,po.opc2,po.opc3,po.opc4,pun.opc,pun.puntuacion,pun.puntuacion2,pun.puntuacion3,pun.puntuacion4 FROM pregunta p, preg_opc po, puntuacion pun where pun.opc4=po.opc4 and pun.opc3=po.opc3 and pun.opc2=po.opc2 and pun.opc=po.opc1 and pun.id_pregunta=po.id_pregunta and pun.id_cuestionario=p.id_cuestionario and po.id_cuestionario=p.id_cuestionario and p.id_cuestionario=1 GROUP BY po.id_pregunta}
        }else if(porcentaje<80)
            $("#mensajito2").fadeIn(500);
        }
           
			});
		 });
                 
                 function validarFormulario(){
 
    var txtCedula = document.getElementById('tarjeta').value;
    var txtNombre = document.getElementById('nombre').value;

    if(txtNombre == null || txtNombre.length == 0 || /^\s+$/.test(txtNombre)){
        document.getElementById("nombre").focus();
                alertify.alert("Advertencia!","Nombre no Aceptado, ¡Solo Letras!"); 
      //  alert("Nombre no Aceptado, ¡Solo Letras!"); 
     // setTimeout(function(){document.getElementById('nombre').focus()}, 1);
      return false;
    }
    if(txtCedula == null || txtCedula.length == 0 || isNaN(txtCedula)){
        document.getElementById("tarjeta").focus();
                alertify.alert("Advertencia!","Documento no Válido, ¡Solo Números!"); 
           //alert("Documento no Válido, ¡Solo Números!");
        //setTimeout(function(){document.getElementById('tarjeta').focus()}, 1);    
      return false;     
    }else{
        $('body,html').animate({
        scrollTop: '0px'
            }, 500);
       $('input:radio[name=pregunta1]:checked').removeAttr('checked');
$('input:radio[name=pregunta2]:checked').removeAttr('checked');
$('input:radio[name=pregunta3]:checked').removeAttr('checked');
$('input:radio[name=pregunta4]:checked').removeAttr('checked');
$('input:radio[name=pregunta5]:checked').removeAttr('checked');
$('input:radio[name=pregunta6]:checked').removeAttr('checked');
$('input:radio[name=pregunta7]:checked').removeAttr('checked');
$('input:radio[name=pregunta8]:checked').removeAttr('checked');
$('input:radio[name=pregunta9]:checked').removeAttr('checked');
$('input:radio[name=pregunta10]:checked').removeAttr('checked');
var input1 = $('#nombre').val();
var input2 = $('#tarjeta').val();
$('#tarjeta2').val(input2);
$('#nombre2').val(input1);
$('#nombre').val('');
$('#tarjeta').val('');
$("#aprobado").fadeOut();
$("#mensajito").fadeOut();
$("#mensajito2").fadeOut();
	overlay2.classList.remove('active');
	popup2.classList.remove('active');
        
return true;

    }
    }
    
                                btnCerrarPopup2 = document.getElementById('btn-cerrar-popup2');
btnCerrarPopup2.addEventListener('click', function(e){
	e.preventDefault();
	overlay2.classList.remove('active');
	popup2.classList.remove('active');
$("#aprobado").fadeOut();
$("#mensajito").fadeOut();
$("#mensajito2").fadeOut();
$('input:radio[name=pregunta1]:checked').removeAttr('checked');
$('input:radio[name=pregunta2]:checked').removeAttr('checked');
$('input:radio[name=pregunta3]:checked').removeAttr('checked');
$('input:radio[name=pregunta4]:checked').removeAttr('checked');
$('input:radio[name=pregunta5]:checked').removeAttr('checked');
$('input:radio[name=pregunta6]:checked').removeAttr('checked');
$('input:radio[name=pregunta7]:checked').removeAttr('checked');
$('input:radio[name=pregunta8]:checked').removeAttr('checked');
$('input:radio[name=pregunta9]:checked').removeAttr('checked');
$('input:radio[name=pregunta10]:checked').removeAttr('checked');
$('body,html').animate({
        scrollTop: '0px'
            }, 500);
});      
$(document).ready(function() {
    setTimeout(function() {
        $("#contenido").fadeIn(500);
    },500);  
});



