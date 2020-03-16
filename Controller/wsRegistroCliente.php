<?PHP
require_once "../Model/Conexion.php";

$conn = new Conexion();
$link = $conn->Conectar();

$json=array();

	if(isset($_GET["dni"]) && isset($_GET["nombres"]) && isset($_GET["apellidos"])
		&& isset($_GET["telefono"]) && isset($_GET["passwd"])
		){

		$dni       = $_GET['dni'];
		$nombres   = $_GET['nombres'];
		$apellidos = $_GET['apellidos'];
		$telefono  = $_GET['telefono'];
		$passwd    = $_GET['passwd'];
		$email     = $_GET['email'];
		$ciudad    = $_GET['ciudad'];

		//echo $dni       ;
		//echo $nombres   ;
		//echo $apellidos ;
		//echo $telefono  ;
		//echo $passwd    ;
		//echo $email     ;
		//echo $ciudad    ;

		$sqld = "SELECT * FROM cliente WHERE dni = '$dni' AND telefono = '$telefono';";
		

		$res1 = $link->query($sqld);
		$numero = $res1->num_rows;

		//echo $numero."<br>";

		if($numero > 0){
			//echo "Los datos existen";
			$resulta["codigoCliente"] = 0;
			$resulta["nombre"]    = 'Los datos ya existen';
			$resulta["apellidos"] = 'Los datos ya existen';
			$json['usuario'][]    = $resulta;
			
			echo json_encode($json);
		}else{
			// No existe los datos	
			//echo "El dato NO existe";
			$sql2 = "INSERT INTO cliente VALUES (null,'$nombres','$apellidos','$telefono','$email','$dni','$ciudad','$passwd');";

			
					
			if(!$link->query($sql2))
			{
				echo("Error description: " . $link->error);
  				exit();

				$resulta["codigoCliente"] = 0;
				$resulta["nombre"]    = 'No Registra';
				$resulta["apellidos"] = 'No Registra';
				$json['usuario'][]    = $resulta;
				
				echo json_encode($json);
			}else{
				
				$consulta  = "SELECT idcliente, nombres, apellidos FROM cliente WHERE dni =".$dni;

				echo "Consulta: ".$consulta;

				$resultado = $link->query($consulta);
				
				if($registro = $resultado->fetch_array())
				{

					$json['usuario'][]=$registro;

				}else{
					
					echo("Error description 2: " . $link->error);
  					exit();
  					
				}
					
				echo json_encode($json);

			}
					
		}
		
	}
	else{
			$resulta["documento"] = 0;
			$resulta["nombre"]    = 'WS No retorna';
			$resulta["apellidos"] = 'WS No retorna';
			$json['usuario'][]    = $resulta;
			
			echo json_encode($json);
		}

?>