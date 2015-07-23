<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
    <%@page import="cerdo.unsa.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
        <li class="active"><a href="#">Te ofrecemos</a>
          <ul>
            <li><a href="/carnes">Carne de cerdo</a></li>
            <li><a href="/embutidos">Embutidos</a></li>
          </ul>
        </li>
        <li><a href="/pedidos">Pedidos</a></li>
        <li><a href="/visita">Visitas</a></li>
        <li class="last"><a href="/contactanos">Contáctanos</a></li>
        <li class="last"><a href="/trabajo">Trabaja con Nosotros</a></li>
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

<div class="wrapper col4">
  <div id="featured_intro">
  <br><br>
  	<form action="/oferta" method="post">
  	  <div id="ofertas">
    	<h2>OFERTAS BRILLANTES:</h2><br><br>
      	<table style="width:100%" border="1">
      		<tr>
    			<th>Combo 1</th>		
    			<th>Combo 2</th>
    			<th>Combo 3</th>
  			</tr>
  			<tr>
    			<td><img id="d" src="combo1.jpg" width="150px" alt=""/><br><br>
    				<input type="radio" name="combo" value="combo1">1Kg de Pierna + 1Kg de Jamonada<br>
    				<h1>S/. 20.50</h1> <br>	
    			</td>
    			<td><img id="d" src="combo2.jpg" width="150px" alt=""/><br><br>
    				<input type="radio" name="combo" value="combo2">1Kg de Costilla + 1Kg de Manteca<br>
					<h1>S/. 15.50</h1> <br>
    			</td>		
    			<td><img id="d" src="combo3.jpg" width="150px" alt=""/><br><br>
    				<input type="radio" name="combo" value="combo3">1Kg de Brazuelo + 1Kg de Queso de Chancho<br>
					<h1>S/. 21.50</h1> <br>
    			</td>
  			</tr>
      	</table><br><br>
      	<input type="radio" name="combo" value="na">No aceptar oferta<br><br>
    
      	<input type="submit" value="Enviar Pedido" />
    </div>
  	</form>
    <br class="clear" />
  </div>
</div>
</body>
</html>