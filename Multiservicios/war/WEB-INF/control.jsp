<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="cerdo.unsa.*"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Multiservicios la #1</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="estilo1.css" type="text/css" />
<script src="/js/jquery-1.11.3.min.js"></script>
</head>
<body id="top">
	<div class="wrapper col1">
		<div id="header">
			<div class="fl_left">
				<h1>
					<a href="/principal">Ventas de Carnes y Embutidos</a>
				</h1>
				<p>La calidad, lo selecto e higiene usted lo encuentra en La #1</p>
			</div>
			<div class="fl_right">
				<img src="logo.jpg" alt="" />
			</div>
			<br class="clear" />
		</div>
	</div>
	<!-- ############################################iniciar  ####################################################### -->
	<div class="wrapper col2">
		<div id="topbar">
			<div id="topnav">
				<ul>
					<li class="active"><a href="/principal">Inicio</a></li>
					<li><a href="#">Te ofrecemos</a>
						<ul>
							<li><a href="/carnes">Carne de cerdo</a></li>
							<li><a href="/embutidos">Embutidos</a></li>
						</ul></li>
					<li><a href="/pedidos">Pedidos</a></li>
        			<li><a href="/deliverys">Delivery</a></li>
        			<li class="last"><a href="/contactanos">ContÃ¡ctanos</a></li>
        			<li class="last"><a href="/trabajo">Trabaja con Nosotros</a></li>
          			<li class="last"><a href="/cerrar">cerrar Sesion</a><br></li>
          
         	 		<a href="/sesion">Ver Empleados</a><br>
          			<a href="/permisoe">Ver Pedidos</a><br>
        			<a href="/controlServlet">Ver Visitas</a><br>
        			<a href="/guardarCurric">Ver Curriculum</a><br>
				</ul>
			</div>


			<br class="clear">
		</div>
	</div>
	<!-- ####################################################################################################### -->
	<!-- ####################################################################################################### -->
	<%List<Control> lista = (List<Control>)request.getAttribute("controlVisitas"); %>
	<div class="wrapper col4">
		<div id="featured_intro"><br><br>
		<h2>Visitas:</h2>
			<table border="1" style="width:80%">
				<tr>
					<th>IP</th>
					<th>FECHA</th>
					<th>HORA</th>
				</tr>
				<%for (Control x : lista){ %>
				<tr>
					<td><%=x.getIp() %></td>
					<td><%=x.getFecha() %></td>
					<td><%=x.getHora() %></td>
				</tr>
				<%} %>
			</table>
			
			<br class="clear" />
		</div>
	</div>
	<!-- ####################################################################################################### -->
	<!-- ####################################################################################################### -->
</body>
</html>