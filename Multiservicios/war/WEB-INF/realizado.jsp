<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cerdo.unsa.Empleado"%>
<%@ page import="cerdo.unsa.PersonaService"%>
<%@ page import="java.util.List" %>
    
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
        <li><a href="/visita">Delivery</a></li>
        <li class="last"><a href="/contactanos">Contáctanos</a></li>
        <li class="last"><a href="/trabajo">Trabaja con Nosotros</a></li>
          <li class="last"><a href="/cerrar">cerrar Sesion</a><br></li>
          
          <a href="/sesion">Ver Empleados</a><br>
          <a href="/permisoe">Ver Pedidos</a><br>
        <a href="/permisod">Ver Delivery</a><br>
        <a href="/guardarCurric">Ver Curriculum</a><br>
        <a href="/Cambiar">Cambiar mi Contraseña</a><br>
        
         
        
      </ul>
    </div>
    <br class="clear">
  </div>
</div>
<%
  HttpSession misesion= request.getSession(); 
%>
<%
 if(misesion.getAttribute("cambio").equals("exito")){
	 
%>
<h1><%= misesion.getAttribute("nombre") %>, Su contraseña fue cambiada exitosamente :)</h1>


<%} %>
<%
 if(misesion.getAttribute("cambio").equals("fallido")){
	 
%>
<h1><%= misesion.getAttribute("nombre") %>, Su contraseña nueva no puede ser igual a la anterior</h1>
<a href="/cambiar">VUELVE A INTENTARLO</a>
<%} %>
<%
 if(misesion.getAttribute("cambio").equals("nocoincide")){
	 
%>
<h1><%= misesion.getAttribute("nombre") %>, La contraseña ingresada no es correcta, intentalo nuevamente :)</h1>
<a href="/cambiar">VUELVE A INTENTARLO</a>
<%} %>
<%
 if(misesion.getAttribute("cambio").equals("nuevas")){
	 
%>
<h1><%= misesion.getAttribute("nombre") %>, El campo de nueva contraseña y confirmar contraseña deben ser iguales :)</h1>
<a href="/cambiar">VUELVE A INTENTARLO</a>
<%} %>

</body>
</html>

