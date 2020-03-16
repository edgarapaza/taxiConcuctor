<?php
session_start();
if ($_SESSION['conductor']) {

	$idconductor = $_REQUEST['idconductor'];

	require_once "../Model/ListaPendientes.model.php";

	$pendientes = new ListaPendientes();
	$datos  = $pendientes->MostrarLista2();

	include "header.php";

?>
	<link rel="stylesheet" type="text/css" href="css/solicitudes.css">
	
	<div id="mensajes"></div>

	<link rel="stylesheet" href="css/solicitudes.css">
	<div class="container-fluid">
		<div class="row teal darken-2">
			<div class="col l6 s12">
				<span class="white-text">Menu Conductor: <span class="green"><?php echo $idconductor; ?></span></span>
				<a href="menu.php?idconductor=<?php echo $idconductor;?>" class="btn orange">MENU</a>
			</div>
		</div>
	</div>

	<hr>

	<?php
	while ($row = $datos->fetch_array()) {
	?>
		<div class="content-pedidos" id="content<?php echo $row[0]; ?>">
			<div class="pedido_imagen">
				<div class="btn-floating btn-large waves-effect waves-light green">D</div>
				<span class="etiqueta"><?php echo $row[1]; ?></span>
			</div>
			<div class="pedidos_detalles">
				<span class="etiqueta">Direccion:</span>
				<p><?php echo $row[3]; ?></p>
				<span class="etiqueta">Referencia:</span>
				<p><?php echo $row[4]; ?></p>
				<span class="etiqueta">Delivery:</span>
				<p><?php echo $row[5]; ?></p>
				<p>
					<a href="#" onclick="Aceptar(<?php echo $row[0]; ?>,
											<?php echo $row[1]; ?>,
											'<?php echo $idconductor; ?>');" class="darken-2 blue btn">Aceptar servicio </a>
				</p>
			</div>
		</div>

	<?php } ?>

	<script type="text/javascript">
		function Aceptar(iddelivery, idcliente, idconductor) {

			let contenedor = "content" + iddelivery;
			//
			$.ajax({
				url: '../Controller/aceptarDelivery.control.php',
				type: 'post',
				data: {
					"iddelivery": iddelivery,
					"idcliente": idcliente,
					"idconductor": idconductor
				},
				success: function(res) {
					document.getElementById("mensajes").innerHTML = res;
					M.toast({
						html: 'Cerrado correctamente!'
					})
					document.getElementById(contenedor).style.display = 'none';
				},
				error: function() {

				}
			});


		}
	</script>


<?php


} else {
	header('Location: index.html');
}
?>