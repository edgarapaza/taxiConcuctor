<?php
session_start();
if(!empty($_SESSION['conductor'])){
	
	$idconductor = $_REQUEST['idconductor'];
	
	require_once "../Model/Listados.model.php";
	$listas = new Listas();
	$data = $listas->SoloPedidos($idconductor);
	
	
	require_once ("../Model/Conductor.model.php");
	$conductor = new Conductor();
	$dataConductor = $conductor->MostrarConductor($idconductor);
	
	include "header.php";

	$i=1;

?>
	
	<link rel="stylesheet" type="text/css" href="css/materialize.min.css">
	<div id="mensaje"></div>

	<div class="container-fluid">
		<div class="row blue-grey darken0">
			<div class="col l6 s12">
				<span class="white-text">Menu Conductor: <span class="green"><?php echo $dataConductor['nombre']; ?></span></span>
				<a href="menu.php?idconductor=<?php echo $idconductor;?>" class="btn orange">MENU</a>
			</div>
		</div>
	</div>

	<hr>

	<div class="row">
		<div class="col s12">
	      	<h4>Pedidos Movilidad</h4>
			<table class="table">
				<thead>
					<tr>
						<th>Num.</th>
						<th>IdCliente</th>
						<th>Direccion y Pedido</th>
						<th>Opciones</th>
					</tr>
				</thead>
				<?php 
					while ($row = $data->fetch_array(MYSQLI_ASSOC)):
				 ?>
				<tr id="fila<?php echo $row['idpedirmovilidad']; ?>">
					<td><?php echo $i;?></td>
					<td>
						<?php
						$cliente = $listas->NombreCliente($row['idcliente']);
						//echo $cliente['nombres'];
						echo $cliente['apellidos'];
						//echo $cliente['telefono'];
						
						?>
							
					</td>
					<td>
						<input type="hidden" name="idpedirmovilidad" id="idpedirmovilidad" value="<?php echo $row['idpedirmovilidad']; ?>">
						<?php printf("Direc: %s - %s (Tipo: %s)", $row['direccion'], $row['referencia'], $row['tipouni']); ?>
					</td>
					<td>
						<a href="" title="" class="btn btn-lg pink">Llamar</a>
						<a href="indexchat.php?idconductor=<?echo $idconductor;?>&idpedidoMov=<?php echo $row['idpedirmovilidad']; ?>&idcliente=<?php echo $row['idcliente']; ?>" title="chat" class="btn orange">Chat</a>
						<a href="#" onclick="Revisar(<?php echo $row['idpedirmovilidad']; ?>);" class="btn">Terminar Servicio</a>
					</td>
				</tr>
				<?php $i++; endwhile; ?>
			</table>
		</div>
	    
	</div>
	

	<script type="text/javascript">

		function Revisar(codigo){
			console.log(codigo);

			var filaB = "fila"+codigo;
			//
			$.ajax({
				url: '../Controller/cerrarServicio.php',
				type: 'post',
				dataType: 'html',
				data: {idpedir: codigo},
				success: function(res){
					
					M.toast({html: 'Servicio cerrado correctamente'});
					document.getElementById(filaB).style.display = 'none';
				},
				error: function(){
					M.toast({html: 'Error al cerrar sesion'})
				}
			});
			
		}
				
	</script>
	
	 
<?php 
	

}else{
	header('Location: index.html');
}
 ?>
