<?php
session_start();
if(!empty($_SESSION['conductor'])){
	
	$idconductor = $_REQUEST['idconductor'];
	
	require_once "../Model/ListaPendientes.model.php";
	
	require_once ("../Model/Conductor.model.php");
	$conductor = new Conductor();
	$dataConductor = $conductor->MostrarConductor($idconductor);

	$pendientes = new ListaPendientes();
	$datos      = $pendientes->MostrarLista();	
	
	include "header.php";
?>

	<link rel="stylesheet" type="text/css" href="css/solicitudes.css">


	<div class="container-fluid">
		<div class="row blue-grey darken-1">
			<div class="col l6 s12">
				<span class="white-text">Menu Conductor: <span class="green"><?php echo $dataConductor['nombre']; ?></span></span>
				<a href="menu.php?idconductor=<?php echo $idconductor;?>" class="btn orange">MENU</a>
			</div>
		</div>
	</div>

	<?php 
		while ($row = $datos->fetch_array()):
	?>
	<div class="content-pedidos" id="content<?php echo $row[0]; ?>">
		<div class="pedido_imagen">
			<div class="btn-floating btn-large waves-effect waves-light darken-2 blue">Mov</div>
			<span class="etiqueta"><?php echo $row[1]; ?></span>
		</div>
		<div class="pedidos_detalles">
			<span class="etiqueta">Direccion:</span>
			<p><?php echo $row[3]; ?></p>
			<span class="etiqueta">Referencia:</span>
			<p><?php echo $row[4]; ?></p>
			<span class="etiqueta">Tipo Unidad:</span>
			<p><?php echo $row[5]; ?></p>
			<p>
				<a href="#" onclick="Aceptar(<?php echo $row[0]; ?>,
											<?php echo $row[1]; ?>,
											'<?php echo $idconductor; ?>',
											'<?php echo $dataConductor['movil']; ?>');" class="darken-2 blue btn">Aceptar servicio </a>
			</p>
		</div>
	</div>

	<?php endwhile; ?>
	
	


	<script type="text/javascript">
		function Aceptar(idpedido, idcliente, idconductor,movil){

			let contenedor = "content"+idpedido;
			//
			$.ajax({
				url: '../Controller/aceptar.controller.php',
				type: 'post',
				data: {"idpedirmovilidad": idpedido,
					   "idcliente": idcliente,
					   "idconductor": idconductor,
				       "movil":movil
				},
				success: function (){
					M.toast({html: 'Cerrado correctamente!'})
					document.getElementById(contenedor).style.display = 'none';
				},
				error: function(){

				}
			});
			
			
		}
	</script>

<?php
}else{
	header("../public/index.html");
}
 ?>

