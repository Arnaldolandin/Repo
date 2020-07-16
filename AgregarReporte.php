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


                    <li><a href="../MostrarReportes.php">Mantenimientos </a>
                        <ul class="submenu">
                            <li> <?php  if($nivel == 1){  echo "<a href='../AgregarReporte.php'> Agregar Reporte </a>"; };?></li>
                            <li> <a href="../MostrarReportes.php"> Mostrar Reportes </a></li>

                            <li> <a href="../MantPreventivos/MostrarMP.php">Mant. Prev. </a></li>
                            <li> <?php  if($nivel == 1){  echo "<a href='../MantPreventivos/AgregarMP.php'> Agregar M.P. </a>"; };?></li>


                            <li> <a href="../Graficos/indicadores.php"> Indicadores </a></li>
                            <li> <a href="../Graficos/Estadisticas.php"> Estadisticas </a></li>
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

<div >
    <h1>Mostrar Reportes.         AT</h1>


</div>
<br><br>
<?php
include("conexion.php");
 //echo "  " . $FiltrarFecha = date("y-m");
$FiltrarFecha = date("y-m");
$mayor  = 0 ;
$query= "SELECT * FROM reportesat WHERE  FechaSolicitud LIKE '%$FiltrarFecha%'";
$resultado= $conexion->query($query) ;

while($row=$resultado->fetch_assoc() )
{


 	$consecutivo =  substr($row['Nunm'],1,10) ;

	if($consecutivo  >= $mayor)
	{

		$mayor = $consecutivo;
	}

}


if($mayor == 0)
{
	$NumeroReporte = "00";

}
else {
	$NumeroReporte = substr($mayor, 4, 4);
}
 //echo "     " . date("ym") . $NumeroReporte;

?>


