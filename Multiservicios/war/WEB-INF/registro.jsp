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
      <h1><a href="index.jsp">Ventas de Carnes y Embutidos</a></h1>
      <p>La calidad, lo selecto e higiene usted lo encuentra en La #1</p>
    </div>
    <div class="fl_right"><img src="logo.jpg" alt="" /></div>
    <br class="clear" />
  </div>
</div>

<!-- ####################################################################################################### -->

    <p>_____________________________________________________________________________________________________________________</p>
     <h2>Registrar empleados</h2>
    <form action="/codigo" method="post">
    	<div class="text">
    	  <%
  HttpSession registro= request.getSession(); 
if(registro.getAttribute("acceso").equals("denegado")){
%>
<p color="red">*Codigo de registro incorrecto</p>
<%}%>
      		<h3><label for="codigoge">Código de registro:</label></h3>
      		<input type="password" name="codigo"  tabindex="4"><br>
      		<h3><label>Nombre:</label></h3>
      		<input type="text" name="nombre" tabindex="1"><br><br>
      		<h3><label>Apellido:</label></h3>
      		<input type="text" name="apellido" tabindex="2"><br><br>
      	</div>
    	
       		<input name="submit" type="submit"  value="Continuar">
       		&nbsp;
      		<input name="reset" type="reset" id="reset" tabindex="5" value="Limpiar">
    </form>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
</body>
</html>
