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
	        alert('Â¡gracias por comentar!'); 
	    } 
	}; 
	// pass options to ajaxForm 
	$('#formPersona').ajaxForm(options);
	
	var options2 = { 
	    target:     '#caja_ajax', 
	    url:        '/ajax04_1', 
	    success:    function() { 
	        alert('Â¡Se han eliminado Personas!'); 
	    } 
	}; 
	// pass options to ajaxForm
	$('#listaPersonas').ajaxForm(options2);
}); 
</script>
<!-- MenÃº de navegaciÃ³n del sitio -->

<!-- Form Persona -->


	<%@include file="index.jsp" %>

<!--  -->
<%
List<Usuario> usuario = (List<Usuario>) request.getAttribute("personas");
%>
<br/><br/>

<!-- Tag asÃƒÂ­ncrono -->

<!-- AquÃƒÂ­ pronto contenido asÃƒÂ­ncrono -->
<!-- Pero mientras se muestra una lista de personas enviada por el servlet ListaPersonas -->
<div class="wrapper col5">
		<div id="footer">
			<div class="footbox twitter">
				<h2>Facebook</h2>
				<ul>
					<li><a
						href="https://www.facebook.com/pages/Multiservicios-y-Distribuciones-La1/1592046441054930?ref=hlc"><img
							src="facebookSiguenos.jpg" alt="" style="width: 200px" /></a></li>
				</ul>
			</div>
			<div class="footbox flickr">
				<h2>ConÃƒÂ³cenos...</h2>
				<ul>
					<li><a href="#"><img src="#" alt="" /></a></li>
					<li><a href="#"><img src="#" alt="" /></a></li>
					<li><a href="#"><img src="#" alt="" /></a></li>
					<li><a href="#"><img src="#" alt="" /></a></li>
					<li><a href="#"><img src="#" alt="" /></a></li>
					<li><a href="#"><img src="#" alt="" /></a></li>
				</ul>
				<br class="clear" />
			</div>
			<div class="footbox posts">
				<h2>Comenta...</h2>
				<div id="respond">
					<legend>Registro de persona</legend>
					<div id="formulario">
						<form name="formPersona" id="formPersona" action="/comentarios" method="post">
							<fieldset>
								<div class="fila">
									<div class="etiqueta">
										<label for="name">Nombres :</label>
									</div>
									<div class="control">
										<input type="text" name="name" id="name" maxlength="10"
											required="required" placeholder="Ingrese sus nombres" />
									</div>
								</div>

								<div class="etiqueta">
									<label for="email">Correo :</label>
								</div>
								<div class="control">
									<input type="text" name="email" id="email" maxlength="40"
										required="required" placeholder="Ingrese su email" />
								</div>

								<div class="fila">
									<div class="etiqueta">
										<label for="comentarios">comentario: :</label>
									</div>
									<textarea class="comentario" id="comentario" name="comentario" id="comentarios" cols="32" rows="7"></textarea>
								</div><br>

								<div id="action">
									<input type="submit" value="Comentar" />
									&nbsp; 
      								<input name="reset" type="reset" id="reset" tabindex="5" value="Limpiar">
								</div>
					</fieldset>
					</form>
					<form action="/borrarc" method="get">
						<input type="submit" value="Borrar" />
					</form>
				</div>
				</div>

			</div>
	<div class="footbox banners last">
      <h2>Comentarios</h2>
     <div id="comments">
      <div id="caja_ajax">
        <ul class="commentlist">
        <%for( Usuario p : usuario ) {%>
          <li class="comment_odd">
		    <div class="author"><span class="name"><a href="#"><%= p.getName() %></a></span> <span class="wrote">escribiÃ³:</span><br>
           <a href=""><%=p.getMonth()%> <%=p.getDay()%>, <%=p.getYear()%> a las  <%=p.getHour()%>:<%=p.getMinute()%></a>
           <p><%= p.getComentario() %></p></div>      
          </li>
          <%}%>
        </ul>
      </div>      
     </div>
	</div>
	</div>
</div>