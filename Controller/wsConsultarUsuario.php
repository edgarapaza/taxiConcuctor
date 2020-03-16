<?PHP
require_once "../Model/Conexion.php";

$conn = new Conexion();
$link = $conn->Conectar();

$json=array();

	if(isset($_GET["telefono"]) && isset($_GET["passwd"])){
		$telefono=$_GET["telefono"];
		$passwd=$_GET["passwd"];
				
		$sql="SELECT idcliente, nombres, apellidos FROM cliente WHERE telefono = '$telefono' and passwd = '$passwd';";
		$resultado=$link->query($sql);
			
		if($registro=$resultado->fetch_array()){
			$json['usuario'][]=$registro;
		//	echo $registro['id'].' - '.$registro['nombre'].' - '.$registro['profesion'].'<br/>';
		}else{
			$resultar["documento"]=0;
			$resultar["nombre"]='no registra';
			$resultar["profesion"]='no registra';
			$json['usuario'][]=$resultar;
		}
		
		mysqli_close($link);
		echo json_encode($json);
	}
	else{
		$resultar["success"]=0;
		$resultar["message"]='Ws no Retorna';
		$json['usuario'][]=$resultar;
		echo json_encode($json);
	}
?>