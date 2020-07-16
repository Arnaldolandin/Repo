<?php
	session_start();
	unset($_SESSION['usuario']);
?>
<!DOCTYPE html>
<html>
<head>
	<title>Reportes AT</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="EstiloA.css">
</head>
<body>
<header>
	<div >
		<h1>BIENVENIDO A AT</h1>
	</div>
</header>


	<div >

	</div>

	<form  action="controller_login.php" method="post">
		<p>
			<label >
				Usuario
			</label>
			<input type="text" name="usuario" >
		</p>
		<p>
			<label >Password</label>
			<input  type="password" name="pas">
		</p>
		<p>
			<input type="hidden" name="entrar" value="entrar">
			<button >Aceptar</button>
		</p>

	</form>
<footer>
	<div >
		<h4>AT 2020</h4>
	</div>
</footer>
</body>
</html>