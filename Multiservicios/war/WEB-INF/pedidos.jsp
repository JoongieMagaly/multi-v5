<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cerdo.unsa.*"%>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.http.*;" %>

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
<link rel="stylesheet" href="calendario_dw/calendario_dw-estilos.css" type="text/css">
<script type="text/javascript" src="calendario_dw/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="calendario_dw/calendario_dw.js"></script>
	
<script type="text/javascript">
	$(document).ready(function(){
		$(".campofecha").calendarioDW();
	})
</script>
<script>
function calcular(c){
	var p = document.getElementById('peso'+c).value;
	var uni = document.getElementById('unidad'+c).value;
	var pre = document.getElementById('precio'+c).value;
	var sum = 0;
	if (uni == "gr"){
	   document.getElementById('monto'+c).value = (pre*p)/1000;
	}else if (uni == "kg"){
	   document.getElementById('monto'+c).value = (pre*p);
	}else{
	   document.getElementById('monto'+c).value = 0;
	}
} 

function seleccionar(c){
	var box = document.getElementById('comprar'+c).checked;
    if (box == false){
       document.getElementById('peso'+c).value = "";
       document.getElementById('peso'+c).disabled = true;
       document.getElementById('unidad'+c).value = "--";
       document.getElementById('unidad'+c).disabled = true;
       document.getElementById('monto'+c).value = 0;
    }else{
       document.getElementById('peso'+c).disabled = false;
       document.getElementById('unidad'+c).disabled = false;
    }
}

function sumar1(d){
	var suma = 0.0;
	for (var i=1; i<=d; i++){
		if (document.getElementById('peso'+i).disabled == false){
			var monto = document.getElementById('monto'+i).value;
			suma= parseFloat(suma)+parseFloat(monto);
		}
	}
	document.getElementById('total1').value = suma;
}

function sumar2(d, c){
	var suma = 0;
	for (var i=d; i<=c; i++){
		if (document.getElementById('peso'+i).disabled == false){
			var monto = document.getElementById('monto'+i).value;
			suma= parseFloat(suma)+parseFloat(monto);
		}
	}
	document.getElementById('total2').value = suma;
}

</script>
<script>
function personal(){
	  document.getElementById("cambio").innerHTML="<input type='hidden' name='entre' id='entre' value='Entrega Personal'><input type='hidden' name='destino' tabindex='5'><br>";
}
</script>
<script>
function delivery(){
	  document.getElementById("cambio").innerHTML="<input type='hidden' name='entre' id='entre' value='Delivery'><h3><label>Destino:</label></h3><input type='text' name='destino' size='35' tabindex='5'><br><br><p>*El costo del delivery sera cobrado deacuerdo al lugar de destino en la entrega</p>";
}
</script>
<script type="text/javascript">
 			function numero(e) { // 1
	    		tecla = (document.all) ? e.keyCode : e.which; // 2
	    		if (tecla==8) return true; // 3
	    		patron = /[0-9\s]/; // 4
	    		te = String.fromCharCode(tecla); // 5
	    		return patron.test(te); // 6
			}
</script>
<script type="text/javascript">
	function resetear(){
		for (var i=1; i<=20; i++){
			document.getElementById('peso'+i).value = "";
		    document.getElementById('peso'+i).disabled = true;
		    document.getElementById('unidad'+i).value = "--";
		    document.getElementById('unidad'+i).disabled = true;
		    document.getElementById('monto'+i).value = 0;
		}
	}
