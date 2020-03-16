<?php 
require_once "../Model/Acciones.model.php";

$idreserva = $_REQUEST['idreserva'];

echo $idreserva;

$acciones = new Acciones();

$acciones->CerrarReserva($idreserva);


//header("Location: ../public/nocerradas.php");