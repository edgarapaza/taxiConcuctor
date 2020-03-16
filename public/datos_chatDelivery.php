<?php
session_start();
include("../Model/chat.model.php");

$idpedidoDeli = $_SESSION['idpedidoDeli'];
$idcliente   = $_SESSION['idcliente'];


$chatboot = new ChatBoot();
$data = $chatboot->MostrarChatDelivery($_SESSION['conductor'], $idpedidoDeli, $idcliente);

function formatearfecha($fecha){
	return date('g:i a', strtotime($fecha));
}

while ($fila = $data->fetch_array(MYSQLI_ASSOC)):	    
?>
<div id="datos-chat">
	
	<span style="color: #1c62c4;"><?php echo $fila['nombre']; ?>: </span>
	<span style="color: #848484;"><?php echo $fila['mensaje']; ?></span>
	<span style="float: right;"><?php echo formatearfecha($fila['fecha']); ?></span>
	
</div>
<?php endwhile; ?>