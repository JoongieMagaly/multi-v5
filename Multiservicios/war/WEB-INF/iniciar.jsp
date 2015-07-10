<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.util.*" %>

<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Multiservicios la #1</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="estilo1.css" type="text/css" />
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
        <li class="active"><a href="/principal">Inicio</a></li>
        <li><a href="#">Te ofrecemos</a>
          <ul>
            <li><a href="/carnes">Carne de cerdo</a></li>
            <li><a href="/embutidos">Embutidos</a></li>
          </ul>
        </li>
        <li><a href="/pedidos">Pedidos</a></li>
        <li><a href="/deliverys">Delivery</a></li>
        <li class="last"><a href="/contactanos">Contáctanos</a></li>
        <li class="last"><a href="/trabajo">Trabaja con Nosotros</a></li>
      </ul>
    </div>
    <br class="clear">
  </div>
</div>

<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="featured_intro">
  <br><br>

  <h2>Inicia sesion</h2><br>
  <%
  HttpSession misesion= request.getSession(); 
if(misesion.getAttribute("acceso").equals("denegado")){
%>
<p color="red">*Usuario y/o contraseña incorrectos</p>
<%}%>
    <form action="/sesion" method="post">
    	 <div class="text">
    	 	<table style="width:60%">
    	 		<tr>
    	 			<td><h3><label for="user">Usuario:</label></h3></td>
    	 			<td><input type="text" name="usuario" tabindex="1"></td>
    	 			<td><h3><label for="pass">Contraseña:</label></h3></td>
    	 			<td><input type="password" name="contraseña" tabindex="2"></td>
    	 			<td><input name="reset" type="reset" id="reset" tabindex="5" value="Limpiar"></td>
    	 			<td><input name="submit" type="submit"  value="Entrar"></td>
    	 		</tr>
    	 	</table>
    	</div>
    </form>
 <form action="/codigo?acceso=nuevo" method="post">
       <input type="submit"  value="Registrar Empleado">
       </form>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
</body>
</html>
