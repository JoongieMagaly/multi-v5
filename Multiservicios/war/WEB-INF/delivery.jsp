<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <%@page import="cerdo.unsa.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="javax.jdo.Query"%>
<%@page import="javax.jdo.PersistenceManager"%>
<%@page import="java.util.*"%>
<%
PersistenceManager pm = PMF.get().getPersistenceManager();
Query q = pm.newQuery(Visitas.class);
Visitas vistas=null;
List<Visitas> visitas = (List<Visitas>) q.execute();
if(visitas.isEmpty()){
	vistas = new Visitas();
	pm.makePersistent(vistas);
}else{
	vistas= visitas.get(0);
}
%>
    
    
<!DOCTYPE HTML>
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

<style type="text/css">
<!--
.table {
	font:16px Verdana, Arial, Helvetica, sans-serif;
	color:#777;
	padding:7px;
	
}
.barrasv {
	width:30px;
	text-shadow:#CCC 0.1em 0.1em 0.1em;
	-moz-border-radius:5px;
	-webkit-border-radius:5px;
	box-shadow:1px 1px 1px black;
	-webkit-box-shadow:1px 1px 1px black;
	-moz-box-shadow:1px 1px 1px black
}
.rotar{
	height:95px;
	-webkit-transform:rotate(-90deg);
	-moz-transform:rotate(-90deg);
	margin:0 auto;
}
#tablaPer{
	position:absolute;
	font:19px Verdana, Arial, Helvetica, sans-serif;
	color:#3B3838;
	width:120px;
	float:left;
	BACKGROUND-COLOR:gray;
	border-radius:5px;
	margin-top:10px;
	margin-left:10px;
}
#tablaPer .cabe{
	width:50px;
	margin:2px;
	float:left;
	text-align:center;
}
#tablaPer .num{
	width:50px;
	float:left;
	margin:2px;
	text-align:center;
}
-->
</style>

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
        <li><a href="#">Te ofrecemos</a>
          <ul>
            <li><a href="/carnes">Carne de cerdo</a></li>
            <li><a href="/embutidos">Embutidos</a></li>
          </ul>
        </li>
        <li><a href="/pedidos">Pedidos</a></li>
        <li class="active"><a href="/visita">Visitas</a></li>
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

<div id="tablaPer">
<%String hoy=vistas.getVisitaD();
String numero=hoy.substring(hoy.indexOf(":")+1,hoy.length());
%>
	<div class="cabe">Total</div>
	<div class="num"><%out.print(vistas.getVisitaT()-1); %></div>
</div>
<table class="table" align="center"><TD>Grafico de Visitas</TD></table>
<table class="table" align="center" cellpadding="2" cellspacing="2" border="1">
<%
ArrayList<String> dias=vistas.getSeisDias();
%>
  <tbody align="center">
    <tr>
    <%
    	if(dias!=null && dias.size()!=0)
    	for(String d:dias){
    		out.print("<td valign='bottom'><div class='barrasv' style='height:");
    		out.print(d.substring(d.indexOf(":")+1,d.length())+"px;");
    		out.print(" background-color:#BDDA4C'>&nbsp;</div></td>");
    	}
    %>
    </tr>
    <tr>
    <%
    if(dias!=null && dias.size()!=0)
    	for(String d:dias){
    		out.print("<td>");
    		out.print(d.substring(d.indexOf(":")+1,d.length()));
    		out.print("</td>");
    	}
    %>
    </tr>
    <tr id="etiq">
    <%
    	if(dias!=null && dias.size()!=0)
    	for(String d:dias){

    		out.print("<td class='rotar'>");
    		out.print(d.substring(0,d.indexOf(":")-1));
    		out.print("</td>");
    	}
    %>
    </tr>
  </tbody>
</table><BR>
<h1>Calificanos</h1>
<%HttpSession votar= request.getSession();%>

<p> tu ip es: <%=votar.getAttribute("ip")%></p>


<%if(votar.getAttribute("voto").equals("si")) {%>
<p>¿Cuantas estrellas nos merecemos?</p>
<div class="ec-stars-wrapper">
	
	<a href="/votar?v=1" data-value="1" title="Votar con 1 estrellas">&#9733;</a>
	<a href="/votar?v=2" data-value="2" title="Votar con 2 estrellas">&#9733;</a>
	<a href="/votar?v=3" data-value="3" title="Votar con 3 estrellas">&#9733;</a>
	<a href="/votar?v=4" data-value="4" title="Votar con 4 estrellas">&#9733;</a>
	<a href="/votar?v=5" data-value="5" title="Votar con 5 estrellas">&#9733;</a>

</div>

<%} %>
<% if (votar.getAttribute("voto").equals("no")){%>
<p>Ya has votado</p>
<div class="ec-stars-wrapper">
	<a href="#" data-value="1" title="Votar con 1 estrellas">&#9733;</a>
	<a href="#" data-value="2" title="Votar con 2 estrellas">&#9733;</a>
	<a href="#" data-value="3" title="Votar con 3 estrellas">&#9733;</a>
	<a href="#" data-value="4" title="Votar con 4 estrellas">&#9733;</a>
	<a href="#" data-value="5" title="Votar con 5 estrellas">&#9733;</a>
	
</div>
<% }%>
<%if (votar.getAttribute("voto").equals("ya")){%>
<%votar.setAttribute("voto","no");%>
<p>Gracias por tu voto</p>
<div class="ec-stars-wrapper">
<a href="#" data-value="1" title="Votar con 1 estrellas">&#9733;</a>
<a href="#" data-value="2" title="Votar con 2 estrellas">&#9733;</a>
<a href="#" data-value="3" title="Votar con 3 estrellas">&#9733;</a>
<a href="#" data-value="4" title="Votar con 4 estrellas">&#9733;</a>
<a href="#" data-value="5" title="Votar con 5 estrellas">&#9733;</a>

</div>
<% }%>
<p>Total de estrellas: <%=Estrella.getA() %></p>
    <br class="clear" />
  </div>
</div>
</body>
</html>
