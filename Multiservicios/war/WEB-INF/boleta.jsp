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
<link rel="stylesheet" href="recibo.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="estilo_impresion.css" media="print" />
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
	<%
	HttpSession pedidosesion = request.getSession();
	String nombre = (String)pedidosesion.getAttribute("nombre");
	String ide = (String)pedidosesion.getAttribute("identificacion");
	String direccion = (String)pedidosesion.getAttribute("direccion");
	String telf = (String)pedidosesion.getAttribute("telefono");
	String fechare = (String)pedidosesion.getAttribute("fechare");
	String formEn = (String)pedidosesion.getAttribute("formaEntrega");
	String hora = (String)pedidosesion.getAttribute("hora");
	String destino = (String)pedidosesion.getAttribute("destino");
	String precio1 = (String)pedidosesion.getAttribute("precio1");
	String precio2 = (String)pedidosesion.getAttribute("precio2");
	String precioTotal = (String)pedidosesion.getAttribute("precioTotal");
	String num = (String)pedidosesion.getAttribute("numeroBoleta");
	List<Carne> carnes = (ArrayList<Carne>)request.getAttribute("carnes");
	List<Embutido> embutidos = (ArrayList<Embutido>)request.getAttribute("embutidos");
	pedidosesion.invalidate();
	TimeZone.setDefault(TimeZone.getTimeZone("America/Lima"));
	Calendar fecha = new GregorianCalendar();
	int año = fecha.get(Calendar.YEAR);
    int mes = fecha.get(Calendar.MONTH);
    int dia = fecha.get(Calendar.DAY_OF_MONTH);
    String fechaEmision = dia+"/"+(mes+1)+"/"+año;
	%>
<div class="wrapper col4">
  <div id="featured_intro"><br><br>
  <h2>*Es importante que imprima su recibo para poder hacer la entrega del pedido</h2><br><br>
	  <div id="scrollTabla"><br><br><br>
			<table id="reportesTabla" align="left">
				<tr>
					<td class="usil" colspan="6">MULTISERVICIOS Y DISTRIBUCIONES LA #1</td>
				</tr>
			
				<tr>
					<td class="subtitle" colspan="6">COMPROBANTE DE PEDIDO Nº <%=num%></td>
				</tr>
				<tr>
					<td class="left">DireciÃ³n: </td>
					<td colspan="2" >Mercado San Camilo - Arequipa</td>
					<td class="left">RUC:</td>
					<td colspan="2">2045578674</td>
				</tr>
				<tr>
					<td class="subtitle" colspan="6">DATOS DEL CLIENTE</td>
				</tr>
				<tr>
					<td class="left">Nombre/Empresa: </td>
					<td><%=nombre%></td>
					<td class="left">Direccion: </td>
					<td><%=direccion%></td>
					<td class="left">DNI/RUC: </td>
					<td><%=ide%></td>
				</tr>
				<tr>
					<td class="left">Destino: </td>
					<td><%if (destino != null || !destino.equals("")){%>
					     <%=destino%>
					     <%}else{%>
					     <%=""%>
					     <%}%></td>
					<td class="left">Fecha: </td>
					<td><%=fechaEmision%></td>
					<td class="left">Fecha de entrega:</td>
					<td><%=fechare%></td>
				</tr>
				<tr>
					<td class="left">Hora de entrega:</td>
					<td><%=hora%></td>
				</tr>
				
				<tr>
					<td class="left" colspan="6">Lista de Pedidos: </td>
				</tr>
				<tr>
					<td colspan="6" class="last">
					<table id="detalles">
						<tr class="main">
							<td>PRODUCTOS</td>
							<td colspan="2">CANTIDAD</td>
							<td>PRECIO TOTAL</td>
						</tr>
						<%if (!carnes.isEmpty()){
							int len=0;
							for (Carne x : carnes){
								len = len + x.getForma().size();
							}%>
						<tr>
							<td><%=carnes.get(0).getNombre()%> <%=carnes.get(0).getForma().get(0)%></td>
							<td><%=carnes.get(0).getPeso().get(0)%></td>
							<td><%=carnes.get(0).getUnidad().get(0)%></td>
							<td rowspan="<%=len%>"><%=precio1%></td>
						</tr>
						  <%for (int i=1; i<carnes.get(0).getForma().size(); i++){%>
							<tr>
								<td><%=carnes.get(0).getNombre()%> <%=carnes.get(0).getForma().get(i)%></td>
								<td><%=carnes.get(0).getPeso().get(i)%></td>
								<td><%=carnes.get(0).getUnidad().get(i)%></td>
							</tr>
						<%}if (carnes.size()>1){
							for (int j=1; j<carnes.size(); j++){
						    for (int i=0; i<carnes.get(j).getForma().size(); i++){%>
						<tr>
							<td><%=carnes.get(j).getNombre()%> <%=carnes.get(j).getForma().get(i)%></td>
							<td><%=carnes.get(j).getPeso().get(i)%></td>
							<td><%=carnes.get(j).getUnidad().get(i)%></td>
						</tr>
						  <%}}}%>
						<%}if (!embutidos.isEmpty()){
							int len =embutidos.size();
						%>
						<tr>
							<td><%=embutidos.get(0).getNombre()%></td>
							<td><%=embutidos.get(0).getPeso()%></td>
							<td><%=embutidos.get(0).getUnidad()%></td>
							<td rowspan="<%=len%>"><%=precio2%></td>
						</tr>
						  <%if (embutidos.size()>1){
							for (int i=1; i<embutidos.size(); i++){%>
						<tr>
							<td><%=embutidos.get(i).getNombre()%></td>
							<td><%=embutidos.get(i).getPeso()%></td>
							<td><%=embutidos.get(i).getUnidad()%></td>
						</tr>
						  <%}}%>
						<%}%>
						<tr>
							<td> </td>
							<td> </td>
							<td>Total:</td>
							<td><%=precioTotal%></td>
						</tr>
					</table>
					</td>
				</tr>
			</table>
	  </div>
	<div id="boton">
	 <form> 
		<input type='button' onclick='window.print();' value='Imprimir' />
	 </form>
	</div>
  </div>
</div>
	<!-- ####################################################################################################### -->
</body>
</html>