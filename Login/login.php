<?php

$email = isset($_POST['txEmail'])? $_POST['txEmail'] :'';
$zsenha = $_POST['ssSenha'];


require('../BD/conexao.php');		

$consulta = $pdo->query("SELECT count(idUsuario),nome,situacao from tbusuarios
						where email = '$email' and senha='$zsenha';");							

$res = $consulta->fetch(PDO::FETCH_ASSOC);

	if($res['count(idUsuario)'] > 0){
		//"Login VÁLIDO"
		session_start();
		$_SESSION["email"]=$_POST['txEmail'];
		$_SESSION["senha"]=$_POST['ssSenha'];
		$_SESSION["nome"]=$res['nome'];
		$_SESSION["situacao"]=$res['situacao'];
        $x = $res['nome'];

 	    echo ("<script>window.alert('Bem Vindo $x');</script>");	
		echo ("<script>window.location.href='../';</script>" );		
	}
	else{
		//"Login INVÁLIDO"
		echo ("<script>window.alert('Email ou Senha esta errado');</script>");
		echo ("<script> window.location.href='../'; </script>");
	}
?>
