<?php
session_start();
require_once "../Model/Acciones.model.php";

$iddelivery  = $_REQUEST['iddelivery'];
$idcliente   = $_REQUEST['idcliente'];
$idconductor = $_REQUEST['idconductor'];

$acciones = new Acciones();
echo $res = $acciones->AceptarDelivery($iddelivery, $idcliente, $idconductor,$_SESSION['movil']);

if($res == true){
	header("Location: ../public/indexchatd.php?iddelivery=".$iddelivery."&idcliente=".$idcliente);
}else{
	header("Location: ../public/newSolicitudes.php");
}
