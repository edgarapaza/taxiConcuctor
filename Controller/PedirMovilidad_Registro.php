<?PHP
require_once "./Model/Conexion.php";

$conn = new Conexion();
$link = $conn->Conectar();

$json=array();

if(isset($_GET["direccion"]) && isset($_GET["referencia"]) && isset($_GET["otros"]) && isset($_GET["tipounidad"]) && isset($_GET['codigo']))
{
	$idcliente  = $_GET['codigo'];
	$direccion  = $_GET['direccion'];
	$referencia = $_GET['referencia'];
	$otro       = $_GET['otros'];
	$tipouni    = $_GET['tipounidad'];
	$fecpedido  = date('Y-m-d h:i:s');

	echo $idcliente ."<br>";
	echo $direccion ."<br>";
	echo $referencia."<br>";
	echo $otro      ."<br>"; 
	echo $tipouni 	."<br>";
	echo $fecpedido ."<br>";
	
			
	$sql = "INSERT INTO taxiseguro.pedirmovilidad VALUES (NULL,$idcliente,0,'$direccion','$referencia','$otro','$tipouni','$fecpedido',true,'$fecpedido',0);";
			
	if(!$res=$link->query($sql))
	{
       	
		$resulta["direccion"]     = 'Sin direccion';
		$resulta["referencia"]    = 'No Registra';
		$json['pedirMovilidad'][] = $resulta;
			
		echo json_encode($json);

    }else{

    	$consulta  = "SELECT direccion, referencia, tipouni FROM pedirmovilidad WHERE estado = true AND idcliente = " . $idcliente;
    	
		$resultado = $link->query($consulta);
				
		if($registro = $resultado->fetch_array()){
			$json['pedirMovilidad'][]=$registro;
		}
				
		mysqli_close($conn);
		echo json_encode($json);	
		
    }
	
}else{
	$resulta["direccion"]     = 'No hay datos';
	$resulta["referencia"]    = 'No hay datos';
	$json['pedirMovilidad'][] = $resulta;
			
	echo json_encode($json);
}
