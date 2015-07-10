<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="cerdo.unsa.*"%>
<%@ page import="cerdo.unsa.PersonaService"%>
<%@ page import="java.util.List"%>

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
						</ul></li>
					<li><a href="/pedidos">Pedidos</a></li>
					<li><a href="/deliverys">Delivery</a></li>
					<li class="last"><a href="/contactanos">ContÃ¡ctanos</a></li>
					<li class="last"><a href="/trabajo">Trabaja con Nosotros</a></li>
					<li class="last"><a href="/cerrar">cerrar Sesion</a><br></li>

					<a href="/sesion">Ver Empleados</a>
					<br>
					<a href="/permisoe">Ver Pedidos</a>
					<br>
					<a href="/permisod">Ver Delivery</a>
					<br>
					<a href="/guardarCurric">Ver Curriculum</a>
					<br>



				</ul>
			</div>
			<br class="clear">
		</div>
	</div>
	<!-- ####################################################################################################### -->
	<div class="wrapper col4">
		<div id="featured_intro">
			<br>
			<br>

			<table BORDER id="tab">
				<tr>
					<th>FECHA DE EMISION</th>
					<th>PRODUCTO</th>
					<th>CANTIDAD</th>
					<th>MONTO</th>
					<th>FECHA DE RECOJO</th>
				</tr>
				<%
					for (Pedido pedido: (List<Pedido>) request.getAttribute("personas")) {
				%>
				<tr>
					<td><%=pedido.getFechaEmision()%></td>
					<td>
					<%if (pedido.getCarnes()!=null){
					     for (Carne x: pedido.getCarnes()){%>
					    	 <p><%=x.getNombre()%>  <%=x.array(x.getForma()) %></p>
					     <%}
					  }%>
					 <%if (pedido.getEmbutidos()!=null){
					     for (Embutido x: pedido.getEmbutidos()){%>
					    	 <p><%=x.getNombre()%></p>
					     <%}
					  }
					%>
					</td>
					<td>
					
					     <% for (Carne x: pedido.getCarnes()){%>
					    	 <p><%=x.array1(x.getPeso())%>  <%=x.array(x.getUnidad())%></p>
					     <%}
					  
					 
					     for (Embutido x: pedido.getEmbutidos()){%>
					    	 <p><%=x.getPeso()%>  <%=x.getUnidad() %></p>
					     <%}
					  
					%>
					</td>
					<td>
					
					     <p><%=pedido.getPrecioCarnes()%></p>
					
				         <p><%=pedido.getPrecioEmbutidos()%></p>
					</td>
					<td><%=pedido.getFechaRecojo()%></td>
				</tr>
				<%
					}
				%>
			</table>
			<br class="clear" />
		</div>
	</div>

	<!-- ####################################################################################################### -->
</body>
</html>