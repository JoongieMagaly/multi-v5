<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
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
      <h1><a href="/ventanaSesion">Ventas de Carnes y Embutidos</a></h1>
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
    </div>
    <div id="search">
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="featured_intro">
    <div class="fl_left">
<%HttpSession misesion= request.getSession(); %>
      	<h2>MENSAJE</h2>
      	
      	<%if(misesion.getAttribute("miestado").equals("Entregado")){ %>
    	<h2>Este pedido ya fue entregado anteriormente.</h2>
    	<%} %>
    	
    	<%if(misesion.getAttribute("miestado").equals("No Entregado")){ %>
    	<h2>Enviado correctamente a mis entregas.</h2>
    	<%} %>
    	<meta http-equiv='Refresh' content='3;url=/permisod'>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
</body>
</html>
