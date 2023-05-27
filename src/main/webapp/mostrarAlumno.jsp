<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Models.BuscarAlumnos" import="Models.Alumno"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<%
String user = request.getParameter("nombre");
String pass = request.getParameter("apellido");
String cedula  = request.getParameter("cedula");


//**instancia Buscar Alumnos**//
BuscarAlumnos buscar = new BuscarAlumnos();



Alumno unA = buscar.buscarAlumno(user, pass,Integer.parseInt(cedula));

String cedula1= Integer.toString(unA.getCi());
%>


<div   class="contenedor">
<div  class="cabezal">
	<header>   
		<img class="logo" src="Img/utec.jpg" alt="Logo Utec">
	
		<h1>Sistema de Gestión de Alumnos</h1>

	</header>							
				
</div>		
<!----------------------------------------------------------------->	
<section class="formularioSeleccionAlumnos">

	<h4>Selección de Alumnos</h4>
	
			
	<form action="BuscarAlumno" method="get">
		<table>
			<!------------------------NOMBRE----------------------------->	
			<tr>
				<td>
					<label class= "datos" for="nombre">Nombre:</label>
				</td>
				<td>
					<input  type="text" id="nombre" name="nombre" value= "<%= unA.getNombre() %>" >
				</td>
			</tr>
			<!-------------------------APELLIDO----------------------------->	
			<tr>
				<td>
					<label class= "datos" for="apellido">Apellido:</label>
					</td>
				<td>
					<input type="text" id="apellido" name="apellido" value= "<%= unA.getApellido()%>">
				</td>
			</tr>
			<!----------------------CEDULA-------------------------------->
			<tr>
				<td>
					<label class= "datos" for="cedula">Cédula Identidad:</label>
					</td>
				<td>
					<input type="text" id="cedula" name="cedula" value="<%= cedula1 %>">
					
				</td>								
			</tr>
				<!----------------------CODIGO DE CARRERA-------------------------------->
			<tr>
				<td>
					<label class= "datos" for="codCarrera">Código de Carrera:</label>
					</td>
				<td>
					<input type="text" id="codCarrera" name="codCarrera" value="<%= unA.getCodigoCarrera()%>"> 
				</td>								
			</tr>
				<!----------------------DIRECCIÓN-------------------------------->
			<tr>
				<td>
					<label class= "datos" for="direccion">Direccion:</label>
					</td>
				<td>
					<input type="text" id="direccion" name="direccion" value="<%= unA.getDireccion()%>"> 
				</td>								
			</tr>
				<!----------------------AÑO DE NACIMIENTO-------------------------------->
			<tr>
				<td>
					<label class= "datos" for="nac">Año de Nacimiento:</label>
					</td>
				<td>
					<input type="text" id="nac" name="nac" value="<%= unA.getAnioNacimiento()%>">
				</td>								
			</tr>
				<!----------------------FOTO DE ARCHIVO-------------------------------->
			<tr>
				<td>
					<label class= "datos" for="foto">Foto de Archivo:</label>
					</td>
				<td>
					<input type="text" id="foto" name="foto">
				</td>								
			</tr>
		</table>
	</form>
	
	<p id=pNota class="pIndicaciones">Nota: Es de destacar que se selecionará el primer alumno que satisfaga el criterio de selección</p>

</section>
<!----------------------------------------------------------------->
<footer>
	<p>Unidad Curricular de Programación de Aplicaciones Web - UTEC - 2023</p>
</footer>
</div>





</body>
</html>