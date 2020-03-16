<?php
session_start();
	require "../Model/validacion.model.php";

	$validacion = new Validacion();
	
	$user = trim(strtolower($_REQUEST['usuario']));
	$pass = trim(strtolower($_REQUEST['passwd']));

	
	$data = $validacion->ValidacionCuenta($user,$pass);

	switch ($data['nivel']) {
		case 1:
			$_SESSION['administrator'] = $data['idconductor'];
			
	    	header("Location: ../admin/index.html");
			break;
			
		case 2:
			$_SESSION['conductor'] = $data['idconductor'];
			
	    	header("Location: ../public/menu.php?idconductor=".$data['idconductor']);
			break;
		
		default:
			header("Location: ../public/index.html?error=");
			break;
	}

?>