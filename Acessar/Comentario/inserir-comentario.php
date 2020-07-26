<?php
	
	require('../../BD/conexao.php');
	
	$nome = isset($_POST['txNome'])? $_POST['txNome'] :'';
	$email = isset($_POST['txEmail'])? $_POST['txEmail'] :'';
	$titulo = isset($_POST['txSubject'])? $_POST['txSubject'] :'';
	$comentario = isset($_POST['txComment'])? $_POST['txComment'] :'';
				
	try {
		//Linha Conexão	
		$stmt = $pdo->prepare("INSERT INTO tbcomentario VALUES(null,'$nome','$email','$titulo', '$comentario')");		
		$stmt->execute();				 				 
						
		echo("<script>
				window.alert('Obrigado pelo Comentario');
				window.location.href='../../';			
			   </script>"
			);	
	    }catch(PDOException $e) {
			echo 'Error: ' . $e->getMessage();
		}
?>

