<!DOCTYPE html>
<html>
<head>
	<title>Inicio</title>
	<link rel="stylesheet" type="text/css" href="estilo1.css">
</head>
<body background="Recursos/Fondo.png;">
	<center>
	<div class="dtitulo">
	<h1>Trivia del Héroe</h1>
	<h3>¿Cuanto sabes de videojuegos?</h3>
	<form method="POST" action="Preguntas.php">
		<br>
		<h2>Top 5 puntajes</h2>
<?php

session_start();
$conexion=new mysqli("brexblobtt6rliliumxa-mysql.services.clever-cloud.com","udhwgrucgzqsuqat","","brexblobtt6rliliumxa");


$max = 20;
$aleatorio = mt_rand(1, $max); 
$usados[] = $aleatorio; 

for ($i = 0; $i < 19; $i++) {
    
    $aleatorio = mt_rand(1, $max); 
    while(in_array($aleatorio,$usados)) { 
        $aleatorio = mt_rand(1, $max);
    }

    $usados[] = $aleatorio;    
}


    $_SESSION['orden']=$usados;
    $_SESSION['contador']=0;
    $_SESSION['vidas']=3;
    $_SESSION['vamos']=0;
    $_SESSION['puntaje']=0;


    $sql2="SELECT * from puntajes order by Score desc";
	$ejecutar=mysqli_query($conexion, $sql2);
	

		for ($i=1; $i<= 5 ; $i++) { 
			
			$mostrar=mysqli_fetch_array($ejecutar);
			echo $mostrar['Nombre']. " : ".$mostrar['Score']. " puntos";
			?>
			<br>
			<?php 

		}
			
	?>
	<br>
	<br>
	<input type="submit" name="empezar" value="Comienza la prueba">
	<br>
	<br>
	</form>
	</div>
</center>
</body>
</html>
	<?php
		

    

?>




