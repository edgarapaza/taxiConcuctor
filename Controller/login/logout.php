<?php 
session_start();
unset($_SESSION['conductor']);
session_destroy();
header('Location: ../../public/index.html');