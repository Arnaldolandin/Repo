
<!DOCTYPE html>
<html>
<!DOCTYPE html>
<html>
<head>
	<title>Reportes AT</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href=" CSS/Estilo.css">

</head>
<body>
<div class="padre">
	<header class="header">
		<div class="menu">
			<div class="Logo">
				<a href="index.php" > AT </a>

			</div>
            <nav class="nav">

                <ul class="menu">
                    <li>  <a href="Cuenta.php"> Inicio </a></li>


                    </li>





                    <li>  <a href="index.php"> Salir </a>     </li>



                </ul>
            </nav>

		</div>
		<div class="TextoPrincipall">
			<h1>   </h1>
		</div>

</div>


</header>
<br><br>
<br><br>
<div >
    <h1>Registro.           AT</h1>


</div>
		<div >
			<h1>Registrarse</h1>
		</div>
		<div>
			<form  action="controller_login.php" method="post">
				<p>

					<input  type="text" placeholder="Nombre de usuario o correo electrónico"  name="usuario">
				</p>
				<p>

					<input  type="password" placeholder="password" name="pas">
				</p>
				<p>

					<input  type="text"  placeholder="Nivel" name="Nivel">
				</p>
				<p>
					<input type="hidden" name="registrarse" placeholder="password" value="registrarse">
					<button>Registrarse</button>
				</p>
				<p><a href="index.php">Ahora no</a></p>
			</form>
		</div>
<footer>
	<div >
		<h4>AT 2020</h4>
	</div>
</footer>

</body>
</html>