<?php 
require_once "../Model/Conexion.php";

class Acciones
{
    private $conn;
    
    public function __construct()
	{
        $link = new Conexion();
		$this->conn = $link->Conectar();
		return $this->conn;
    }

    public function AceptarSolicitud($idpedirmovilidad, $idconductor, $idcliente, $movil)
    {
        $fecha = date('Y-m-d H:i:s');
        $sql ="UPDATE pedirmovilidad SET idconductor = '$idconductor', aceptado = 1, fecAceptado = '$fecha'  
        WHERE idpedirmovilidad = '$idpedirmovilidad' AND idcliente = '$idcliente' LIMIT 1;";
        
        $sql_chat = "INSERT INTO chat (nombre,mensaje,fecha,idcliente,idconductor,idpedidoMov,estado)
                     VALUES ('$movil','Servicio Aceptado','$fecha','$idcliente','$idconductor','$idpedirmovilidad',1);";
        $this->conn->query($sql);
        $this->conn->query($sql_chat);

    	echo "Petición Aceptada con exito";
		mysqli_close($this->conn);
    }

    public function AceptarDelivery($iddelivery, $idcliente, $idconductor, $movil)
    {
        $fecha = date('Y-m-d H:i:s');
               
        $sql ="UPDATE pedirdelivery SET idconductor = '".$idconductor."', aceptado = 1,fecAceptado = '$fecha' 
        WHERE iddelivery = $iddelivery AND idcliente = $idcliente LIMIT  1;";

        $sql_chat = "INSERT INTO chat (nombre,mensaje,fecha,idcliente,idconductor,idpedidoDeli,estado)
                     VALUES ('$movil','Servicio Aceptado','$fecha','$idcliente','$idconductor','$iddelivery',1);";


        $this->conn->query($sql);
        $this->conn->query($sql_chat);

        mysqli_close($this->conn);
    }

    public function AceptarReserva($idreserva, $idcliente, $idconductor,$movil)
    {
        $fecha = date('Y-m-d H:i:s');
               
        $sql ="UPDATE reservar SET idconductor = '".$idconductor."',aceptado = 1,fecAceptado = '$fecha' 
        WHERE idreserva = '$idreserva' AND idcliente = '$idcliente' LIMIT 1;";

        $sql_chat = "INSERT INTO chat (nombre,mensaje,fecha,idcliente,idconductor,idpedidoRes,estado)
                     VALUES ('$movil','Servicio Aceptado','$fecha','$idcliente','$idconductor','$idreserva',1);";

        $this->conn->query($sql);
        $this->conn->query($sql_chat);
        
        mysqli_close($this->conn);
    }

    public function CerrarServicio($idpedirmovilidad)
    {
        $fechaActual = date('Y-m-d H:i:s');
    	$sql = "UPDATE pedirmovilidad SET estado = '0', fecTermino = '$fechaActual' WHERE idpedirmovilidad = '$idpedirmovilidad'  LIMIT 1;";

    	if(!$this->conn->query($sql)){
    	   echo "Error al Cerrar el Servicio". mysqli_error($this->conn);
    	   exit();
    	}

		mysqli_close($this->conn);
    }

    public function CerrarDelivery($idpedidoDeli)
    {
        $fechaActual = date('Y-m-d H:i:s');
        $sql = "UPDATE pedirdelivery SET estado = '0', fecTermino = '$fechaActual' WHERE iddelivery = $idpedidoDeli LIMIT 1;";
        $sql2 = "UPDATE chat SET estado = 0 WHERE idpedidoDeli = " . $idpedidoDeli;
        if(!$this->conn->query($sql)){
            echo "Error al Cerrando Delivery". mysqli_error($this->conn);
            exit();
        }
        $this->conn->query($sql2);

        mysqli_close($this->conn);
    }

    public function CerrarReserva($idreserva)
    {
        $fechaActual = date('Y-m-d H:i:s');
        $sql = "UPDATE reservar SET estado = '0',fecTermino = '$fechaActual' WHERE idreserva = $idreserva LIMIT 1;";

        if(!$this->conn->query($sql)){
           echo "Error al Cerrar Reserva". mysqli_error($this->conn);
           exit();
        }
        
        mysqli_close($this->conn);
    }
}


