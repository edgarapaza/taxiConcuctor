<?php 
session_start();
require_once "../Model/Acciones.model.php";

$idreserva   = $_REQUEST['idreserva'];
$idcliente   = $_REQUEST['idcliente'];
$idconductor = $_REQUEST['idconductor'];

$acciones = new Acciones();
$res = $acciones->AceptarReserva($idreserva, $idcliente, $idconductor,$_SESSION['movil']);

if($res == true){
	header("Location: ../public/indexchatr.php?idreserva=".$idreserva."&idcliente=".$idcliente);
}else{
	header("Location: ../public/newSolicitudes.php");
}
