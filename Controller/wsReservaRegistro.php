<?PHP
require_once "../Model/Conexion.php";

$conn = new Conexion();
$link = $conn->Conectar();

$json=array();

if(isset($_GET["idcliente"]) && isset($_GET["direccion"]) && isset($_GET["referencia"]) && isset($_GET['horareserva']))
{
	$idcliente   = $_GET['idcliente'];
	$direccion   = $_GET['direccion'];
	$referencia  = $_GET['referencia'];
	$otro        = $_GET['otro'];
	$horareserva = $_GET['horareserva'];
	$fecpedido   = date('Y-m-d h:i:s');

	echo $idcliente ."<br>";
	echo $idauto    ."<br>";
	echo $direccion ."<br>";
	echo $referencia."<br>";
	echo $otro      ."<br>"; 
	echo $horareserva."<br>";
	echo $fecpedido ."<br>";
	
			
	$sql = "INSERT INTO reservar VALUES (null,'$idcliente',0,'$direccion','$referencia','$horareserva','$otro','$fecpedido',1,null,0,0,null);";
			
	if(!$link->query($sql))
	{
       	echo("Error description: " . $link->error);
		exit();

		$resulta["idcliente"]     = 'Sin direccion';
		$resulta["direccion"]     = 'Sin direccion';
		$resulta["referencia"]    = 'No Registra';
		$json['reserva'][] = $resulta;
			
		echo json_encode($json);

    }else{
    	$sqlnotificaciones = "INSERT INTO notificaciones VALUES (NULL,'$idcliente','$direccion','$referencia','Res','$horareserva','$otro','$fecpedido',0);";
    	$link->query($sqlnotificaciones);

    	$consulta  = "SELECT r.idreserva,r.idcliente,r.idauto,r.direccion,r.referencia,r.hora,r.otro,r.fecPedido FROM reservar as r WHERE r.estado = TRUE AND r.idcliente=".$idcliente;
    	
		$resultado = $link->query($consulta);
				
		if($registro = $resultado->fetch_array()){
			$json['pedirMovilidad'][]=$registro;
		}
				
		mysqli_close($link);
		echo json_encode($json);	
		
    }
	
}else{
	$resulta["idcliente"]     = 'No hay datos';
	$resulta["direccion"]     = 'No hay datos';
	$resulta["referencia"]    = 'No hay datos';
	$json['reserva'][] = $resulta;
			
	echo json_encode($json);
}
