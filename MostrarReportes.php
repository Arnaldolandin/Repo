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

require_once('usuario.php');
$usuario=new Usuario();
$usuario=  $_SESSION['usuario'] ;
$nivel =  $usuario->getNivel();
$usuarioo =  $usuario->getNombre();
//echo "      Hola:"  .$usuarioo . "  ".$nivel;
echo  $usuarioo   ;
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
<div>

    <form action="" method="POST">
   <label>Seleccionar Año: </label>

    <select size="1" name="Anno">

        <option selected value="2020">  2020  </option>
        <option value="2020">2020</option>
        <option value="2021">2021</option>
        <option value="2022">2022</option>
        <option value="2023">2023</option>
        <option value="2024">2024</option>
        <option value="2025">2025</option>
        <option value="*">Todos</option>

    </select>

    <label>   Seleccionar Mes: </label>
    <select size="1" name="Mes">

        <option selected value=""> Todos  </option>
        <option value="01">Enero</option>
        <option value="02">Febrero</option>
        <option value="03">Marzo</option>
        <option value="04">Abril</option>
        <option value="05">Mayo</option>
        <option value="06">Junio</option>
        <option value="07">Julio</option>
        <option value="08">Agosto</option>
        <option value="09">Septiembre</option>
        <option value="01">Octubre</option>
        <option value="11">Noviembre</option>
        <option value="12">Diciembre</option>

    </select>
        <label> Provincia: <select size="1" name="Provincia">

                <option selected value=""> Provincia  </option>
                <option value="Habana">Habana</option>
                <option value="Pinar del Rio">Pinar del Rio</option>
                <option value="Artemisa">Artemisa</option>
                <option value="Mayabeque">Mayabeque</option>
                <option value="Matanzas">Matanzas</option>
                <option value="Villa Clara">Villa Clara</option>
                <option value="Cienfuegos">Cienfuegos</option>
                <option value="Ciego de Avila">Ciego de Avila</option>
                <option value="Santispiritus">Santispiritus</option>
                <option value="Camagüey">Camagüey</option>
                <option value="Las Tunas">Las Tunas</option>
                <option value="Granma">Granma</option>
                <option value="Santiago de Cuba">Santiago de Cuba</option>
                <option value="Holguin">Holguin</option>
                <option value="Guantanamo">Guantanamo</option>
                <option value="Isla de la Juventud">Isla de la Juventud</option>

            </select></label>
        <label> <input type="checkbox" name="SoloPendientes" value="1">Solo Pendientes </label>
    <input type="submit" value="Aceptar"/>
    </form>
</div>
<br>


<table     class="Table" border="" >
    <thead>

        <tr>

            <th colspan = 18> Reportes </th>


        </tr>

    </thead>


        <tbody>
            <tr bgcolor="#6495ed">

                <td>No</td>
                <td>Fecha de Solicitud</td>
                <td>Equipo</td>
                <td>N/S</td>

                <td>Cliente</td>
	            <td>Provincia</td>
                <td>Solicitado por</td>
                <td>Fallo Reportado</td>
                <td>Especialista</td>
                <td>Fecha de Atencion</td>
                <td>E C E T F Solucion</td>
                <td>Solucionado por</td>
                <td>E C E T F Devolucion</td>
                <td>Devuelto por</td>
                <td>Equipo apto</td>
                <?php  if($nivel == 1){ echo  "<td>Modifica</td> " ;}  ?>
                <?php  if($nivel == 1){ echo  "<td>Asignar</td> " ;}  ?>
                <?php  if($nivel == 1){ echo  "<td>Eliminar</td> " ;}  ?>



            </tr>

            <?php
            include("conexion.php");



            $Meses_array = array(
                '','Enero',  'Febrero', 'Marzo',  'Abril',  'Mayo',  'Junio',  'Julio', 'Agosto','Septiembre','Octubre','Noviembre','Diciembre'

            );
            $CantidadTotalHabana = 0;
            $CantidadPasadosHabana = 0;
            $DiasH = 0;
            $DiasP = 0;
            $CantidadPasadosProvincia = 0;

             $Provincia = $_POST["Provincia"];

         //   $SoloPendientes = 0;
            $SoloPendientes = $_POST["SoloPendientes"];

            if(   $_POST["Anno"] == null)
              {
                  $FiltrarFecha = date("Y-m");
              }
              else
              {
                 $FiltrarFecha = $_POST["Anno"] . "-".$_POST["Mes"];
              }

          // $FiltrarFecha = $_POST["Anno"] . "-".$_POST["Mes"];

