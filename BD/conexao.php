<?php

	//http://php.net/manual/pt_BR/book.pdo.php

	$servidor = "localhost";
	$banco= "bdhome";
	$usuario= "root";
	$senha= "";
	
	
	$pdo = new PDO("mysql:host=$servidor;dbname=$banco",$usuario,$senha,array(
		PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, 
		PDO::ATTR_PERSISTENT => false,
		PDO::ATTR_EMULATE_PREPARES => false,
		PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
	));

	$conn = mysqli_connect($servidor, $usuario, $senha, $banco);
	
?>