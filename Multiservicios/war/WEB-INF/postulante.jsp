<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cerdo.unsa.Postulante"%>
<%@ page import="cerdo.unsa.*"%>
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
        <li><a href="/deliverys">Delivery</a></li>
        <li class="last"><a href="/contactanos">Contáctanos</a></li>
        <li class="last"><a href="/trabajo">Trabaja con Nosotros</a></li>
          <li class="last"><a href="/cerrar">cerrar Sesion</a><br></li>
          
          <a href="/sesion">Ver Empleados</a><br>
          <a href="/permisoe">Ver Pedidos</a><br>
        <a href="/permisod">Ver Delivery</a><br>
         
        
      </ul>
    </div>
    <br class="clear">
  </div>
</div>

<table BORDER id="tab">
	<tr>
		<th>NOMBRE</th> <th>APELLIDO</th> <th>CORREO</th><th>TELEFONO</th><th>Doc.IDENTIFICACIÓN</th><th>FECHA DE NACIMIENTO</th><th>ESTADO CIVIL</th>
	    <th>DIRECCIÓN</th><th>LICENCIA</th><th>SITUACIÓN</th><th>PUESTO</th><th>SALARIO</th><th>CV</th></tr>
<%
for(  Postulante postulante: (List<Postulante>)request.getAttribute("personas") ) {
	
%>
<tr>
		<td><%= postulante.getNombre() %></td>
		<td><%= postulante.getApellido() %></td>
		<td><%= postulante.getCorreo() %></td>
		<td><%= postulante.getTelefono() %></td>
		<td><%= postulante.getIden() %></td>
		<td><%= postulante.getFecha() %></td>
		<td><%= postulante.getCivil() %></td>
		<td><%= postulante.getDireccion() %></td>
		<td><%= postulante.getLicencia() %></td>
		<td><%= postulante.getSituacion() %></td>
		<td><%= postulante.getPuesto() %></td>
		<td><%= postulante.getSalario() %></td>
		<td><a href="<%= postulante.getUrl()%>">CV</a></td>
		
		
</tr>
<%
}
%>
</table>

</body>
</html>