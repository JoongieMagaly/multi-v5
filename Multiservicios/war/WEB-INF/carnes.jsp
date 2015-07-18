<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <li><a href="/deliverys">Visitas</a></li>
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
  <!--formulario del pedido-->
  <div id="carnes">
    <h2>Te ofrecemos:</h2><br><br>
      <center><table style="width:100%" border="1">
      	<tr>
    		<th><h2>Cabeza</h2></th>		
    		<th><h2>Cogote</h2></th>
    		<th><h2>Costillas</h2></th>
  		</tr>
  		<tr>
    		<td><center><img src="cabeza.jpg" width="150px" alt=""/></center><br><br>
    			<input type="checkbox" name="cabeza" value="entera">Entera<br>
				<input type="checkbox" name="cabeza" value="picada">Picada<br>
    		</td>
    		<td><center><img src="cogote.jpg" width="150px" alt=""/></center><br><br>
    			<input type="checkbox" name="cogote" value="adobo">Para el adobo<br>
				<input type="checkbox" name="cogote" value="horno">Para el horno<br>
    		</td>		
    		<td><center><img src="costilla.jpg" width="150px" alt=""/></center><br><br>
    			<input type="checkbox" name="costilla" value="chicharron">Para chicharrón<br>
				<input type="checkbox" name="costilla" value="horno">Para el horno<br>
    		</td>
  		</tr>
      </table></center><br><br>
      <center><table style="width:100%" border="1">
      	<tr>
    		<th><h2>Lomo</h2></th>		
    		<th><h2>Brazuelo</h2></th>
    		<th><h2>Pierna</h2></th>
  		</tr>
  		<tr>
    		<td><center><img src="lomo.jpg" width="150px" alt=""/></center><br><br>
    			<input type="checkbox" name="lomo" value="chuleta">Chuleta<br>
				<input type="checkbox" name="lomo" value="horno">Para el horno<br>
    		</td>
    		<td><br><br><center><img src="brazuelos.jpg" width="150px" alt=""/></center><br><br>
    			<input type="checkbox" name="brazuelo" value="adobo">Para el adobo<br>
				<input type="checkbox" name="brazuelo" value="horno">Para el horno<br>
				<input type="checkbox" name="brazuelo" value="chicharron">Para chicharrón<br>
				<input type="checkbox" name="brazuelo" value="chuleta">Chuleta<br>
    		</td>		
    		<td><center><img src="pierna.jpg" width="150px" alt=""/></center><br><br>
    			<input type="checkbox" name="pierna" value="chuleta">Chuleta<br>
				<input type="checkbox" name="pierna" value="horno">Para el horno<br>
    		</td>
  		</tr>
      </table></center><br><br>
      <center><input type="submit" value="Enviar Pedido" /></center>
    </div>
    <br class="clear" />
  </div>
</div>
</body>
</html>