<form action="Operacion_guardar.php" method="POST" class = "formm">


    <label>No: <input  type="text" name="No" placeholder="No"  value=<?php echo "C" . (( date("ym") . $NumeroReporte)  + 1) ; ?>></label>
        <label>Fecha de Solicitud  	<input  type="date" name="FechaSolicitud" placeholder="Fecha Solicitud"  value="" ></label>
    <label>Equipo <select size="1" name="Equipo">

        <option selected value="">  Equipo  </option>
        <option value="Medicid 5">Medicid 5</option>
        <option value="Medicid 5 Video EEG">Medicid 5 Video EEG</option>
        <option value="Fenix">Fenix</option>
        <option value="Audix 5">Audix 5</option>
        <option value="Neuronica 5">Neuronica 5</option>
        <option value="NMIO">NMIO</option>
        <option value="Medicid UCI">Medicid UCI</option>
        <option value="Medicid Panda">Medicid Panda</option>
        <option value="Optima">Optima</option>
	    <option value="Audiometro Clinico">Audiometro Clinico</option>
        <option value="EOA 2.1">EOA 2.1</option>


    </select></label>
    <label> N/S <input  type="text" name="NS" placeholder="N/S"  value="" ></label>
    <?php
    $queryss= "SELECT  DISTINCT Hospital FROM hospitales ";


    $resultadoss= $conexion->query($queryss) ;?>

    <label>  Cliente: </label>
    <select size="1" name="Cliente">
        <option selected value="">  </option>
        <?php
        while($rows=$resultadoss->fetch_assoc() )
        { ?>

            <option value="<?php echo $rows['Hospital']; ?>"><?php echo $rows['Hospital']; ?></option>
        <?php  }
        ?>


    </select>
    <br/><br/>

    <hr>
    <br/><br/>
            <label> Provincia <select size="1" name="Provincia">

		<option selected value=""> Provincia  </option>
		<option value="Habana">Habana</option>
		<option value="Pinar del Rio">Pinar del Rio</option>
		<option value="Artemisa">Artemisa</option>
		<option value="Mayabeque">Mayabeque</option>
		<option value="Matanzas">Matanzas</option>
		<option value="Villa Clara">Villa Clara</option>
		<option value="Cienfuegos">Cienfuegos</option>
        <option value="Ciego de Avila">Cienfuegos</option>
		<option value="Santispiritus">Santispiritus</option>
         <option value="Camagüey">Camagüey</option>
		<option value="Las Tunas">Las Tunas</option>
		<option value="Granma">Granma</option>
		<option value="Santiago de Cuba">Santiago de Cuba</option>
		<option value="Holguin">Holguin</option>
		<option value="Guantanamo">Guantanamo</option>
		<option value="Isla de la Juventud">Isla de la Juventud</option>

	</select></label>
                <label> Solicitado por <input  type="text" name="Solicitadopor" placeholder="Solicitado por"  value=""></label>

                    <label> Fallo Reportado <input  type="text" name="FalloReportado" placeholder="Fallo Reportado"  value=""></label>

                        <label> Especialista <select size="1" name="Especialista">

            <option selected value="">  Especialista  </option>
	        <option value="Landin">Landin</option>
	        <option value="Mesa">Mesa</option>
	        <option value="Crespo">Crespo</option>
	        <option value="Guillermo">Guillermo</option>
	        <option value="Lily">Lily</option>
	        <option value="Yusniel">Yusniel</option>
	        <option value="Reynier">Reynier</option>
	        <option value="Ricardo">Ricardo</option>
            <option value="Gustavo">Gustavo</option>
            <option value="Mercedes">Mercedes</option>

        </select></label>

    <label> Especialista 2  <select size="1" name="Especialista2">

        <option selected value="">  Especialista 2  </option>
        <option value="/Landin">Landin</option>
        <option value="/Mesa">Mesa</option>
        <option value="/Crespo">Crespo</option>
        <option value="/Guillermo">Guillermo</option>
        <option value="/Lily">Lily</option>
        <option value="/Yusniel">Yusniel</option>
        <option value="/Reynier">Reynier</option>
        <option value="/Ricardo">Ricardo</option>
        <option value="/Gustavo">Gustavo</option>
        <option value="/Mercedes">Mercedes</option>

    </select></label><br/><br/>
    <hr><br/><br/>


                                <label>Fecha de Atencion <input type="date" name="FechadeAtencion"  placeholder="Fecha de Atencion"  value=""/></label>
                                    <label> E.C.E.T F solucion<input type="date" name="ECETFsolucion"  placeholder="E.C.E.T F solucion"  value=""/></label>

                                        <label> Solucionado Por <select size="1" name="SolucionadoPor">

        <option selected value="">  Especialista  </option>
        <option value="Landin">Landin</option>
        <option value="Mesa">Mesa</option>
        <option value="Crespo">Crespo</option>
        <option value="Guillermo">Guillermo</option>
        <option value="Lily">Lily</option>
        <option value="Yusniel">Yusniel</option>
        <option value="Reynier">Reynier</option>
        <option value="Ricardo">Ricardo</option>
        <option value="Gustavo">Gustavo</option>
        <option value="Mercedes">Mercedes</option>

    </select></label>
                                            <label>E.C.E.T F Devolucion <input type="date" name="ECETFDevolucion"  placeholder="E.C.E.T F Devolucion"  value=""/></label>

                                                <label> Devuelto Por <select size="1" name="DevueltoPor">

        <option selected value="">  Especialista  </option>
        <option value="Landin">Landin</option>
        <option value="Mesa">Mesa</option>
        <option value="Crespo">Crespo</option>
        <option value="Guillermo">Guillermo</option>
        <option value="Lily">Lily</option>
        <option value="Yusniel">Yusniel</option>
        <option value="Reynier">Reynier</option>
        <option value="Ricardo">Ricardo</option>
        <option value="Gustavo">Gustavo</option>
        <option value="Mercedes">Mercedes</option>

    </select></label><br/><br/>
    <hr ><br/><br/>


                                                    <label>     Equipo Apto       <select size="1" name="EquipoApto">

    <option selected value="">Equipo Apto</option>
    <option value="Pendiente">Pendiente</option>
    <option value="SI">SI</option>
    <option value="NO">NO</option>


</select></label>

    <input type="submit" value="Aceptar"/>




</form>

<footer>
    <br/><br/>
<div >
    <h4>AT 2020</h4>
</div>
</footer>
</body>
</html>
