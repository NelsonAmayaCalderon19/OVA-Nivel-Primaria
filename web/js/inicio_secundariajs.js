            
$(document).ready(function() {
    setTimeout(function() {
        $("#contenido").fadeIn(1500);
    },1000);
 setTimeout(function() {
        $("#mensaje").fadeIn(1500);
        $(".personaje").fadeIn(1500);
    },1500);
    setTimeout(function() {
        document.getElementById('audio').play();
    },3500);  
});
document.getElementById("link").focus();


