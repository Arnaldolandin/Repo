<?php

  include("conexion.php");






 $No= $_POST["No"];
  $FechaSolicitud= $_POST["FechaSolicitud"];
  $Equipo= $_POST["Equipo"];
$N_S= $_POST["NS"];
$Cliente= $_POST["Cliente"];
$Provincia= $_POST["Provincia"];
$Solicitado_por= $_POST["Solicitadopor"];
$Fallo_Reportado= $_POST["FalloReportado"];
$Especialista= $_POST["Especialista"];
$Especialista2 = $_POST["Especialista2"];
$Fecha_de_Atencion= $_POST["FechadeAtencion"];
$ECET_F_solucion= $_POST["ECETFsolucion"];
$SolucionadoPor= $_POST["SolucionadoPor"];
$ECET_F_Devolucion= $_POST["ECETFDevolucion"];
$DevueltoPor= $_POST["DevueltoPor"];
$Equipo_Apto= $_POST["EquipoApto"];



        $query= "INSERT INTO reportesat VALUES (NULL,'$No','$FechaSolicitud','$Equipo','$N_S','$Cliente','$Provincia','$Solicitado_por','$Fallo_Reportado',
    '$Especialista  $Especialista2','$Fecha_de_Atencion','$ECET_F_solucion','$SolucionadoPor','$ECET_F_Devolucion','$DevueltoPor','$Equipo_Apto')";

     $resultado= $conexion->query($query) ;


if($resultado)
{

   header("location: MostrarReportes.php");
}
else
{
    echo "            noooooo";

}


?>