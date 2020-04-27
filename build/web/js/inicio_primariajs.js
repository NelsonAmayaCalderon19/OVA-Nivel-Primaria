            
$(document).ready(function() {
    setTimeout(function() {
        $("#contenido").fadeIn(1500);
    },500);
 setTimeout(function() {
        
        $(".personaje").fadeIn(1500);
    },1000);
    setTimeout(function() {
        $("#mensaje").fadeIn(4500);
    },4000);
    setTimeout(function() {
        document.getElementById('audio').play();
    },3500);  
});
document.getElementById("link").focus();


