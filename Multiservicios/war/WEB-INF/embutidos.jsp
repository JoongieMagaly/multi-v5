<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <div id="carnes">
  <form action="/hacerPedido" method="post">
    <h2>Te ofrecemos:</h2><br>
      <table style="width:100%" border="1">
      	<tr>
    		<th>Queso de chancho</th>		
    		<th>Jamonada</th>
    		<th>Mortadela</th>
  		</tr>
  		<tr>
    		<td><img id="d" src="queso.jpg" width="150px" alt=""/><br><br>
    			<p>S/. 13.00</p><br>
    			<input id="check" type="checkbox" name="queso" value="comprar">Comprar<br>
    		</td>
    		<td><img id="d" src="jamonada.jpg" width="150px" alt=""/><br><br>
    			<p>S/. 10.00</p><br>
    			<input id="check" type="checkbox" name="jamonada" value="comprar">Comprar<br>
    		</td>		
    		<td><img id="d" src="mortadela.jpg" width="150px" alt=""/><br><br>
    			<p>S/. 9.00</p><br>
    			<input id="check" type="checkbox" name="mortadela" value="comprar">Comprar<br>
    		</td>
  		</tr>
      </table><br><br>
      <table style="width:100%" border="1">
      	<tr>
    		<th>Salchicha arequipeÃ±a</th>		
    		<th>Chorizo</th>
    		<th>Manteca</th>
  		</tr>
  		<tr>
    		<td><img id="d" src="salchicha.jpg" align="middle" width="150px" alt=""/><br><br>
    			<p>S/. 17.00</p><br>
    			<input id="check" type="checkbox" name="salchicha" value="comprar">Comprar<br>
    		</td>
    		<td><img id="d" src="chorizo.png" width="150px"><br><br>
    			<p>S/. 16.00</p><br>
    			<input id="check" type="checkbox" name="chorizo" value="comprar">Comprar<br>
    		</td>		
    		<td><img id="d" src="manteca.jpg" width="150px"><br><br>
    			<p>S/. 5.00</p><br>
    			<input id="check" type="checkbox" name="manteca" value="comprar">Comprar<br>
    		</td>
  		</tr>
      </table><br><br>
      	<input name="submit" type="submit" value="Hacer Pedido" />
      </form>
    </div>
    <br class="clear" />
  </div>
</div>
</body>
</html>