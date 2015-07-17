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
        <li><a href="/deliverys">Delivery</a></li>
        <li class="active"><a href="/contactanos">Contáctanos</a></li>
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
	<table style="width:100%">
		<tr>
			<td>
				<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d1913.716726779011!2d-71.53463284335615!3d-16.40279805288973!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses-419!2spe!4v1434565021865" width="400" height="300" frameborder="0" style="border:0"></iframe>
				<p>Mercado San Camilo Puesto N°1 y 3 - Sección Porcino<br>
				Telf.: 202307 - 287431  Cel.: 979090390 - 959919192</p>
			</td>
			<td><img src="puesto.jpg" alt="" style="width:400px"/></td>		
		</tr>
	</table>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
<h1>Sugerencias y Reclamos</h1>
<div class="center">

 <form action="/reclamo" method="post">
          <p>
            <label for="name">Nombre:</label>
            <input type="text" name="name" value="" size="22" />
          </p><br>
          <p>
            <label for="email">Email:</label>
            <input type="email" name="email"value="" size="22" />
          </p><br>
          <p>
          <label for="asunto">Asunto:</label>
          <input type="text" name="asunto"value="" size="35" />
          </p>
          <p>
            <textarea name="reclamo" cols="150" rows="10"></textarea>
          </p><br>
          <p>*Nos pondremos en contacto con usted a traves de su email lo mas antes posible</p>
          
          <p>
            <input name="submit" type="submit" id="submit" value="Enviar" />
            &nbsp;
            <input name="reset" type="reset" id="reset" tabindex="5" value="Limpiar" />
          </p>
        </form>
        </div>
</div>
<!-- ####################################################################################################### -->
</body>
</html>
