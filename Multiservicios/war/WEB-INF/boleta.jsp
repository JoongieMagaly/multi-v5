<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Multiservicios la #1</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="estilo1.css" type="text/css" />
<link rel="stylesheet" href="recibo.css" type="text/css" />
<script src="/js/jquery-1.11.3.min.js"></script>
</head>
<body id="top">
	<div class="wrapper col1">
		<div id="header">
			<div class="fl_left">
				<h1>
					<a href="index.jsp">Ventas de Carnes y Embutidos</a>
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
							<li><a href="carnes.jsp">Carne de cerdo</a></li>
							<li><a href="embutidos.jsp">Embutidos</a></li>
						</ul></li>
					<li><a href="pedidos.jsp">Pedidos</a></li>
					<li><a href="delivery.jsp">Delivery</a></li>
					<li class="last"><a href="contactanos.jsp">Contáctanos</a></li>
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
	<!-- ####################################################################################################### -->
<div id="scrollTabla">
			<table id="reportesTabla" align="left">
				<tr>
					<td class="usil" colspan="6">MULTISERVICIOS Y DISTRIBUCIONES LA #1</td>
				</tr>
			
				<tr>
					<td class="subtitle" colspan="6">COMPROBANTE DE PEDIDO</td>
				</tr>
				<tr>
					<td class="left">Direción: </td>
					<td colspan="2" >Mercado San Camilo - Arequipa</td>
					<td class="left">RUC:</td>
					<td colspan="2">2045578674</td>
				</tr>
				<tr>
					<td class="subtitle" colspan="6">DATOS DEL CLIENTE</td>
				</tr>
				<tr>
					<td class="left">Apellidos: </td>
					<td>Becerra Becerra</td>
					<td class="left">Nombres: </td>
					<td>Daleshka Joselin</td>
					<td class="left">DNI: </td>
					<td>09573634</td>
				</tr>
				<tr>
					<td class="left">Direccion: </td>
					<td>Calle OLMOS</td>
					<td class="left">FECHA: </td>
					<td>67/56/56</td>
				</tr>
				
				<tr>
					<td class="left" colspan="6">Lista de Pedidos: </td>
				</tr>
				<tr>
					<td colspan="6" class="last">
					<table id="detalles">
						<tr class="main">
							<td colspan="2">PRODUCTOS</td>
							<td colspan="2">CANTIDAD</td>
							<td colspan="2">PRECIO TOTAL</td>
						</tr>
						<tr>
							<td>Normal (29)</td>
							<td>1588.33</td>
							<td>APORTE AFP</td>
							<td>193.23</td>
							<td>Total a pagar </td>
							<td>158.10</td>
						</tr>
						<tr>
							<td>Feriados (1)</td>
							<td>56.67</td>
							<td>Comisión AFP</td>
							<td>52.70</td>
							<td> </td>
							<td> </td>
						</tr>
						<tr>
							<td>Trab. Días Feriados (0)</td>
							<td>56.67</td>
							<td>Seguro AFP</td>
							<td>35.13</td>
							<td> </td>
							<td> </td>
						</tr>
						<tr>
							<td>Asignación Familiar (0)</td>
							<td>55.00</td>
							<td>jhfgj </td>
							<td>fghfh </td>
							<td> </td>
							<td> </td>
						</tr>
						<tr>
							<td>TOTAL HABER</td>
							<td>1756.67</td>
							<td>TOTAL DSCTOS Y APORTES</td>
							<td>281.06</td>
							<td> </td>
							<td> </td>
						</tr>
					</table>
					</td>
				</tr>
			</table>
			</div>
	<!-- ####################################################################################################### -->
</body>
</html>
