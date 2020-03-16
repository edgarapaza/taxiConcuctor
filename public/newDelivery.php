<?php
session_start();
if(!empty($_SESSION['conductor'])){
	
	$codConductor = $_SESSION['conductor'];
	
	require_once "../Model/ListaPendientes.model.php";

	$pendientes = new ListaPendientes();
	
	$datos = $pendientes->MostrarLista2();


?>

	<div class="header">
		<div class="title">
		
			<p class="subtitle">Lista de Delivery</p>
			<span><?php echo $codConductor; ?></span>
			<span>
				class="btn orange btn-large"
			</span>
		</div>
	</div>

	<?php 
		while ($row = $datos->fetch_array(MYSQLI_ASSOC)) {
	?>
	<div class="content-pedidos">
		<div class="pedido_imagen">
			<div class="movilidad">Mov</div>
			<span class="etiqueta"><?php echo $row[1]; ?></span>
		</div>
		<div class="pedidos_detalles">
			<span class="etiqueta">Direccion:</span>
			<p><?php echo $row['direccion']; ?></p>
			<span class="etiqueta">Pedido:</span>
			<p><?php echo $row['delivery']; ?></p>
			<span class="etiqueta">Referencia:</span>
			<p><?php echo $row['referencia']; ?></p>
			<p>
				<a href="../Control/aceptar.control.php?idpedir=<?php echo $row[0]; ?>&idauto=<?php echo $codConductor;?>" class="boton-principal">Aceptar servicio</a>
			</p>
		</div>
	</div>

	<?php } ?>
	
</body>
</html>	
<?php 
}else{
	header("../public/index.html");
}
?>

