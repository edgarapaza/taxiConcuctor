<?php
session_start();
if(!empty($_SESSION['conductor']))
{
	$idconductor  = $_REQUEST['idconductor'];
    $idpedidoDeli = $_REQUEST['idpedidoDeli'];
    $idcliente    = $_REQUEST['idcliente'];
    
	include_once("../Model/chat.model.php");
	
	require_once ("../Model/Conductor.model.php");
	$conductor = new Conductor();
	$dataConductor = $conductor->MostrarConductor($idconductor);
	

	$_SESSION['myidconductor'] = $idconductor;
    $_SESSION['myidpedidodeli'] = $idpedidoDeli;
    $_SESSION['myidcliente']   = $idcliente;

	$chatboot = new ChatBoot();

	if(isset($_POST['enviar']))
	{
		if(!empty($_POST['nombre']) && !empty($_POST['mensaje']))
		{

			$nombre = trim(ucfirst($_POST['nombre']));
			$mensaje = trim(ucfirst($_POST['mensaje']));
			
			$res = $chatboot->GuardarChatDelivery($nombre, $mensaje, $idconductor, $idpedidoDeli, $idcliente);

			if($res){
				echo "<embed src='beep.mp3' loop='false' hidden='true' autoplay='true'></embed>";
			}
		}
		
	}

	$data = $chatboot->MostrarChatDelivery($idconductor, $idpedidoDeli, $idcliente);

	function formatearfecha($fecha){
		return date('g:i a', strtotime($fecha));
	}
?>

<!DOCTYPE html>
<html lang="es-Es">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  	<title>Taxi Seguro</title>
  
	<!-- CSS  -->
	<link rel="stylesheet" type="text/css" href="css/style_chat.css">
	  
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<!-- Compiled and minified CSS -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
	
	    <!-- Compiled and minified JavaScript -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

	<script type="text/javascript">

		function ajax(){
      		var req = new XMLHttpRequest();

	      	req.onreadystatechange = function(){
		        if(req.readyState == 4 && req.status == 200){
		          document.getElementById('chat').innerHTML = req.responseText;
		        }
	      	}

	      	req.open('POST', 'datos_chatDelivery.php', true);
	      	req.send();
    	}

    	//refresh cada 1 segundo
    	setInterval(function(){ajax();}, 1000);
  	</script>
</head>
<body onload="ajax();">

	<div id="contenedor">
		<div class="row">
			<a href="menu_d.php?idconductor=<?php echo $idconductor;?>" title="#" class="btn blue" id="">Regresar al Menu</a>
			<a href="delivery_nocerradas.php?idconductor=<?php echo $idconductor;?>" title="#" class="btn red" id="">Lista de Conversaciones</a>
			Unidad: <?php echo $dataConductor['movil'];?>
			<br>
			<br>
	
			<div id="caja-chat">
				<div id="chat">
				</div>
			</div>
		</div>
		<form action="" method="post" id="chat-form">
			<button type="button" class="btn " id="min3">3 Minutos</button>
			<button type="button" class="btn " id="min5">5 Minutos</button>
			<button type="button" class="btn " id="min7">7 Minutos</button>
			<button type="button" class="btn " id="min10">10 Minutos</button>
			<button type="button" class="btn red" id="UnidadPunto" class="btn red">Unidad en el Punto</button>
			
			<input type="hidden" name="nombre" value="<?php echo $dataConductor['movil'];?>">
			<label for="">Mensaje:</label>
			<input type="text" name="mensaje" id="mensaje" value="" required="required">
			<button type="submit" name="enviar" class="btn">Enviar</button>
		</form>
	</div>
	<audio src='beep.mp3' preload='auto' autoplay='true' hidden="true" controls></audio>

  
  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
  <script src="js/acciones.js"></script>

  <script>
    $(document).ready(function(){
       $('.sidenav').sidenav();

       $("#min3").click(function(){
       		var msg = document.getElementById("mensaje");
       		msg.value = "Llegamos en 3 Minutos";
       });

       $("#min5").click(function(){
       		var msg = document.getElementById("mensaje");
       		msg.value = "Llegamos en 5 Minutos";
       });

       $("#min7").click(function(){
       		var msg = document.getElementById("mensaje");
       		msg.value = "Llegamos en 7 Minutos";
       });

       $("#min10").click(function(){
       		var msg = document.getElementById("mensaje");
       		msg.value = "Llegamos en 10 Minutos";
       });
       $("#UnidadPunto").click(function(){
       		var msg = document.getElementById("mensaje");
       		msg.value = "Unidad en el Punto";
       });
    });
  </script>

  </body>
</html>
<?php 
}else{
	header("Location: ../index.php");
 }?>
