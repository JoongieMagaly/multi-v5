<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
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

			<br class="clear">
		</div>
	</div>
	<!-- ####################################################################################################### -->
	<!-- ####################################################################################################### -->
	<div class="wrapper col4">
		<div id="featured_intro">
			<div class="fl_left">
				<h2>Multiservicios y Distribuciones La #1</h2>
			</div>
			<div class="fl_right">
				<img id="c" src="Los-Tres-Cerditos-76911.gif" alt="">
				<h2>Presentación:</h2>
				<p>Reciba un cordial y nuestra formal presentación. Nosotros
					somos Multiservicios La #1, una empresa dedicada a la venta y
					distribución de carne de cerdos y embutidos para todo tipo de
					pedidos. Contamos con carnes de la mejor calidad y los embutidos
					más suculentos que haya probado. Nuestro objetivo es garantizar la
					calidad y satisfacer las necesidades de nuestros clientes.</p>
				<h2>Propietarios:</h2>
				<p>Wilson Salazar, Sandra Machuca e hijos.</p>
			</div>
			<br class="clear" />
		</div>
	</div>
	<!-- ####################################################################################################### -->
	<!-- ####################################################################################################### -->
</body>
</html>