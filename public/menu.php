<?php
session_start();
if(!empty($_SESSION['conductor'])){

	$idconductor = $_REQUEST['idconductor'];
	$movil       = $_REQUEST['movil'];

	require_once ("../Model/Listados.model.php");
	require_once ("../Model/Conductor.model.php");
	require_once ("../Model/ListaPendientes.model.php");
	
	$conductor = new Conductor();
	$dataConductor = $conductor->MostrarConductor($idconductor);

	$listas = new Listas();
	$pendientes = new ListaPendientes();

	$datos1 = $pendientes->MostrarLista();
	$datos2 = $pendientes->MostrarLista2();
	$datos3 = $pendientes->MostrarLista3();

	$numPedidosMovilidad = $datos1->num_rows;
	$numDelivery         = $datos2->num_rows;
	$numReserva          = $datos3->num_rows;

	$data1 = $listas->SoloPedidos($idconductor);
	$data2 = $listas->SoloDelivery($idconductor);
	$data3 = $listas->SoloReservas($idconductor);

	$cantidad1 = $listas->SoloPedidosMovilidadCount($idconductor);
	$cantidad2 = $listas->SoloDeliveryCount($idconductor);
	$cantidad3 = $listas->SoloReservasCount($idconductor);


	include "header.php";
?>
 
<script type="text/javascript">
	setTimeout("document.location = document.location", 20000)
</script>

<style>
    .grande{
        font-size: 2em;
    }
</style>

<div class="container">
	<div class="row">
		<div class="col s9">
			<h4>Menu Conductor: <?php echo $movil;  echo $dataConductor['nombre'];?></h4>
			
		</div>

		<div class="col s3">
			<img src="<?php echo $dataConductor['foto'];?>" alt="Foto" width="60">
		</div>
		
	</div>

	<div class="col s12">
		
		<a href="menu.php?idconductor=<?php echo $idconductor;?>" class="btn orange">MENU</a>
		<a href="../Controller/logout.php" class="btn red">Salir</a>
		
		<div id="contenido"></div>
	
		
		<div class="card blue-grey darken-1">
			<h4 class="white-text">Pedidos de MOVILIDAD</h4>
			<a href="newSolicitudes.php?idconductor=<?php echo $idconductor;?>" title="" type="button" class="btn btn-lg blue darken-4">
			    <span class="grande"><?php echo $numPedidosMovilidad; ?> </span>
				Solicitudes no atendidas</a>
			<a href="nocerradas.php?idconductor=<?php echo $idconductor;?>" title="" type="button" class="btn btn-lg blue darken-4">
			<span class="grande"><?php echo $cantidad1[0]; ?></span>
			
			 en curso</a>
			
		</div>

		<div class="card teal darken-2">
			<h4 class="white-text">Pedidos de DELIVERY</h4>
			<a href="newPedidos.php?idconductor=<?php echo $idconductor;?>" title="" type="button" class="btn btn-lg orange">
			    <span class="grande"><?php echo $numDelivery; ?> </span>
				
				Pedidos Delivery
			</a>
			<a href="delivery_nocerradas.php?idconductor=<?php echo $idconductor;?>" title="" type="button" class="btn btn-lg orange">
			<span class="grande"><?php echo $cantidad2[0]; ?></span>
			
			en curso</a>
			
		</div>
		<div class="card pink darken-3">
			<h4 class="white-text">RESERVA de Movilidad</h4>
			<a href="newReserva.php?idconductor=<?php echo $idconductor;?>" title="" type="button" class="btn btn-lg">
			    <span class="grande"><?php echo $numReserva; ?></span>
				 Reservas de Vehiculos
			</a>
			<a href="reserva_nocerradas.php?idconductor=<?php echo $idconductor;?>" title="" type="button" class="btn btn-lg">
				<span class="grande"><?php echo $cantidad3[0]; ?> </span>
				
				en curso</a>
			
		</div>

	</div>
</div>
	

<?php

}else{
	header("Location: ../index.html");
}
?>