<?php 
include "../Model/Conexion.php";
$link = new Conexion();
$conn = $link->Conectar();

$sql = "SELECT idnotificaciones,idcliente,direccion,referencia,tipo,delivery,otro,fecha,estado FROM notificaciones WHERE estado = 0;";

if(!$res = $conn->query($sql)){
	echo("Error description: " . $conn->error);
		exit();

		$resulta["idcliente"]     = 'Sin direccion';
		$resulta["direccion"]     = 'Sin direccion';
		$resulta["referencia"]    = 'No Registra';
		$json['usuario'][] = $res;
}else{
	while ($fila = $res->fetch_array(MYSQLI_ASSOC)) {
		$json['usuario'][]=$fila;
		/*
	    echo $fila['idcliente']."<br/>";
	    echo $fila['direccion']."<br/>";
	    echo $fila['referencia']."<br/>";
	    echo $fila['tipo']."<br/>";
	    echo $fila['delivery']."<br/>";
	    echo $fila['otro']."<br/>";
	    echo $fila['fecha']."<br/>";
	    echo $fila['estado']."<br/>";
	    echo "<br/>";
	    */
	}
	echo json_encode($json);
}
?>