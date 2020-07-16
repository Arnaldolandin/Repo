<?php

  include("conexion.php");
  $id = $_REQUEST['id'];

  $No = $_POST['No'];
  $FechaSolicitud = $_POST['FechaSolicitud'];
  $Equipo = $_POST['Equipo'];
  $NS = $_POST['NS'];
  $Cliente = $_POST['Cliente'];
  $Provincia = $_POST['Provincia'];
  $Solicitadopor = $_POST['Solicitadopor'];

  $Falloreportado = $_POST['Falloreportado'];


  $Especialista = $_POST['Especialista'];
$Especialista2 = $_POST["Especialista2"];
  $FechadeAtencion = $_POST['FechadeAtencion'];
$ECET_F_solucion= $_POST["ECETFechasolucion"];
$SolucionadoPor= $_POST["SolucionadoPor"];
$ECET_F_Devolucion= $_POST["ECETFechaDevolucion"];
$DevueltoPor= $_POST["DevueltoPor"];
$Equipo_Apto= $_POST["EquipoApto"];
//  $query= "UPDATE reportesat SET Falloreportado='$Falloreportado', especialistadeST='$Especialista', FechadeAtencion='$FechadeAtencion',  ECETFechasolucion='$ECETFechasolucion', ECETFechaDevolucion= '$ECETFechaDevolucion' WHERE id='$id' ";

 $query= "UPDATE reportesat SET Nunm='$No',  FechaSolicitud = '$FechaSolicitud', Equipo = '$Equipo', NS='$NS',Cliente = '$Cliente', Provincia = '$Provincia',Solicitadopor= '$Solicitadopor',
    Falloreportado='$Falloreportado', especialistadeST='$Especialista $Especialista2', FechadeAtencion='$FechadeAtencion',  ECETFechasolucion='$ECET_F_solucion',  SolucionadoPor='$SolucionadoPor', ECETFechaDevolucion= '$ECET_F_Devolucion', DevueltoPor='$DevueltoPor',
     EquipoApto='$Equipo_Apto' WHERE ID='$id' ";
// $query= "UPDATE reportesat SET   especialistadeST='$Especialista' WHERE id='$id' ";


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