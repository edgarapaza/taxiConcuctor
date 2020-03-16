<?php 
require_once "../Model/Acciones.model.php";

$iddelivery = $_REQUEST['iddelivery'];

//echo $iddelivery;

$acciones = new Acciones();

$acciones->CerrarDelivery($iddelivery);


//header("Location: ../public/nocerradas.php");