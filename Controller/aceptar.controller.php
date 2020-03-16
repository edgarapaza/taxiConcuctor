<?php 
session_start();
require_once "../Model/Acciones.model.php";


$idpedirmovilidad = $_REQUEST['idpedirmovilidad'];
$idcliente        = $_REQUEST['idcliente'];
$idconductor      = $_REQUEST['idconductor'];
$movil            = $_REQUEST['movil'];

$acciones = new Acciones();
$res = $acciones->AceptarSolicitud($idpedirmovilidad, $idconductor, $idcliente,$movil);

if($res == true){
	header("Location: ../public/indexchat.php?idpedirmovilidad=". $idpedirmovilidad."&idcliente=".$idcliente);
}else{
	header("Location: ../public/newSolicitudes.php");
}

