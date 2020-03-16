<?php
require '../Model/Conexion.php';

class Validacion
{
	private $conn;

    function __construct()
    {
        $conection = new Conexion();
        $this->conn= $conection->Conectar();
        return $this->conn;
    }

	function ValidacionCuenta($user, $pass){
		
		$sql = "SELECT idconductor, nivel FROM login WHERE username='$user' AND userpass = sha1('$pass') AND estado = 1 LIMIT 1;";
		
		if(!$rpta = $this->conn->query($sql)){
			echo("Error description: " . mysqli_error($this->conn));
			exit();
		}
        $data = $rpta->fetch_array(MYSQLI_ASSOC);
      
        return $data;
        mysqli_close($this->conn);
	}

	public function DatosConductor($idconductor){
		echo $idconductor;

		$sql = "SELECT idconductor,movil,nombres,apellidos,dni,telefono,email,direccion,numlicencia,fecnaci,foto FROM conductor WHERE idconductor = '$idconductor';";

		if(!$rpta = $this->conn->query($sql)){
			echo("Error description: " . mysqli_error($this->conn));
			exit();
		}
        $data = $rpta->fetch_array(MYSQLI_ASSOC);
      
        return $data;
        mysqli_close($this->conn);

	}
}
