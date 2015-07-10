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
					<li><a href="/deliverys">Delivery</a></li>
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
				<h2>Conócenos...</h2>
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
								</div>

								<div id="action">
									<input type="submit" value="Comentar" />
								</div>
					</fieldset>
					</form>
				</div>
				</div>

			</div>
			
		</div>
	</div>

		<h2>Comentarios</h2>
		<div class="fila">
		</div>
	<br class="clear" />

	<!-- ####################################################################################################### -->
</body>
</html>
