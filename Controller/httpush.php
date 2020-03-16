<?php 
require_once "../Model/Conexion.php";
$link = new Conexion();
$conn = $link->Conectar();

set_time_limit(0);
$fecha_ac = isset($_POST['fecha']) ? $_POST['fecha']: 0;

$fecha_db = $row['fecha'];

while ($fecha_db <= $fecha_ac) {
    $query3 = "SELECT fecha FROM notificaciones ORDER BY fecha DESC LIMIT 1;";
    $res = $conn->query($query3);
    $ro = $res->fetch_array();

    usleep(100000);
    clearstatcache();
    $fecha_db = strtotime($ro['fecha']);
}

$sql = "SELECT * FROM notificaciones ORDER BY fecha DESC LIMIT 1;";

$datos = $conn->query($sql);
while ($fila = $datos->fetch_array()) {
	$ar["fecha"]      = strtotime($fila['fecha']);
	$ar["direccion"]  = strtotime($fila['direccion']);
	$ar["idcliente"]  = strtotime($fila['idcliente']);
	$ar["referencia"] = strtotime($fila['referencia']);
	$ar["tipo"]       = strtotime($fila['tipo']);
	$ar["delivery"]   = strtotime($fila['delivery']);
	$ar["otro"]       = strtotime($fila['otro']);
	$ar["estado"]     = strtotime($fila['estado']);
}

$dato_json = json_encode($ar);
echo $dato_json;

?>