//echo  $FiltrarFecha;
            if($_POST["Mes"] =="" && $Provincia == "")
                {
                    $query= "SELECT * FROM reportesat " ;

                }
            else
            {
             $query= "SELECT * FROM reportesat WHERE  FechaSolicitud LIKE '%$FiltrarFecha%'  AND  Provincia LIKE '%$Provincia%'" ;
               // $query= "SELECT * FROM reportesat WHERE  ID LIKE '%$IDArray%' " ;
            }

$Flag = 0;
            $resultado= $conexion->query($query) ;
            while($row=$resultado->fetch_assoc() )
            {
                $Flag = 0;
                $fecha_entrada =  date('d-m-Y',$row['FechaSolicitud']);
              //  $fecha_entrada = strtotime(date($row['FechaSolicitud']));
                $EquipoApto =  $row['EquipoApto'];
                $Provincia =  $row['Provincia'];
    $Dias =  (( strtotime( $fecha_actual) -strtotime( $fecha_entrada)) / 86400);
                 //  echo $Dias. "   Dias .    "  ;
         //    echo   date("d-m-Y",strtotime($row['FechaSolicitud']));
           //  echo  date($fecha_entrada) ;
                         //echo $Dias ."jj   ".$fecha_actual;
                if( $Dias == 4 && $EquipoApto == "Pendiente" && $Provincia == "Habana")
                {
                    $Flag = 0;
                    if($SoloPendientes == 0)
                    {
                       echo  "<tr bgcolor='ECED75'> ";//amarillo
                    }
                }
				else if($Dias >= 4  && $EquipoApto == "Pendiente" && $Provincia == "Habana")
				{
					 echo  "<tr bgcolor= #ED867A> ";//rojo
                      $Flag = 1;


				}
				else if($Dias == 9 &&  $EquipoApto == "Pendiente" && $Provincia != "Habana")
                {
                    if($SoloPendientes == 0)
                    {
                        echo  "<tr bgcolor='ECED75'> ";//amarillo
                    }
                    $Flag = 0;

                }
				else if($Dias >= 9 && $EquipoApto == "Pendiente" && $Provincia != "Habana")
				{
					 echo  "<tr bgcolor= #ED867A> ";//rojo

                    $Flag = 1;

				}
				else if( $EquipoApto == "SI"  ||  $EquipoApto == "NO")
				{
                    if($SoloPendientes == 0)
                    {
					 echo  "<tr bgcolor= #38ED8E> ";//verde
                    }
                    $Flag = 0;
				}



                $Prom = new Calculos();


                $annno =  substr($row['Nunm'],1,2) ;
              $Mess_1D =  substr($row['Nunm'],3,1) ;
                    $Mess_2D =  substr($row['Nunm'],4,1) ;
                    if( $Mess_1D == '0')
                    {

                        $Acta_Mes =  $Meses_array[$Mess_2D];
                    }
                    else
                    {

                        $Acta_Mes =  $Meses_array[$Mess_1D.$Mess_2D] ;
                    }
                        //echo $Acta_Mes.'_20'.$annno;
                $Acta = "Actasss/".$Acta_Mes.'_20'.$annno.'/'.$row['Nunm'].".pdf";



    if($Flag == 1 && $SoloPendientes == 1)
    {
                ?>



                    <td><a href="<?php echo  $Acta ; ?>" >  <?php echo $row['Nunm']; ?></a>   </td>
                    <td><?php echo $Prom->SiNoHayFecha( $row['FechaSolicitud']); ?></td>

                    <td><?php echo $row['Equipo']; ?></td>
                    <td> <?php echo $row['NS']; ?> </td>

                <td><a href = "Hospitales/MostrarHospital_Filt.php?Hospital=<?php echo $row['Cliente']; ?>"><?php echo $row['Cliente']; ?></a></td>

                <td><?php echo $row['Provincia']; ?></td>
                    <td><?php echo $row['Solicitadopor']; ?></td>
                    <td><?php echo $row['Falloreportado']; ?></td>
                    <td  ><?php echo $row['especialistadeST']; ?></td>
                    <td><?php echo $Prom->SiNoHayFecha($row['FechadeAtencion']); ?></td>
                    <td><?php echo $Prom->SiNoHayFecha($row['ECETFechasolucion']); ?></td>
                    <td><?php echo $row['SolucionadoPor']; ?></td>
                    <td><?php echo $Prom->SiNoHayFecha( $row['ECETFechaDevolucion']); ?></td>
                    <td><?php echo $row['DevueltoPor']; ?></td>
                    <td><?php echo $row['EquipoApto']; ?></td>
                    <?php  if($nivel == 1){?>    <td><a href = "Modificar.php?id=<?php echo $row['ID']; ?>">Modificar</a></td>   <?php  } ?>
                    <?php  if($nivel == 1){?>    <td><a href = "AsignarReporte.php?id=<?php echo $row['ID']; ?>">Asignar </a></td>   <?php  } ?>
                    <?php  if($nivel == 1){?>    <td><a href = "Eliminar.php?id=<?php echo $row['ID']; ?>">Eliminar</a></td>   <?php  } ?>

            </tr>



 
                <?php
    }
    else if($SoloPendientes == 0 )
    {
        ?>



        <td><a href="<?php echo  $Acta ; ?>" >  <?php echo $row['Nunm']; ?></a>   </td>
        <td><?php echo $Prom->SiNoHayFecha( $row['FechaSolicitud']); ?></td>

        <td><?php echo $row['Equipo']; ?></td>
        <td> <?php echo $row['NS']; ?> </td>

        <td><a href = "Hospitales/MostrarHospital_Filt.php?Hospital=<?php echo $row['Cliente']; ?>"><?php echo $row['Cliente']; ?></a></td>

        <td><?php echo $row['Provincia']; ?></td>
        <td><?php echo $row['Solicitadopor']; ?></td>
        <td><?php echo $row['Falloreportado']; ?></td>
        <td  ><?php echo $row['especialistadeST']; ?></td>
        <td><?php echo $Prom->SiNoHayFecha($row['FechadeAtencion']); ?></td>
        <td><?php echo $Prom->SiNoHayFecha($row['ECETFechasolucion']); ?></td>
        <td><?php echo $row['SolucionadoPor']; ?></td>
        <td><?php echo $Prom->SiNoHayFecha( $row['ECETFechaDevolucion']); ?></td>
        <td><?php echo $row['DevueltoPor']; ?></td>
        <td><?php echo $row['EquipoApto']; ?></td>
        <?php  if($nivel == 1){?>    <td><a href = "Modificar.php?id=<?php echo $row['ID']; ?>">Modificar</a></td>   <?php  } ?>
        <?php  if($nivel == 1){?>    <td><a href = "AsignarReporte.php?id=<?php echo $row['ID']; ?>">Asignar </a></td>   <?php  } ?>
        <?php  if($nivel == 1){?>    <td><a href = "Eliminar.php?id=<?php echo $row['ID']; ?>">Eliminar</a></td>   <?php  } ?>

        </tr>




        <?php
    }
    else
    {
        echo "</tr>";
    }


                  	$fecha_entrada =  $row['FechaSolicitud'];
                     	$fecha_atencion =  $row['FechadeAtencion'];
                	$Dias =  (( strtotime( $fecha_atencion) -strtotime( $fecha_entrada)) / 86400);
	         if( $row['Provincia'] == "Habana" )
	              {
	                  $CantidadTotalHabana++;

		              if($Dias >= 0 && $Dias >= 5)
	                        {
	                              $CantidadPasadosHabana++;

                                    $DiasH = $DiasH + $Dias;

	                         }

	              }
               	else 	if($Dias >= 0 && $row['Provincia'] != "Habana" && $Dias >= 10)
	                   {
	                            $CantidadPasadosProvincia++;

                                 $DiasP = $DiasP + $Dias;
	                  }

           }
            $PorCientoHabana = 0 ;
           if($CantidadTotalHabana >= 0 ||  $CantidadTotalHabana >= 0)
           {
           }
           else
           {
               $PorCientoHabana = $CantidadPasadosHabana * 100 / $CantidadTotalHabana;
           }
          //  echo " Habana " . $DiasH . " Dias Pasados , " .$CantidadPasadosHabana . " reportes de un total de :" . $CantidadTotalHabana . " para un : " .$PorCientoHabana ."%";
            echo " Habana " .$CantidadPasadosHabana . " reportes pasados del tiempo de atencion de un total de :" . $CantidadTotalHabana . " para un : " .$PorCientoHabana ."%";





            //  echo " _________Provincia " . $DiasP . " - Pasado : " .$CantidadPasadosProvincia;
            ?>

            <br> <br>


        </tbody>

</table>

<?php
/*
require_once 'ReporteDOMPDF/dompdf/autoload.inc.php';
use Dompdf\Dompdf;
$dompdf = new DOMPDF();
$dompdf->loadHtml(ob_get_clean());
$dompdf->render();
$pdf = $dompdf->output();
$filename = "profesionales.pdf";
file_put_contents($filename, $pdf);
$dompdf->stream($filename);
*/
?>
<footer>

    <div >
        <h4>AT 2020</h4>
    </div>
</footer>
</body>
</html>