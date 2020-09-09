<!DOCTYPE html>
<html>
<head>
	<title>Registro Puntajes</title>
	<link rel="stylesheet" type="text/css" href="estilo3.css">

</head>
<body>
	<center>
	<div>
	<h1>Puntajes</h1>
	<form method="POST" action="Puntajes.php">
		<input type="text" name="nombre" placeholder="Ingrese su nombre" required="">
		<input type="submit" name="inicio" value="Subir puntaje e ir a Inicio">
	</form>
	<br>
	<br>
</div>
</center>
</body>
</html>
<?php
	
	session_start();
	$conexion=new mysqli("localhost","root","","trivia");

	
	
	if(isset($_POST["inicio"]))
	{
		$nombre=$_POST['nombre'];
		$puntaje=$_SESSION['puntaje'];

		$sql="INSERT INTO puntajes VALUES (null,'$nombre','$puntaje')";
		$ejecutar=mysqli_query($conexion, $sql);
		header('Location: index.php');
	}


?>