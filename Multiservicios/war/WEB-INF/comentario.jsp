<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="cerdo.unsa.*"%>
<%@ page import="java.util.List"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="javax.jdo.Query"%>
<%@page import="javax.jdo.PersistenceManager"%>

	

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


	<%@include file="index.jsp" %>

<!--  -->
<%
List<Usuario> usuario = (List<Usuario>) request.getAttribute("personas");
%>
<br/><br/>

<!-- Tag asíncrono -->

<!-- Aquí pronto contenido asíncrono -->
<!-- Pero mientras se muestra una lista de personas enviada por el servlet ListaPersonas -->
<div class="wrapper col5">
		<div id="footer">	
	<div class="footbox banners last">
      <h2>Comentarios</h2>
     <div id="comments">
      <div id="caja_ajax">
        <ul class="commentlist">
        <%for( Usuario p : usuario ) {%>
          <li class="comment_odd">
		    <div class="author"><span class="name"><a href="#"><%= p.getName() %></a></span> <span class="wrote">escribió:</span><br>
           <a href="">Mayo 28, 2015 at 12:54 pm</a>
           <p><%= p.getComentario() %></p></div>      
          </li>
          <%}%>
        </ul>
      </div>      
     </div>
	</div>
<!--  -->
</div>
</div>
