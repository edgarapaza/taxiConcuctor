<?php 
require_once "../Model/Conexion.php";

class ListaPendientes
{
	private $conn;
    
    public function __construct()
	{
        $link = new Conexion();
		$this->conn = $link->Conectar();
		return $this->conn;
    }

    public function MostrarLista(){
    	$sql="SELECT idpedirmovilidad,idcliente,idconductor,direccion,referencia,tipouni,estado FROM pedirmovilidad WHERE aceptado = 0 AND estado <> 0;";
    	
    	if(!$res = $this->conn->query($sql)){
    		echo("Error description: " . $this->conn->error);
            exit();
        }


		return $res;
		mysqli_close($this->conn);
	}

    public function MostrarLista2(){
        $sql= "SELECT iddelivery, idcliente,idconductor, direccion, referencia, delivery, otro, fecPedido FROM pedirdelivery WHERE aceptado = 0 AND estado = 1;";
        
        if(!$res = $this->conn->query($sql)){
            echo("Error description: " . $this->conn->error);
            exit();
        }


        return $res;
        mysqli_close($this->conn);
    }

    public function MostrarLista3(){
        $sql="SELECT idreserva,idcliente,idconductor,direccion,referencia,hora,otro,fecPedido,estado FROM reservar WHERE aceptado = 0 AND estado = 1;";
        
        if(!$res = $this->conn->query($sql)){
            echo("Error description: " . $this->conn->error);
            exit();
        }


        return $res;
        mysqli_close($this->conn);
    }
	
}

/*$pendientes = new ListaPendientes();
$datos = $pendientes->MostrarLista();

while ($row = $datos->fetch_array()) {
    echo $row[0];
    echo $row[1];
    echo $row[2];
    echo $row[3];
    echo $row[4];
    echo $row[5];
}
?>