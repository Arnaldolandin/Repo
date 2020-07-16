<?php


require_once('usuario.php');
include("conexion.php");
$id = $_REQUEST['id'];
session_start();


require_once('usuario.php');
$usuario=new Usuario();
$usuario=  $_SESSION['usuario'] ;
$nivel =  $usuario->getNivel();
$usuarioo =  $usuario->getNombre();
echo "       Hola:"  .$usuarioo . "  ".$nivel;

if (!isset($_SESSION['usuario'])) {
    header('Location: index.php');
}
else
{
if($nivel != 1){

    header('Location: MostrarReportes.php');

}


}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Reportes AT</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="CSS/Estilo.css" rel="stylesheet" type="text/css">
<br><br>
    <br><br>
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
        <tbody>


            <?php


               $query= "SELECT * FROM reportesat WHERE ID = '$id'";
            $resultado= $conexion->query($query) ;
            $row=$resultado->fetch_assoc();
          ?>
            <form action="Modificar_Proceso.php?id=<?php echo $row['ID']; ?>" method="POST" class = "formm">


                <label>No:        <input  type="text" name="No"  placeholder="No Reporte"  value="<?php echo $row['Nunm']; ?>"></label>
                    <label>Fecha de Solicitud  <input  type="date" name="FechaSolicitud" placeholder="Fecha de Solicitud"  value="<?php echo $row['FechaSolicitud']; ?>"></label>
                        <label>Equipo:  <input  type="text" name="Equipo"   placeholder="Equipo" value="<?php echo $row['Equipo']; ?>"></label>
                            <label>N/S:  <input  type="text" name="NS"   placeholder="N/S" value="<?php echo $row['NS']; ?>"></label>

                <?php
                $queryss= "SELECT  DISTINCT Hospital FROM hospitales ";


                $resultadoss= $conexion->query($queryss) ;?>
               <hr>
                <label>  Cliente: </label>
                <select size="1" name="Cliente">
                    <option selected value=""> <?php echo $row['Cliente']; ?> </option>
                    <?php
                    while($rows=$resultadoss->fetch_assoc() )
                    { ?>

                        <option value="<?php echo $rows['Hospital']; ?>"><?php echo $rows['Hospital']; ?></option>
                    <?php  }
                    ?>


                </select>


                                    <label> Provincia:      <select size="1" name="Provincia">
		            <?php  if($row['Provincia'] != 1){?>     <option selected  value="<?php echo $row['Provincia']; ?>">   <?php echo $row['Provincia']; ?>  </option>   <?php  }
                else {
                ?>    <option selected  value=" " </option>  <?php } ?>

		            <option value="Habana">Habana</option>
		            <option value="Pinar del Rio">Pinar del Rio</option>
		            <option value="Artemisa">Artemisa</option>
		            <option value="Mayabeque">Mayabeque</option>
		            <option value="Matanzas">Matanzas</option>
		            <option value="Villa Clara">Villa Clara</option>
		            <option value="Cienfuegos">Cienfuegos</option>
		            <option value="Santispiritus">Santispiritus</option>
		            <option value="Las Tunas">Las Tunas</option>
                                            <option value="Camagüey">Camagüey</option>
		            <option value="Granma">Granma</option>
		            <option value="Santiago de Cuba">Santiago de Cuba</option>
		            <option value="Holguin">Holguin</option>
		            <option value="Guantanamo">Guantanamo</option>
		            <option value="Isla de la Juventud">Isla de la Juventud</option>

	            </select></label>



                <label>Solicitado por:     <input  type="text" name="Solicitadopor"  placeholder="Solicitado por"  value="<?php echo $row['Solicitadopor']; ?>"></label>

                    <label>Fallo Reportado:     <input  type="text" name="Falloreportado"  placeholder="Fallo Reportado"  value="<?php echo $row['Falloreportado']; ?>"></label>
                <hr>
                        <label>especialistade ST:     <select size="1" name="Especialista">
                <?php  if($row['Especialista'] != 1){?>     <option selected  value="<?php echo $row['especialistadeST']; ?>">   <?php echo $row['especialistadeST']; ?>  </option>   <?php  }
                else {
                ?>    <option selected  value=" " </option>  <?php } ?>

	            <option value="Landin">Landin</option>
	            <option value="Mesa">Mesa</option>
	            <option value="Crespo">Crespo</option>
	            <option value="Guillermo">Guillermo</option>
	            <option value="Lily">Lily</option>
	            <option value="Yusniel">Yusniel</option>
	            <option value="Reynier">Reynier</option>
	            <option value="Ricardo">Ricardo</option>
                                <option value="/Gustavo">Gustavo</option>
                                <option value="/Mercedes">Mercedes</option>

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

                    </select></label>

                            <label>Fecha de Atencion:     <input  type="date" name="FechadeAtencion"  placeholder="Fecha de Atencion"  value="<?php echo $row['FechadeAtencion']; ?>"></label>
                                <label>E C E T Fecha solucion:    <input  type="date" name="ECETFechasolucion"  placeholder="E C E T Fecha solucion"  value="<?php echo $row['ECETFechasolucion']; ?>"></label>


                                    <label>Solucionado Por :     <select size="1" name="SolucionadoPor"></label>
                <?php  if($row['SolucionadoPor'] != 1){?>     <option selected  value="<?php echo $row['SolucionadoPor']; ?>">   <?php echo $row['SolucionadoPor']; ?>  </option>   <?php  }
                else {
                    ?>    <option selected  value=" " </option>  <?php } ?>

                <option value="Landin">Landin</option>
                <option value="Mesa">Mesa</option>
                <option value="Crespo">Crespo</option>
                <option value="Guillermo">Guillermo</option>
                <option value="Lily">Lily</option>
                <option value="Yusniel">Yusniel</option>
                <option value="Reynier">Reynier</option>
                <option value="Ricardo">Ricardo</option>

                </select></label>

                <hr>
                                        <label>E C E T Fecha Devolucion:     <input  type="date" name="ECETFechaDevolucion" placeholder="E C E T Fecha Devolucion"   value="<?php echo $row['ECETFechaDevolucion']; ?>"></label>



                                            <label>Devuelto Por:      <select size="1" name="DevueltoPor">

                                                    <br/><br/>
                <?php  if($row['DevueltoPor'] != 1){?>     <option selected  value="<?php echo $row['DevueltoPor']; ?>">   <?php echo $row['DevueltoPor']; ?>  </option>   <?php  }
                else {
                    ?>    <option selected  value=" " </option>  <?php } ?>

                <option value="Landin">Landin</option>
                <option value="Mesa">Mesa</option>
                <option value="Crespo">Crespo</option>
                <option value="Guillermo">Guillermo</option>
                <option value="Lily">Lily</option>
                <option value="Yusniel">Yusniel</option>
                <option value="Reynier">Reynier</option>
                <option value="Ricardo">Ricardo</option>

                </select></label>


                                                <label>Equipo Apto:      <select size="1" name="EquipoApto">


	            <option selected value="<?php echo $row['EquipoApto']; ?>"><?php echo $row['EquipoApto']; ?></option>
	            <option value="Pendiente">Pendiente</option>
	            <option value="SI">SI</option>
	            <option value="NO">NO</option>


            </select></label>
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