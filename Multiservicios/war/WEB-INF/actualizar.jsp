  
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="cerdo.unsa.*"%>
<%@ page import="java.util.List"%>
<link rel="stylesheet" href="estilo1.css" type="text/css" />
<script> 
// wait for the DOM to be loaded 
$(document).ready(function() {
	// prepare Options Object 
	var options = { 
	    target:     '#caja_ajax', 
	    url:        '/principal', 
	    success:    function() { 
	        alert('¡gracias por comentar!'); 
	    } 
	}; 
	// pass options to ajaxForm 
	$('#formPersona').ajaxForm(options);
	
	var options2 = { 
	    target:     '#caja_ajax', 
	    url:        '/ajax04_1', 
	    success:    function() { 
	        alert('¡Se han eliminado Personas!'); 
	    } 
	}; 
	// pass options to ajaxForm
	$('#listaPersonas').ajaxForm(options2);
}); 
</script>

<!-- Menú de navegación del sitio -->

<!-- Form Persona -->


	<%@include file="pedidos.jsp" %>
  
  
    <div id="caja_ajax">
       <p>dgfgdfhdf</p>
      </div>  