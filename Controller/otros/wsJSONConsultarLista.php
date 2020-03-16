<?php
require_once "./Model/Conexion.php";
$conn = new Conexion();
$link = $conn->Conectar();

$json=array();
				
		$sql="SELECT idpedir,idcliente,idauto,direccion,referencia,tipouni,estado FROM taxiseguro.pedirmovilidad WHERE idauto = 0";
		
		$resultado= $link->query($sql);

		
		while($registro=$resultado->fetch_array()){
			$json['usuario'][]=$registro;
			//echo $registro['id'].' - '.$registro['nombre'].'<br/>';
		}
		mysqli_close($conexion);
		echo json_encode($json);
?>

