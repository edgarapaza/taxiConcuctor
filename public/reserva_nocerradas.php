<?php
session_start();
if (!empty($_SESSION['conductor'])) {

	$idconductor = $_REQUEST['idconductor'];
	
	require_once "../Model/Listados.model.php";
	$listas = new Listas();
	$data = $listas->SoloReservas($idconductor);
	
	require_once ("../Model/Conductor.model.php");
	$conductor = new Conductor();
	$dataConductor = $conductor->MostrarConductor($idconductor);

	include "header.php";

	$i = 1;

?>
	<link rel="stylesheet" type="text/css" href="css/materialize.min.css">
	<div id="mensaje"></div>

	<div class="container-fluid">
		<div class="row pink darken-1">
			<div class="col l6 s12">
				<span class="white-text">Menu Conductor: <span class="green"><?php echo $dataConductor['nombre']; ?></span></span>
				<a href="menu.php?idconductor=<?php echo $idconductor;?>" class="btn orange">MENU</a>
			</div>
		</div>
	</div>


	<div class="row">
		<div class="col s12">
			<h4>Reservas</h4>

			<table class="table darken-1">
				<thead>
					<tr>
						<th>Num.</th>
						<th>IdCliente</th>
						<th>Direccion y Pedido</th>
						<th>Opciones</th>
					</tr>
				</thead>
				<?php
				while ($row = $data->fetch_array(MYSQLI_ASSOC)) :
				?>
					<tr id="fila<?php echo $row['idreserva']; ?>">
						<td><?php echo $i; ?></td>
						<td>
							<?php
							$cliente = $listas->NombreCliente($row['idcliente']);
							//echo $cliente['nombres'];
							echo $cliente['apellidos'];
							//echo $cliente['telefono'];

							?>

						</td>

						<td>
							<input type="hidden" name="idreserva" id="idreserva" value="<?php echo $row['idreserva']; ?>">
							<?php printf("Hora: %s - %s (%s)", $row['hora'], $row['direccion'], $row['referencia']); ?>
						</td>
						<td>

							<a href="" title="" class="btn btn-lg pink">Llamar</a>
							<a href="indexchatr.php?idconductor=<?php echo $idconductor;?>&idpedidoRes=<?php echo $row['idreserva']; ?>&idcliente=<?php echo $row['idcliente']; ?>" title="chat" class="btn orange">Ver conservaciones</a>
							<a href="#" onclick="Revisar(<?php echo $row['idreserva']; ?>);" class="btn">Terminar servicio</a>

						</td>
					</tr>
				<?php $i++;
				endwhile; ?>
			</table>
		</div>
	</div>

	<script type="text/javascript">
		function Revisar(codigo) {


			var fila = "fila" + codigo;
			console.log(fila);
			//
			$.ajax({
				url: '../Controller/cerrarReserva.php',
				type: 'post',
				dataType: 'html',
				data: {
					idreserva: codigo
				},
				success: function(res) {
					
					M.toast({
						html: 'Servicio cerrado correctamente'
					});
					document.getElementById(fila).style.display = 'none';
				},
				error: function() {
					M.toast({
						html: 'Error al cerrar sesion'
					})
				}
			});

		}
	</script>

<?php


} else {
	header('Location: index.html');
}
?>