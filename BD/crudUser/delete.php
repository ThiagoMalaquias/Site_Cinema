<?php
	require('../conexao.php');
	$id = $_GET['id'];
	$sql = 'DELETE FROM people WHERE idUsuario=:id';
	$statement = $pdo->prepare($sql);
	if ($statement->execute([':id' => $id])) {
	  header("Location: /Arr_Site/BD/crudUser/users.php");
	}
?>