<?php
//error_reporting(0);
$D = 12;
require_once('usuario.php');
	session_start();


  
	if (!isset($_SESSION['usuario']))
	{


		header('Location: index.php');

	}
else
{


	$usuario=new Usuario();
	$usuario=  $_SESSION['usuario'] ;
	$nivel =  $usuario->getNivel();
	$usuarioo =  $usuario->getNombre();

	// $fp = fopen("c:\\data\\info.txt", "r");
	//$fp = fopen("D:\\Curso GNSS.pdf", "r");
    //	echo $fp;
    echo "      Hola:"  .$usuarioo . "  ".$nivel;

}
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
	 
	<title>Reportes AT</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="CSS/Estilo.css" rel="stylesheet" type="text/css">

    <script src="CodeHighcharts/highcharts.js"></script>
    <script src="CodeHighcharts/modules/exporting.js"></script>


</head>

<br>

<div class="padre">
    <header class="header">
          <div class="Menu">
                   <div class="Logo">
                          <a href="index.php" > AT </a>

                     </div>
                                   <nav class="nav">

                                       <ul class="menu">
                                           <li>  <a href="Cuenta.php"> Inicio </a></li>

                                           <li><a href="MostrarReportes.php">Mantenimientos </a>
                                               <ul class="submenu">
                                                   <li> <?php  if($nivel == 1){  echo "<a href='AgregarMP.php'> Agregar Reporte </a>"; };?></li>
                                                   <li> <a href="MostrarReportes.php"> Mostrar Reportes </a></li>

                                                   <li> <a href="../MantPreventivos/MostrarMP.php">Mant. Prev. </a></li>
                                                   <li> <?php  if($nivel == 1){  echo "<a href='../MantPreventivos/AgregarMP.php'> Agregar M.P. </a>"; };?></li>


                                                   <li> <a href="Graficos/indicadores.php"> Indicadores </a></li>
                                                   <li> <a href="Graficos/Estadisticas.php"> Estadisticas </a></li>
                                               </ul>

                                           </li>

                                           <li><a href=" Hospitales/MostrarHospital.php">Hospitales </a>
                                               <ul class="submenu">
                                                   <li> <?php  if($nivel == 1){  echo "<a href='Hospitales/AgregarHospital.php'> Agregar Hospital </a>"; };?></li>
                                                   <li> <a href="Hospitales/MostrarHospital.php"> Mostrar Hospitales </a></li>

                                               </ul>
                                           <li><a href=" EquiposInstalados/Mostrar_Instalacion.php">E.Instalados </a>
                                               <ul class="submenu">
                                                   <li> <?php  if($nivel == 1){  echo "<a href='EquiposInstalados/Agregar_Instalacion.php'> Agregar Instalacion </a>"; };?></li>
                                                   <li> <a href="EquiposInstalados/Mostrar_Instalacion.php"> Mostrar E. Instalados </a></li>

                                               </ul>
                                           </li>
                                           <li><a href=" Contratos/Mostrar_Contratos.php">Contratos </a>
                                               <ul class="submenu">
                                                   <li> <?php  if($nivel == 1){  echo "<a href='Contratos/Agregar_Contrato.php'> Agregar Contrato </a>"; };?></li>
                                                   <li> <a href="Contratos/Mostrar_Contratos.php"> Mostrar Contratos </a></li>

                                               </ul>
                                           </li>
                                           </li>


                                           </li>
                                           <li> <a href=""> Usuarios </a>


                                               <ul class="submenu">


                                                   <li>    <?php  if($nivel == 1)
                                                       {
                                                           echo "  <a href='registrarse.php'>Registrar otro usuario</a> ";

                                                       }

                                                       ?> </li>
                                               </ul>

                                           </li>

                                           <li>    <a href="PlanDeTrabajo/MostrarPlanDeTrabajo.php"> Plan de Trabajo </a>
                                           <ul class="submenu">
                                               <li>    <a href="PlanDeTrabajo/AgregarPlanDeTrabajo.php"> Agregar Plan de Trabajo </a> </li>
                                               <li>    <a href="PlanDeTrabajo/MostrarPlanDeTrabajo.php"> Plan de Trabajo </a> </li>
                                           </ul>
                                           </li>
                                           <li>    <a href=""> Cursos </a>
                                               <ul class="submenu">
                                                   <li> <a href="Cursos/Mostrar_Curso.php"> Curso Generales</a></li>
                                                   <li> <a href="Cursos/Mostrar_Curso.php"> Curso AT </a></li>

                                               </ul>

                                           </li>





                                           <li>  <a href="index.php"> Salir </a>     </li>



                                       </ul>
						           </nav>


                                   </div>

                            <div class="TextoPrincipall">
                         <h1>    </h1>

                          </div>
    </header>

             <p></p>

       </div>
   </div>
	

	</div>

<div >
    <h1>BIENVENIDO <?php echo $usuario->getNombre() ; ?> A TU CUENTA EN AT   </h1>

    <?php

    require_once('Clases/Calculos.php');


    $fechas = "2020-04-27";


    ?>

</div>


    <div  class="slider">
        <ul>
            <li><img src="../Imagenes/1.jpg"  alt="" ></li>
            <li><img src="../Imagenes/2.jpg"  alt="" ></li>
            <li><img src="../Imagenes/3.jpg"  alt="" ></li>
            <li><img src="../Imagenes/4.jpg"  alt="" ></li>

        </ul>


    </div>


<div>

    <?php

/*
$carta = "De: landin7211  \n Correo: landin7211@nauta.cu \n Telefono: 54399917 \n Mensaje: holaaaaaaaaaa";
if(mail("landin7211@nauta.cu","Prueba",$carta,"landin7211@nauta.cu"))
{
    echo "Correo enviado";
}
else
{
    echo "Correo no enviado";
}*/
/* <source src="<?php echo $dirname.$file ; ?> " type="video/mp4">*/
/*  <source src=" videoss/Zoo1x13.mp4" type="video/mp4">*/



/*

// Cargamos la librería dompdf que hemos instalado en la carpeta dompdf
require_once('dompdf/dompdf_config.inc.php');

// Introducimos HTML de prueba
$html = '<h1>Hola mundo!</h1>';

// Instanciamos un objeto de la clase DOMPDF.
$pdf = new DOMPDF();

// Definimos el tamaño y orientación del papel que queremos.
$pdf->set_paper("A4", "portrait");

// Cargamos el contenido HTML.
$pdf->load_html(utf8_decode($html));

// Renderizamos el documento PDF.
$pdf->render();

// Enviamos el fichero PDF al navegador.
$pdf->stream('FicheroEjemplo.pdf');

*/


//require_once ('MPDF/mpdf.php');
//$mpdf = new mPDF('c','A4');
//$mpdf->writeHTMLHeaders('<div> HOla ......   </div>');
//$mpdf->pageoutput('Reporte.pdf');

// Cargamos la librería dompdf que hemos instalado en la carpeta dompdf

?>


</div>





</body>
</html>

