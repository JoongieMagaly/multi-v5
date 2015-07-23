<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.google.appengine.api.blobstore.BlobstoreServiceFactory" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>

<%
    BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
%>
    
<!DOCTYPE HTML>
<!-- The HTML 4.01 Transitional DOCTYPE declaration-->
<!-- above set at the top of the file will set     -->
<!-- the browser's rendering engine into           -->
<!-- "Quirks Mode". Replacing this declaration     -->
<!-- with a "Standards Mode" doctype is supported, -->
<!-- but may lead to some differences in layout.   -->

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Multiservicios la #1</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="estilo1.css" type="text/css" />
<link href="calendario_dw/calendario_dw-estilos.css" type="text/css" rel="STYLESHEET">
	<style type="text/css">
	</style>
	<script type="text/javascript" src="calendario_dw/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="calendario_dw/calendario_dw.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function(){
		$(".campofecha").calendarioDW();
	})
	</script>
</head>
<body id="top">
<div class="wrapper col1">
  <div id="header">
    <div class="fl_left">
      <h1><a href="/principal">Ventas de Carnes y Embutidos</a></h1>
      <p>La calidad, lo selecto e higiene usted lo encuentra en La #1</p>
    </div>
    <div class="fl_right"><img src="logo.jpg" alt="" /></div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="topbar">
    <div id="topnav">
      <ul>
        <li><a href="/principal">Inicio</a></li>
        <li ><a href="#">Te ofrecemos</a>
          <ul>
            <li><a href="/carnes">Carne de cerdo</a></li>
            <li><a href="/embutidos">Embutidos</a></li>
          </ul>
        </li>
        <li><a href="/pedidos">Pedidos</a></li>
        <li><a href="/visita">Visitas</a></li>
        <li class="last"><a href="/contactanos">Contáctanos</a></li>
        <li class="active"><a href="/trabajo">Trabaja con Nosotros</a></li>
      </ul>
    </div>
   <div id="search">
				<form action="/sesion?acceso=nuevo" method="post">
					<input type="submit" value="Iniciar Sesion">
				</form>
			</div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
	<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="featured_intro">
  <br><br>
	<h1>Multiservicios y Distribuciones La #1</h1>
			</div>

<form name="Empleo" id="Empleo" action="/currilulum" method="post">
<div class="justify">
<h3> DATOS PERSONALES </h3>
Nombres:* <br>
<input type="text" name="nombre" value=""><br><br>
Apellidos:*<br>
<input type="text" name="apellido" value=""><br><br>
Correo Electrónico:* <br>
<input type="email" name="correo" value=""><br><br>
Telefono:*<br>
<select>
	<option value="Seleccione"> Seleccione</opcion>
	<option value="Celular"> Celular</opcion>
	<option value="Fijo"> Fijo</opcion>
</select>
<input type="text" name="telefono" value=""  pattern=".{9,9}" required onkeypress="return numero(event)" ><br><br>
 <script type="text/javascript">
 function numero(e) { // 1
	    tecla = (document.all) ? e.keyCode : e.which; // 2
	    if (tecla==8) return true; // 3
	    patron = /[0-9\s]/; // 4
	    te = String.fromCharCode(tecla); // 5
	    return patron.test(te); // 6
	}
</script>

Tipo de identificacion:*<br>
<select>
	<option value="Seleccione"> Seleccione</opcion>
	<option value="D.N.I"> D.N.I</opcion>
	<option value="Carnet de Extranjeria"> Carnet de Extranjeria</opcion>
</select>
<input type="text" name="iden" value=""  pattern=".{8,8}" required onkeypress="return validar(event)" placeholder="DNI-8 caracteres"><br><br>
<script type="text/javascript">
function validar(e) { // 1
    tecla = (document.all) ? e.keyCode : e.which; // 2
    if (tecla==8) return true; // 3
    patron =/[0-9\s]/; // 4
    te = String.fromCharCode(tecla); // 5
    return patron.test(te); // 6
}
</script>
Fecha de Nacimiento:<br>
Fecha: <input type="text" name="fecha" class="campofecha" size="12"><br><br>
Estado civil:*<br>
<select name="civil">
	<option value="Seleccione"> Seleccione</opcion>
	<option value="Solero(a)"> Soltero(a)</opcion>
	<option value="Casado(a)"> Casado(a)</opcion>
	<option value="Viudo(a)"> Viudo(a)</opcion>
	<option value="Divorciado/Separado(a)"> Divorciado/Separado(a)</opcion>
</select><br><br>
Dirección:<br>
<input type="text" name="direccion" value=""><br><br>
Licencia de Conducir:<br>
	<input type="radio" name="licencia" value="A-I">A-I<br>
	<input type="radio" name="licencia" value="A-II-A">A-II-A<br>
	<input type="radio" name="licencia" value="A-II-B">A-II-B<br>
	<input type="radio" name="licencia" value="A-III-A">A-III-A<br>
	<input type="radio" name="licencia" value="A-III-B">A-III-B<br>
	<input type="radio" name="licencia" value="A-III-C">A-III-C<br>
	<input type="radio" name="licencia" value="No Tengo">No Tengo<br><br>
<h3> COMPETENCIA Y HABILIDAD  </h3>	<br><br>
Situación Actual:<br>
	<input type="radio" name="situacion" value="desempleado">Desempleado<br>
	<input type="radio" name="situacion" value="empleado">Con Empleo<br><br>
Puesto Deseado:<br>
<select name="puesto">
	<option value="Seleccione"> Seleccione</opcion>
	<option value="Cortes">Cortes</opcion>
	<option value="Delivery">Delivery</opcion>
	<option value="Caja">Caja</opcion>
</select><br><br>
Salario Deseado:<br>
<input type="number" name="salario" value=""><br><br>

<input name="submit" type="submit" value="Siguiente">

</div>
</form> 
			</div>
			<br class="clear" />
	<!-- ####################################################################################################### -->

</body>
</html>