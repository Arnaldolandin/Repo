



<?php


require_once('usuario.php');
include("conexion.php");

session_start();

$id = $_REQUEST['id'];
$usuario=new Usuario();
$usuario=  $_SESSION['usuario'] ;
$nivel =  $usuario->getNivel();
$usuarioo =  $usuario->getNombre();


if (!isset($_SESSION['usuario'])) {
    header('Location: index.php');
}
else
{
    if($nivel == 1)
    {

        $query= "DELETE FROM reportesat WHERE ID='$id' ";


        $resultado= $conexion->query($query) ;


        if($resultado)
        {

            header("location: MostrarReportes.php");
        }
        else
        {
            echo "            noooooo";

        }


    }
    else
    {
        header("location: MostrarReportes.php");
    }


}





// $query= "UPDATE reportesat SET Nunm='$No',  FechaSolicitud = '$FechaSolicitud', Equipo = '$Equipo', NS='$NS',ClienteProv = '$ClienteProv', Solicitadopor= '$Solicitadopor',
// Falloreportado='$Falloreportado', Especialista='$Especialista', FechadeAtencion='$FechadeAtencion',  ECETFechasolucion='$ECETFechasolucion', ECETFechaDevolucion= '$ECETFechaDevolucion', EquipoApto='$EquipoApto' WHERE id='$id' ";

?>