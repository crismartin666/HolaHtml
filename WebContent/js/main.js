/**
 *   JavaScript para ejecutar en todas las paginas del proyecto
 *   Se carga en foot.jsp despues de incluir todas las librerias necesarias de JS 	
 */

//Se ejecuta cuando todo el HTML se ha cargado
$(function() {
	
	console.debug('document ready!');
	
	 $('#select').filterByText($('#textbox'), false);
	 

	 // Asociar a todos los elementos con class='fecha', el datepicker de Jquery UI
	 
	 $( ".fecha" ).datepicker();

	 // Asociar a todos los elementos input[data-widget='calendario', el datepicker de Jquery UI

	 $("input[data-widget='calendario']").datepicker();

	 
	 console.debug('datepicker habilitado');

	 
    
  });