
<!DOCTYPE html>
<html>
<head>
	<title>Preguntas</title>
	<link rel="stylesheet" type="text/css" href="estilo1.css">
</head>
<body>

	<center>
	<div class="dprincipal">
	<h1>Trivia del Héroe</h1>
	<form method="POST" action="Preguntas.php">
		

<?php

	session_start();
	$conexion=new mysqli("localhost","root","","trivia");
	
	$contador=$_SESSION["contador"];
	$orden=$_SESSION["orden"];
	

	$sql="SELECT * FROM preguntas WHERE ID = '$orden[$contador]'";


	?>
	<h3>
	<?php
	echo $contador+1;
	echo '.';

	$ejecutar=mysqli_query($conexion, $sql);
	$resultado=$conexion->query($sql);
	$dato=$resultado->fetch_assoc();
	echo $dato['Pregunta'];
	?> </h3>
	<?php

	$sql2="SELECT * FROM respuestas WHERE NPregunta = '$orden[$contador]'";
	$ejecutar=mysqli_query($conexion, $sql2);
	?>

	<?php
		while ($mostrar=mysqli_fetch_array($ejecutar)) {

			?>
			<br>
			<input type="radio" name="opciones" value="<?php echo $mostrar['Estado'];?>" required=""> <?php echo $mostrar['Respuesta'];?>
			<?php
		}

		?>
	
	<?php
		



			
	?>
		<br>
		<br>
		<input type="submit" name="next" value="Siguiente">
		<br>
		<br>
	</form>



	<?php 


		if(isset($_POST['next']))
		{
			$correcta=$_POST['opciones'];

			if($correcta==1)
			{
				echo "Buena";
				$_SESSION['puntaje']=$_SESSION['puntaje']+50;
			}
			else
			{	
				$_SESSION['vidas']=$_SESSION['vidas']-1;
				echo "Mala";
			}
			?>
			<br>
			<?php
		}
		$vidas=$_SESSION['vidas'];
		echo "Vidas restantes: ". $vidas;
		?>
		<br>
		<br>
		<?php

		echo "Puntaje: ". $_SESSION['puntaje'];

		if ($vidas==0) {
			$_SESSION['vamos']=20;
		}

		if ($_SESSION['vamos']==20) {

			header('Location: Puntajes.php');
		}


		$_SESSION["contador"]=$_SESSION["contador"]+1;
		$_SESSION['vamos']=$_SESSION['vamos']+1;



		?>
		<br>
		<br>
	

	
	
		<?php

		if ($vidas==3) {
			?>
			<img src="Recursos/Vida buena.png" width="30px" height="30px">
			<img src="Recursos/Vida buena.png" width="30px" height="30px">
			<img src="Recursos/Vida buena.png" width="30px" height="30px">
			<?php
		}

		if ($vidas==2) {
			?>
			<img src="Recursos/Vida buena.png" width="30px" height="30px">
			<img src="Recursos/Vida buena.png" width="30px" height="30px">
			<img src="Recursos/Vida mala.png" width="30px" height="30px">
			<?php
		}

		if ($vidas==1) {
			?>
			<img src="Recursos/Vida buena.png" width="30px" height="30px">
			<img src="Recursos/Vida mala.png" width="30px" height="30px">
			<img src="Recursos/Vida mala.png" width="30px" height="30px">
			<?php
		}

		?>
		<br>
	</div>

</center>
</body>
</html>
