
  $(document).ready( function () {
    $('#minhatabela').DataTable();
  
} );
$('#minhatabela').DataTable( {
    responsive: true,
    //"createdRow": function( row, data, dataIndex ) {
      //       if ( data[1] != "London" ) {        
        // $(row).addClass('red');
        //     }
       //}
} );
$('#minhatabela').DataTable( {
   /* "createdRow": function( row, data, dataIndex ) {
             if ( data[4] != "Activo" ) {        
         //$(row).addClass('red');
         $(row).attr('style', 'background-color: #EF5350; color: white; font-size: 17px; text-align: center; font-weight: bold;');
             }else{
               $(row).attr('style', ' color: black !important; font-size: 17px; text-align: center; font-weight: bold;');  
             }
       },*/
    
    "destroy": true,
    
    language: {
      "sProcessing":     "Procesando...",
                "sLengthMenu":     "Mostrar _MENU_ registros",
                "sZeroRecords":    "No se encontraron resultados",
                "sEmptyTable":     "Ningún dato disponible en esta tabla =(",
                "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
                "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
                "sInfoPostFix":    "",
                "sSearch":         "Buscar:",
                "sUrl":            "",
                "sInfoThousands":  ",",
                "sLoadingRecords": "Cargando...",
                "oPaginate": {
                    "sFirst":    "Primero",
                    "sLast":     "Último",
                    "sNext":     "Siguiente",
                    "sPrevious": "Anterior"
                },
                "oAria": {
                    "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
                    "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                },
                "buttons": {
                    "copy": "Copiar",
                    "colvis": "Visibilidad"
                },

                
               
}
} );
function aviso(url){
        alertify.confirm('<Strong>¡Adventercia!</Strong>',"¿Esta Seguro de Cambiar el Estado del Cliente?",
  function() {      
    alertify.success('Confirmado');
    document.location = url;
return true;
  },
  function() {      
    alertify.error('Cancelado');
  }
);
}; 