</script>
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
        <li><a href="#">Te ofrecemos</a>
          <ul>
            <li><a href="/carnes">Carne de cerdo</a></li>
            <li><a href="/embutidos">Embutidos</a></li>
          </ul>
        </li>
        <li class="active"><a href="/pedidos">Pedidos</a></li>
        <li><a href="/visita">Visitas</a></li>
        <li class="last"><a href="/contactanos">Contáctanos</a></li>
      </ul>
    </div>
    <div id="search">
      <form action="/iniciar">
       <input type="submit"  value="Iniciar Sesion"></form>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="featured_intro">
  <br><br>
    <form onreset="resetear()" name="calcula" action="/confirmarPedido" method="post">
      <div class="text">
      <script>
      function nombre(valor) {
    var reg = /^([a-z ñáéíóú]{2,60})$/i;
    if (reg.test(valor)) return true;
    else return false;
}
      </script>
      		<h3><label for="nombre">Nombre/Empresa:</label></h3>
      		<input type="text" name="nombre" tabindex="1" required size="35"required onkeypress="return nombre(event)"><br><br>
      		<h3><label for="dni">DNI/RUC:</label></h3>
      		<input type="text" name="ide" tabindex="2" value=""  pattern=".{1,11}" required onkeypress="return numero(event)"><br><br>
      		<h3><label for="direccion">Direccion:</label></h3>
      		<input type="text" name="direccion" tabindex="3" required size="35"><br><br>
      		<h3><label for="telefono">Telefono:</label></h3>
      		<input type="text" name="telefono" tabindex="4" value=""  pattern=".{1,9}" required onkeypress="return numero(event)"><br><br>
      		<h3><label for="entrega">Tipo de entrega: (haga click sobre el tipo de pedido que desea)</label></h3><br>
      		<input type="button" value="Entrega Personal" onclick="personal()">
      		<input type="button" value="Delivery" onclick="delivery()">
      		<div id="cambio">
      		</div>
      		<input type='hidden' name='destino' tabindex='5'><br>
      		<h3><label for='fechare'>Fecha de recojo/entrega:(aaaa-mm-dd)</label></h3>
      		<input type='text' name='fechare' class='campofecha' tabindex='5'><br><br>
      		<h3><label for='hora'>Hora de recojo:</label></h3>
      		<input type='text' name='hora' tabindex='5'>
    	</div>
    	<br><br>
    	<table style="width:80%" border="1">
      	<tr>
    		<th><h2>Producto</h2></th>		
    		<th colspan="3"><h2>Cantidad</h2></th>
    		<th><h2>Monto</h2></th>
  		</tr>
  		<%int c=0;%>
  		<tr>
    		<th rowspan="2">Cabeza</th>
    		  <%c++; %>
    		<td>Entera</td> 
    		 <td>
    		 	<%String precio = "precio"+c; 
    		 	  String peso = "peso"+c;
    		 	  String unidad = "unidad"+c;
    		 	  String monto = "monto"+c;
    		 	  String comprar = "comprar"+c;%>
    		 	S/.<input type="text" id="<%=precio%>" name="<%=precio%>" value="3.50" disabled size="4">
    		 	<input type="number" id="<%=peso%>" name="<%=peso%>" disabled>  
    		    <select id="<%=unidad%>" name="<%=unidad%>" disabled>
    		    	<option value="--" >--</option>
    		    	<option value="gr" >gr</option>
    		    	<option value="kg" >kg</option>
    		    </select>
    		    <input type="button" value="ver monto" onclick="calcular(<%=c%>)">
    		 </td>
    		 <td><input type="checkbox" id="<%=comprar%>" name="<%=comprar%>" value="compra" onclick="seleccionar(<%=c%>)">Comprar</td>
    		 <td>S/.<input type="text" id="<%=monto%>" name="<%=monto%>" value="0" disabled size="4"></td>
    	</tr>
    	<tr><%c++; %>
    		<td>Picada</td> 
    		 <td>
    		 	<%precio = "precio"+c; 
    		 	  peso = "peso"+c;
    		 	  unidad = "unidad"+c;
    		 	  monto = "monto"+c;
    		 	  comprar = "comprar"+c;%>
    		 	S/.<input type="text" id="<%=precio%>" name="<%=precio%>" value="5.00" disabled size="4">
    		 	<input type="number" id="<%=peso%>" name="<%=peso%>" disabled>  
    		    <select id="<%=unidad%>" name="<%=unidad%>" disabled>
    		    	<option value="--" >--</option>
    		    	<option value="gr" >gr</option>
    		    	<option value="kg" >kg</option>
    		    </select>
    		    <input type="button" value="ver monto" onclick="calcular(<%=c%>)">
    		 </td>
    		 <td><input type="checkbox" id="<%=comprar%>" name="<%=comprar%>" value="compra" onclick="seleccionar(<%=c%>)">Comprar</td>
    		 <td>S/.<input type="text" id="<%=monto%>" name="<%=monto%>" value="0" disabled size="4"></td>
    	</tr>
    	<tr>
    		<th rowspan="2">Cogote</th>
    		  <%c++; %>
    		<td>Para el adobo</td> 
    		 <td>
    		 	<%precio = "precio"+c; 
    		 	  peso = "peso"+c;
    		 	  unidad = "unidad"+c;
    		 	  monto = "monto"+c;
    		 	  comprar = "comprar"+c;%>
    		 	S/.<input type="text" id="<%=precio%>" name="<%=precio%>" value="12.00" disabled size="4">
    		 	<input type="number" id="<%=peso%>" name="<%=peso%>" disabled>  
    		    <select id="<%=unidad%>" name="<%=unidad%>" disabled>
    		    	<option value="--" >--</option>
    		    	<option value="gr" >gr</option>
    		    	<option value="kg" >kg</option>
    		    </select>
    		    <input type="button" value="ver monto" onclick="calcular(<%=c%>)">
    		 </td>
    		 <td><input type="checkbox" id="<%=comprar%>" name="<%=comprar%>" value="compra" onclick="seleccionar(<%=c%>)">Comprar</td>
    		 <td>S/.<input type="text" id="<%=monto%>" name="<%=monto%>" value="0" disabled size="4"></td>
    	</tr>
    	<tr><%c++; %>
    		<td>Para el horno</td> 
    		 <td>
    		 	<%precio = "precio"+c; 
    		 	  peso = "peso"+c;
    		 	  unidad = "unidad"+c;
    		 	  monto = "monto"+c;
    		 	  comprar = "comprar"+c;%>
    		 	S/.<input type="text" id="<%=precio%>" name="<%=precio%>" value="12.00" disabled size="4">
    		 	<input type="number" id="<%=peso%>" name="<%=peso%>" disabled>  
    		    <select id="<%=unidad%>" name="<%=unidad%>" disabled>
    		    	<option value="--" >--</option>
    		    	<option value="gr" >gr</option>
    		    	<option value="kg" >kg</option>
    		    </select>
    		    <input type="button" value="ver monto" onclick="calcular(<%=c%>)">
    		 </td>
    		 <td><input type="checkbox" id="<%=comprar%>" name="<%=comprar%>" value="compra" onclick="seleccionar(<%=c%>)">Comprar</td>
    		 <td>S/.<input type="text" id="<%=monto%>" name="<%=monto%>" value="0" disabled size="4"></td>
    	</tr>
    	<tr>
    		<th rowspan="2">Costillas</th>
    		  <%c++; %>
    		<td>Para chicharron</td> 
    		 <td>
    		 	<%precio = "precio"+c; 
    		 	  peso = "peso"+c;
    		 	  unidad = "unidad"+c;
    		 	  monto = "monto"+c;
    		 	  comprar = "comprar"+c;%>
    		 	S/.<input type="text" id="<%=precio%>" name="<%=precio%>" value="13.00" disabled size="4">
    		 	<input type="number" id="<%=peso%>" name="<%=peso%>" disabled>  
    		    <select id="<%=unidad%>" name="<%=unidad%>" disabled>
    		    	<option value="--" >--</option>
    		    	<option value="gr" >gr</option>
    		    	<option value="kg" >kg</option>
    		    </select>
    		    <input type="button" value="ver monto" onclick="calcular(<%=c%>)">
    		 </td>
    		 <td><input type="checkbox" id="<%=comprar%>" name="<%=comprar%>" value="compra" onclick="seleccionar(<%=c%>)">Comprar</td>
    		 <td>S/.<input type="text" id="<%=monto%>" name="<%=monto%>" value="0" disabled size="4"></td>
    	</tr>
    	<tr><%c++; %>
    		<td>Para el horno</td> 
    		 <td>
    		 	<%precio = "precio"+c; 
    		 	  peso = "peso"+c;
    		 	  unidad = "unidad"+c;
    		 	  monto = "monto"+c;
    		 	  comprar = "comprar"+c;%>
    		 	S/.<input type="text" id="<%=precio%>" name="<%=precio%>" value="13.00" disabled size="4">
    		 	<input type="number" id="<%=peso%>" name="<%=peso%>" disabled>  
    		    <select id="<%=unidad%>" name="<%=unidad%>" disabled>
    		    	<option value="--" >--</option>
    		    	<option value="gr" >gr</option>
    		    	<option value="kg" >kg</option>
    		    </select>
    		    <input type="button" value="ver monto" onclick="calcular(<%=c%>)">
    		 </td>
    		 <td><input type="checkbox" id="<%=comprar%>" name="<%=comprar%>" value="compra" onclick="seleccionar(<%=c%>)">Comprar</td>
    		 <td>S/.<input type="text" id="<%=monto%>" name="<%=monto%>" value="0" disabled size="4"></td>
    	</tr>
    	<tr>
    		<th rowspan="2">Lomo</th>
    		  <%c++; %>
    		<td>Chuleta</td> 
    		 <td>
    		 	<%precio = "precio"+c; 
    		 	  peso = "peso"+c;
    		 	  unidad = "unidad"+c;
    		 	  monto = "monto"+c;
    		 	  comprar = "comprar"+c;%>
    		 	S/.<input type="text" id="<%=precio%>" name="<%=precio%>" value="14.00" disabled size="4">
    		 	<input type="number" id="<%=peso%>" name="<%=peso%>" disabled>  
    		    <select id="<%=unidad%>" name="<%=unidad%>" disabled>
    		    	<option value="--" >--</option>
    		    	<option value="gr" >gr</option>
    		    	<option value="kg" >kg</option>
    		    </select>
    		    <input type="button" value="ver monto" onclick="calcular(<%=c%>)">
    		 </td>
    		 <td><input type="checkbox" id="<%=comprar%>" name="<%=comprar%>" value="compra" onclick="seleccionar(<%=c%>)">Comprar</td>
    		 <td>S/.<input type="text" id="<%=monto%>" name="<%=monto%>" value="0" disabled size="4"></td>
    	</tr>
    	<tr><%c++; %>
    		<td>Para el horno</td> 
    		 <td>
    		 	<%precio = "precio"+c; 
    		 	  peso = "peso"+c;
    		 	  unidad = "unidad"+c;
    		 	  monto = "monto"+c;
    		 	  comprar = "comprar"+c;%>
    		 	S/.<input type="text" id="<%=precio%>" name="<%=precio%>" value="14.00" disabled size="4">
    		 	<input type="number" id="<%=peso%>" name="<%=peso%>" disabled>  
    		    <select id="<%=unidad%>" name="<%=unidad%>" disabled>
    		    	<option value="--" >--</option>
    		    	<option value="gr" >gr</option>
    		    	<option value="kg" >kg</option>
    		    </select>
    		    <input type="button" value="ver monto" onclick="calcular(<%=c%>)">
    		 </td>
    		 <td><input type="checkbox" id="<%=comprar%>" name="<%=comprar%>" value="compra" onclick="seleccionar(<%=c%>)">Comprar</td>
    		 <td>S/.<input type="text" id="<%=monto%>" name="<%=monto%>" value="0" disabled size="4"></td>
    	</tr>
    	<tr>
    		<th rowspan="4">Brazuelo</th>
    		  <%c++; %>
    		<td>Para el adobo</td> 
    		 <td>
    		 	<%precio = "precio"+c; 
    		 	  peso = "peso"+c;
    		 	  unidad = "unidad"+c;
    		 	  monto = "monto"+c;
    		 	  comprar = "comprar"+c;%>
    		 	S/.<input type="text" id="<%=precio%>" name="<%=precio%>" value="11.00" disabled size="4">
    		 	<input type="number" id="<%=peso%>" name="<%=peso%>" disabled>  
    		    <select id="<%=unidad%>" name="<%=unidad%>" disabled>
    		    	<option value="--" >--</option>
    		    	<option value="gr" >gr</option>
    		    	<option value="kg" >kg</option>
    		    </select>
    		    <input type="button" value="ver monto" onclick="calcular(<%=c%>)">
    		 </td>
    		 <td><input type="checkbox" id="<%=comprar%>" name="<%=comprar%>" value="compra" onclick="seleccionar(<%=c%>)">Comprar</td>
    		 <td>S/.<input type="text" id="<%=monto%>" name="<%=monto%>" value="0" disabled size="4"></td>
    	</tr>
    	<tr><%c++; %>
    		<td>Para el horno</td> 
    		 <td>
    		 	<%precio = "precio"+c; 
    		 	  peso = "peso"+c;
    		 	  unidad = "unidad"+c;
    		 	  monto = "monto"+c;
    		 	  comprar = "comprar"+c;%>
    		 	S/.<input type="text" id="<%=precio%>" name="<%=precio%>" value="11.00" disabled size="4">
    		 	<input type="number" id="<%=peso%>" name="<%=peso%>" disabled>  
    		    <select id="<%=unidad%>" name="<%=unidad%>" disabled>
    		    	<option value="--" >--</option>
    		    	<option value="gr" >gr</option>
    		    	<option value="kg" >kg</option>
    		    </select>
    		    <input type="button" value="ver monto" onclick="calcular(<%=c%>)">
    		 </td>
    		 <td><input type="checkbox" id="<%=comprar%>" name="<%=comprar%>" value="compra" onclick="seleccionar(<%=c%>)">Comprar</td>
    		 <td>S/.<input type="text" id="<%=monto%>" name="<%=monto%>" value="0" disabled size="4"></td>
    	</tr>
    	<tr><%c++; %>
    		<td>Para chicharron</td> 
    		 <td>
    		 	<%precio = "precio"+c; 
    		 	  peso = "peso"+c;
    		 	  unidad = "unidad"+c;
    		 	  monto = "monto"+c;
    		 	  comprar = "comprar"+c;%>
    		 	S/.<input type="text" id="<%=precio%>" name="<%=precio%>" value="11.00" disabled size="4">
    		 	<input type="number" id="<%=peso%>" name="<%=peso%>" disabled>  
    		    <select id="<%=unidad%>" name="<%=unidad%>" disabled>
    		    	<option value="--" >--</option>
    		    	<option value="gr" >gr</option>
    		    	<option value="kg" >kg</option>
    		    </select>
    		    <input type="button" value="ver monto" onclick="calcular(<%=c%>)">
    		 </td>
    		 <td><input type="checkbox" id="<%=comprar%>" name="<%=comprar%>" value="compra" onclick="seleccionar(<%=c%>)">Comprar</td>
    		 <td>S/.<input type="text" id="<%=monto%>" name="<%=monto%>" value="0" disabled size="4"></td>
    	</tr>
    	<tr><%c++; %>
    		<td>Chuleta</td> 
    		 <td>
    		 	<%precio = "precio"+c; 
    		 	  peso = "peso"+c;
    		 	  unidad = "unidad"+c;
    		 	  monto = "monto"+c;
    		 	  comprar = "comprar"+c;%>
    		 	S/.<input type="text" id="<%=precio%>" name="<%=precio%>" value="11.00" disabled size="4">
    		 	<input type="number" id="<%=peso%>" name="<%=peso%>" disabled>  
    		    <select id="<%=unidad%>" name="<%=unidad%>" disabled>
    		    	<option value="--" >--</option>
    		    	<option value="gr" >gr</option>
    		    	<option value="kg" >kg</option>
    		    </select>
    		    <input type="button" value="ver monto" onclick="calcular(<%=c%>)">
    		 </td>
    		 <td><input type="checkbox" id="<%=comprar%>" name="<%=comprar%>" value="compra" onclick="seleccionar(<%=c%>)">Comprar</td>
    		 <td>S/.<input type="text" id="<%=monto%>" name="<%=monto%>" value="0" disabled size="4"></td>
    	</tr>
    	<tr>
    		<th rowspan="2">Pierna</th>
    		  <%c++; %>
    		<td>Chuleta</td> 
    		 <td>
    		 	<%precio = "precio"+c; 
    		 	  peso = "peso"+c;
    		 	  unidad = "unidad"+c;
    		 	  monto = "monto"+c;
    		 	  comprar = "comprar"+c;%>
    		 	S/.<input type="text" id="<%=precio%>" name="<%=precio%>" value="13.00" disabled size="4">
    		 	<input type="number" id="<%=peso%>" name="<%=peso%>" disabled>  
    		    <select id="<%=unidad%>" name="<%=unidad%>" disabled>
    		    	<option value="--" >--</option>
    		    	<option value="gr" >gr</option>
    		    	<option value="kg" >kg</option>
    		    </select>
    		    <input type="button" value="ver monto" onclick="calcular(<%=c%>)">
    		 </td>
    		 <td><input type="checkbox" id="<%=comprar%>" name="<%=comprar%>" value="compra" onclick="seleccionar(<%=c%>)">Comprar</td>
    		 <td>S/.<input type="text" id="<%=monto%>" name="<%=monto%>" value="0" disabled size="4"></td>
    	</tr>
    	<tr><%c++; %>
    		<td>Para el horno</td> 
    		 <td>
    		 	<%precio = "precio"+c; 
    		 	  peso = "peso"+c;
    		 	  unidad = "unidad"+c;
    		 	  monto = "monto"+c;
    		 	  comprar = "comprar"+c;%>
    		 	S/.<input type="text" id="<%=precio%>" name="<%=precio%>" value="13.00" disabled size="4">
    		 	<input type="number" id="<%=peso%>" name="<%=peso%>" disabled>  
    		    <select id="<%=unidad%>" name="<%=unidad%>" disabled>
    		    	<option value="--" >--</option>
    		    	<option value="gr" >gr</option>
    		    	<option value="kg" >kg</option>
    		    </select>
    		    <input type="button" value="ver monto" onclick="calcular(<%=c%>)">
    		 </td>
    		 <td><input type="checkbox" id="<%=comprar%>" name="<%=comprar%>" value="compra" onclick="seleccionar(<%=c%>)">Comprar</td>
    		 <td>S/.<input type="text" id="<%=monto%>" name="<%=monto%>" value="0" disabled size="4"></td>
    	</tr>
    	<tr><%int d = c; %>
    		<th colspan="3"><h2>Total:</h2></th>
    		<td><input type="button" value="ver total" onclick="sumar1(<%=d%>)"></td>
    		<td>S/.<input type="text" id="total1" name="total1" value="0" size="5"></td>
  		</tr>
      </table><br><br>
      
       	<table style="width:80%" border="1">
      	<tr>
    		<th><h2>Producto</h2></th>		
    		<th colspan="2"><h2>Cantidad</h2></th>
    		<th><h2>Monto</h2></th>
  		</tr>
  		<tr>
    		<th>Queso de chancho</th>
    		<td><%c++;
    			  precio = "precio"+c; 
    		 	  peso = "peso"+c;
    		 	  unidad = "unidad"+c;
    		 	  monto = "monto"+c;
    		 	  comprar = "comprar"+c;%>
    		 	S/.<input type="text" id="<%=precio%>" name="<%=precio%>" value="13.00" disabled size="4">
    			<input type="number" id="<%=peso%>" name="<%=peso%>" disabled>
    			<select id="<%=unidad%>" name="<%=unidad%>" disabled>
    		    	<option value="--" >--</option>
    		    	<option value="gr" >gr</option>
    		    	<option value="kg" >kg</option>
    		    </select>
    		    <input type="button" value="ver monto" onclick="calcular(<%=c%>)">
    		 </td>
    		 <td><input type="checkbox" id="<%=comprar%>" name="<%=comprar%>" value="compra" onclick="seleccionar(<%=c%>)">Comprar</td>
    		<td>S/.<input type="text" id="<%=monto%>" name="<%=monto%>" value="0" disabled size="4"></td>
  		</tr>
  		<tr>
    		<th>Jamonada</th>
    		<td><%c++;
    			  precio = "precio"+c; 
    		 	  peso = "peso"+c;
    		 	  unidad = "unidad"+c;
    		 	  monto = "monto"+c;
    		 	  comprar = "comprar"+c;%>
    		 	S/.<input type="text" id="<%=precio%>" name="<%=precio%>" value="10.00" disabled size="4">
    			<input type="number" id="<%=peso%>" name="<%=peso%>" disabled>
    			<select id="<%=unidad%>" name="<%=unidad%>" disabled>
    		    	<option value="--" >--</option>
    		    	<option value="gr" >gr</option>
    		    	<option value="kg" >kg</option>
    		    </select>
    		    <input type="button" value="ver monto" onclick="calcular(<%=c%>)">
    		 </td>
    		 <td><input type="checkbox" id="<%=comprar%>" name="<%=comprar%>" value="compra" onclick="seleccionar(<%=c%>)">Comprar</td>
    		<td>S/.<input type="text" id="<%=monto%>" name="<%=monto%>" value="0" disabled size="4"></td>
  		</tr>
  		<tr>
    		<th>Mortadela</th>
    		<td><%c++;
    			  precio = "precio"+c; 
    		 	  peso = "peso"+c;
    		 	  unidad = "unidad"+c;
    		 	  monto = "monto"+c;
    		 	  comprar = "comprar"+c;%>
    		 	S/.<input type="text" id="<%=precio%>" name="<%=precio%>" value="9.00" disabled size="4">
    			<input type="number" id="<%=peso%>" name="<%=peso%>" disabled>
    			<select id="<%=unidad%>" name="<%=unidad%>" disabled>
    		    	<option value="--" >--</option>
    		    	<option value="gr" >gr</option>
    		    	<option value="kg" >kg</option>
    		    </select>
    		    <input type="button" value="ver monto" onclick="calcular(<%=c%>)">
    		 </td>
    		 <td><input type="checkbox" id="<%=comprar%>" name="<%=comprar%>" value="compra" onclick="seleccionar(<%=c%>)">Comprar</td>
    		<td>S/.<input type="text" id="<%=monto%>" name="<%=monto%>" value="0" disabled size="4"></td>
  		</tr>
  		<tr>
    		<th>Salchicha arequipeÃ±a</th>
    		<td><%c++;
    			  precio = "precio"+c; 
    		 	  peso = "peso"+c;
    		 	  unidad = "unidad"+c;
    		 	  monto = "monto"+c;
    		 	  comprar = "comprar"+c;%>
    		 	S/.<input type="text" id="<%=precio%>" name="<%=precio%>" value="17.00" disabled size="4">
    			<input type="number" id="<%=peso%>" name="<%=peso%>" disabled>
    			<select id="<%=unidad%>" name="<%=unidad%>" disabled>
    		    	<option value="--" >--</option>
    		    	<option value="gr" >gr</option>
    		    	<option value="kg" >kg</option>
    		    </select>
    		    <input type="button" value="ver monto" onclick="calcular(<%=c%>)">
    		 </td>
    		 <td><input type="checkbox" id="<%=comprar%>" name="<%=comprar%>" value="compra" onclick="seleccionar(<%=c%>)">Comprar</td>
    		<td>S/.<input type="text" id="<%=monto%>" name="<%=monto%>" value="0" disabled size="4"></td>
  		</tr>
  		<tr>
    		<th>Chorizo</th>
    		<td><%c++;
    			  precio = "precio"+c; 
    		 	  peso = "peso"+c;
    		 	  unidad = "unidad"+c;
    		 	  monto = "monto"+c;
    		 	  comprar = "comprar"+c;%>
    		 	S/.<input type="text" id="<%=precio%>" name="<%=precio%>" value="16.00" disabled size="4">
    			<input type="number" id="<%=peso%>" name="<%=peso%>" disabled>
    			<select id="<%=unidad%>" name="<%=unidad%>" disabled>
    		    	<option value="--" >--</option>
    		    	<option value="gr" >gr</option>
    		    	<option value="kg" >kg</option>
    		    </select>
    		    <input type="button" value="ver monto" onclick="calcular(<%=c%>)">
    		 </td>
    		 <td><input type="checkbox" id="<%=comprar%>" name="<%=comprar%>" value="compra" onclick="seleccionar(<%=c%>)">Comprar</td>
    		<td>S/.<input type="text" id="<%=monto%>" name="<%=monto%>" value="0" disabled size="4"></td>
  		</tr>
  		<tr>
    		<th>Manteca</th>
    		<td><%c++;
    			  precio = "precio"+c; 
    		 	  peso = "peso"+c;
    		 	  unidad = "unidad"+c;
    		 	  monto = "monto"+c;
    		 	  comprar = "comprar"+c;%>
    		 	S/.<input type="text" id="<%=precio%>" name="<%=precio%>" value="5.00" disabled size="4">
    			<input type="number" id="<%=peso%>" name="<%=peso%>" disabled>
    			<select id="<%=unidad%>" name="<%=unidad%>" disabled>
    		    	<option value="--" >--</option>
    		    	<option value="gr" >gr</option>
    		    	<option value="kg" >kg</option>
    		    </select>
    		    <input type="button" value="ver monto" onclick="calcular(<%=c%>)">
    		 </td>
    		 <td><input type="checkbox" id="<%=comprar%>" name="<%=comprar%>" value="compra" onclick="seleccionar(<%=c%>)">Comprar</td>
    		<td>S/.<input type="text" id="<%=monto%>" name="<%=monto%>" value="0" disabled size="4"></td>
  		</tr>
  		<tr>
    		<th colspan="2"><h2>Total:</h2></th>
    		<td><input type="button" value="ver total" onclick="sumar2(<%=d%>,<%=c%>)"></td>
    		<td>S/.<input type="text" id="total2" name="total2" value="0" size="5"></td>
  		</tr>
      </table><br><br>
      	<input name="reset" type="reset" id="reset" value="Limpiar">
     	&nbsp;
      	<input name="submit" type="submit" value="Confirmar">
    </form>
    <br class="clear" />
  </div>
</div>
</body>
</html>