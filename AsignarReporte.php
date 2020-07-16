<?php
ob_start();
require_once('Clases/Calculos.php');
require_once('usuario.php');
session_start();
//$fecha = new datetime();
//echo   date("d-m-Y" )  ;
//echo  $fecha->format("12-01-2020");
error_reporting(0);
$fecha_actual =  date("Y-m-d");
$fecha_entrada =  date("06-04-2020");
//echo (date( $fecha_actual - $fecha_entrada) /86400). "   Dias ." ;
//$FiltrarFecha = "2020-";









require_once('usuario.php');
$usuario=new Usuario();
$usuario=  $_SESSION['usuario'] ;
$nivel =  $usuario->getNivel();
$usuarioo =  $usuario->getNombre();
echo "      Hola:"  .$usuarioo . "  ".$nivel;

if (!isset($_SESSION['usuario'])) {
    header('Location: index.php');
}
else
{



}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Reportes AT</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="CSS/Estilo.css" rel="stylesheet" type="text/css">
    <div >
        <h1>Mostrar Reportes.         AT</h1>


    </div>
</head>


<body>
<div class="padre">
    <header class="header">
        <div class="Menu">
            <div class="Logo">
                <a href="index.php" > AT </a>

            </div>
            <nav class="nav">

                <ul class="menu">
                    <li>  <a href="Cuenta.php"> Inicio </a></li>
                    <li><a href="MostrarReportes.php">Reportes </a>
                        <ul class="submenu">
                            <li> <?php  if($nivel == 1){  echo "<a href='AgregarReporte.php'> Agregar Reporte </a>"; };?></li>
                            <li> <a href="MostrarReportes.php"> Mostrar Reportes </a></li>
                            <li> <a href="Graficos/indicadores.php"> Indicadores </a></li>
                            <li> <a href="Graficos/Estadisticas.php"> Estadisticas </a></li>

                        </ul>

                    </li>
                    <li><a href=" Hospitales/MostrarHospital.php">Hospitales </a>
                        <ul class="submenu">
                            <li> <?php  if($nivel == 1){  echo "<a href='Hospitales/AgregarHospital.php'> Agregar Hospital </a>"; };?></li>
                            <li> <a href="Hospitales/MostrarHospital.php"> Mostrar Hospitales </a></li>

                        </ul>
                    <li><a href=" EquiposInstalados/Mostrar_Instalacion.php">E. Instalados </a>
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
                    <li> <a href=""> Usuarios </a>


                        <ul class="submenu">


                            <li>    <?php  if($nivel == 1)
                                {
                                    echo "  <a href='registrarse.php'>Registrar otro usuario</a> ";

                                }

                                ?> </li>
                        </ul>

                    </li>

                    <li>    <a href="PlanDeTrabajo/MostrarPlanDeTrabajo.php"> Plan de Trabajo </a> </li>
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
            <h1>   </h1>
        </div>
</div>


<?php
include("conexion.php");
$id = $_REQUEST['id'];

$query= "SELECT * FROM reportesat WHERE ID = '$id'";
$resultado= $conexion->query($query) ;
$row=$resultado->fetch_assoc();
?>

<form action="Modificar_Proceso.php?id=<?php echo $row['ID']; ?>" method="POST"  class = "formm">


    <input  type="text" readonly  name="No"    value="<?php echo $row['Nunm']; ?>">
    <input  type="text" readonly name="FechaSolicitud"   value="<?php echo $row['FechaSolicitud']; ?>">
    <input  type="text" readonly name="Equipo"    value="<?php echo $row['Equipo']; ?>">
    <input  type="text" readonly name="NS"    value="<?php echo $row['NS']; ?>">

    <input  type="text" readonly name="Cliente"    value="<?php echo $row['Cliente']; ?>">
    <input  type="text" readonly name="Solicitadopor"    value="<?php echo $row['Solicitadopor']; ?>">

    <hr>
    <input  type="text" readonly name="Falloreportado"    value="<?php echo $row['Falloreportado']; ?>">


    <select size="1" name="Especialista">

        <option selected  value=""  </option>
        <option value="Landin">Landin</option>
        <option value="Mesa">Mesa</option>
        <option value="Crespo">Crespo</option>
        <option value="Guillermo">Guillermo</option>
	    <option value="Lily">Lily</option>
	    <option value="Yusniel">Yusniel</option>
	    <option value="Reynier">Reynier</option>
	    <option value="Ricardo">Ricardo</option>

    </select>

    <input  type="text" readonly name="FechadeAtencion"    value="<?php echo $row['FechadeAtencion']; ?>">
    <input  type="text" readonly name="ECETFechasolucion"    value="<?php echo $row['ECETFechasolucion']; ?>">
    <input  type="text" readonly name="SolucionadoPor"    value="<?php echo $row['SolucionadoPor']; ?>">
    <input  type="text" readonly name="ECETFechaDevolucion"    value="<?php echo $row['ECETFechaDevolucion']; ?>">
    <input  type="text" readonly name="DevueltoPor"    value="<?php echo $row['DevueltoPor']; ?>">
    <input  type="text" readonly name="EquipoApto"    value="<?php echo $row['EquipoApto']; ?>">


    <hr>
    <input type="submit" value="Aceptar"/>
     </form>
</tbody>


<footer>
    <div >
        <h4>AT 2020</h4>
    </div>
</footer>
</body>
</html>