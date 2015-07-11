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
        <li><a href="/deliverys">Delivery</a></li>
        <li class="last"><a href="/contactanos">ContÃ¡ctanos</a></li>
        <li class="last"><a href="/trabajo">Trabaja con Nosotros</a></li>
          <li class="last"><a href="/cerrar">cerrar Sesion</a><br></li>
          
          <a href="/sesion">Ver Empleados</a><br>
          <a href="/permisoe">Ver Pedidos</a><br>
        <a href="/permisod">Ver Delivery</a><br>
        <a href="/guardarCurric">Ver Curriculum</a><br>
        
         
        
      </ul>
    </div>
    <br class="clear">
  </div>
</div>


<form action="/Borrar" method="get">
Eliminar por correo codigo<br>
<input type=text name=eliminar>
<br>
<input type="submit" id="bot" value="Eliminar">
</form>
<table BORDER id="tab">
	<tr>
		<th>CODIGO</th> <th>NOMBRE</th> <th>APELLIDO</th><th>CONTRASEÃ‘A</th><th>ACCESO</th>
	</tr>
<%
for( Empleado persona : (List<Empleado>)request.getAttribute("personas") ) {
	
%>

<form action="/actualizar" method="post">
    <tr>
		<td><input name="c" type="text" value="<%=persona.getCodicoe()%>"></td>
		<td><%= persona.getName()%></td>
		<td><%= persona.getLastname() %></td>
		<td><%= persona.getContraseña() %></td>
		<td><%= persona.getAcceso()%></td>
		<td><select name="permiso">
				<option value="permitido">Permitido</option>
				<option value="no permitido">No permitido</option>
		    </select>
		</td>
	    <td>
		<input type="submit" value="Actualizar">
		</td>   
    </tr>
</form>
<%
}
%>
</table>


</body>
</html>

