<?php

$nome = isset($_POST['txUser'])? $_POST['txUser'] :'';
$email = isset($_POST['elEmail'])? $_POST['elEmail'] :'';
$zsenha = isset($_POST['txSenha'])? $_POST['txSenha'] :'';
$situacao = isset($_POST['txSituacao'])? $_POST['txSituacao'] :'';

require('../BD/conexao.php');		

$consulta = $pdo->query("SELECT count(idUsuario) from tbusuarios
						where email = '$email' or senha ='$zsenha';");	

$res = $consulta->fetch(PDO::FETCH_ASSOC);

	if($res['count(idUsuario)'] == 0){
		//Cadastro VÁLIDO
		try {
		        $stmt = $pdo->prepare("INSERT INTO tbusuarios VALUES(null,'$nome','$email','$zsenha','$situacao')");

				$stmt->execute();				 				 
				
				session_start();
				$_SESSION["email"]=$_POST['elEmail'];
				$_SESSION["senha"]=$_POST['txSenha'];
				$_SESSION["nome"]=$_POST['txUser'];
				$_SESSION["situacao"]=$_POST['txSituacao'];	
				echo ("<script>
						window.alert('Bem-Vindo $nome');
						window.location.href='../';			
					   </script>"
					  );
		}catch(PDOException $e) {
					echo 'Error: ' . $e->getMessage();
		}							
	}			
	else{
		//Cadastro INVÁLIDO
		echo ("<script>
			    window.alert('Email ou senha ja esta sendo utilizado');
			    window.location.href='/Arr_site/Login/Cadastre-se.php';	
			  </script>"
			 );

	}
?>