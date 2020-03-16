<?php
session_start();
if ($_SESSION['conductor']) {

	$idconductor = $_REQUEST['idconductor'];

	require_once "../Model/ListaPendientes.model.php";

	$pendientes = new ListaPendientes();

	$datos = $pendientes->MostrarLista3();

	include "header.php";

?>
	<link rel="stylesheet" type="text/css" href="css/solicitudes.css">
	

	<div class="container-fluid">
		<div class="row pink darken-1">
			<div class="col l6 s12">
				<span class="white-text">Menu Conductor: <span class="green"><?php echo $idconductor; ?></span></span>
				<a href="menu.php?idconductor=<?php echo $idconductor;?>" class="btn orange">MENU</a>
			</div>
		</div>
	</div>

	<?php
	while ($row = $datos->fetch_array(MYSQLI_ASSOC)) :
	?>
		<div class="content-pedidos" id="content<?php echo $row['idreserva']; ?>">
			<div class="pedido_imagen">
				<div class="btn-floating btn-large waves-effect waves-light purple">R</div>
				<span class="etiqueta"><?php echo $row['idcliente']; ?></span>
			</div>
			<div class="pedidos_detalles">
				<span class="etiqueta">Direccion:</span>
				<p><?php echo $row['direccion']; ?></p>
				<span class="etiqueta">Hora de Reserva:</span>
				<p><?php echo $row['hora']; ?></p>
				<span class="etiqueta">Referencia:</span>
				<p><?php echo $row['referencia']; ?></p>
				<p>
					<a href="#" onclick="Aceptar(<?php echo $row['idreserva']; ?>,
											<?php echo $row['idcliente']; ?>,
											'<?php echo $idconductor; ?>');" class="darken-2 blue btn">Aceptar Reserva </a>
				</p>
			</div>
		</div>

	<?php endwhile; ?>

	<script type="text/javascript">
		function Aceptar(idreserva, idcliente, idconductor) {

			let contenedor = "content" + idreserva;
			//
			$.ajax({
				url: '../Controller/aceptarReserva.controller.php',
				type: 'post',
				data: {
					"idreserva": idreserva,
					"idcliente": idcliente,
					"idconductor": idconductor
				},
				success: function(res) {
					
					M.toast({html: 'Cerrado correctamente!'})
					document.getElementById(contenedor).style.display = 'none';
				},
				error: function() {

				}
			});


		}
	</script>

<?php


} else {
	header("../public/index.html");
}
?>