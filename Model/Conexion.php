<?php

class Conexion {

	public function Conectar() {

		include_once dirname(__FILE__) . '/Constants.php';
 
        //connecting to mysql database
        $mysqli = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
		
		#$mysqli = new mysqli("localhost","usuario", "archivo123$", "taxiseguro");
		$mysqli->set_charset("utf8");

		if ($mysqli->connect_errno) {
			echo "Error al contenctar a MySQL: (".$mysqli->connect_errno.") ".$mysqli->connect_error;
			exit();
		}

		#echo $mysqli->host_info. "Dentro de la clase";
		return $mysqli;
	}
}

?>
