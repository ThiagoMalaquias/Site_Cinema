<?php
session_start();
require('../../BD/conexao.php');

$nome_user = $_SESSION['nome'];

if(!empty($_POST['estrela'])){
	$estrela = $_POST['estrela'];
	
	//Salvar no banco de dados
	$result_avaliacos = "INSERT INTO avaliacos (nome, qnt_estrela, created) 
                         VALUES ('$nome_user','$estrela', NOW())";
	$resultado_avaliacos = mysqli_query($conn, $result_avaliacos);
	
	if(mysqli_insert_id($conn)){
		echo("<script>
				window.alert('Obrigado pela Avaliação $nome_user');
				window.location.href='../../';			
			   </script>"
			);	
	}else{
		echo("<script>
				window.alert('Erro ao cadastrar a avaliação');
				window.location.href='../../';			
			   </script>"
			);	
	}
	
}else{
	echo("<script>
				window.alert('Necessário selecionar pelo menos 1 estrela');
				window.location.href='/Arr_Site/Acessar/Avaliação/avaliacao.php';			
			   </script>"
			);	
}