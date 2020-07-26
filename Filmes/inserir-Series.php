<?php
	
	require('../conexao.php');

	$erro = 0;
	
	$nome = isset($_POST['txNome'])? $_POST['txNome'] :'';
    $ano = isset($_POST['txAno'])? $_POST['txAno'] :'';
    $diretor = isset($_POST['txDiretor'])? $_POST['txDiretor'] :'';
	$duracao = isset($_POST['txDuracao'])? $_POST['txDuracao'] :'';
    $sinopse = isset($_POST['txSinopse'])? $_POST['txSinopse'] :'';
    $temporadas = isset($_POST['nbTemporada'])? $_POST['nbTemporada'] :'';
	$classificacao = isset($_POST['txClassificacao'])? $_POST['txClassificacao'] :'';
	$categoria = isset($_POST['txCategoria'])? $_POST['txCategoria'] :'';
	$categoria2 = isset($_POST['txCategoria2'])? $_POST['txCategoria2'] :'';
	$categoria3 = isset($_POST['txCategoria3'])? $_POST['txCategoria3'] :'';
	
    if(isset($_FILES["txFileContent"])){
		$arqNome = $_FILES["txFileContent"]["name"];
		$arqTipo = $_FILES["txFileContent"]["type"];
		$arqTamanho = $_FILES["txFileContent"]["size"];
		$arqNomeTemp = $_FILES["txFileContent"]["tmp_name"];
		$erro = $_FILES["txFileContent"]["error"];
		
		if($erro==0){
			if(is_uploaded_file($arqNomeTemp)){
				if(move_uploaded_file($arqNomeTemp,"Series/". $arqNome)){
					echo "Sucesso!";

					try {
		//Linha Conexão	
						$stmt = $pdo->prepare("INSERT INTO tbseries VALUES(null,'$nome','$categoria','$ano', '$diretor', '$duracao', '$classificacao','$sinopse','Series/$arqNome','$categoria2','$temporadas')");		
						$stmt->execute();				 				 
						
						echo ("<script>
								window.alert('Series cadastrado com sucesso');
								window.location.href='../BD/form-CadastrarFilmesSeries.php';			
							   </script>"
							 );	
					}catch(PDOException $e) {
						echo 'Error: ' . $e->getMessage();
					}
				}

				else{
					$erro = "Falha ao mover o arquivo";
				}
			}
			else{
				$erro = "Erro no envio: arquivo não recebido com sucesso.";
			}
			
		}
		else{
			$erro = "Erro no envio: " . $erro;			
		}
		
	}
	else{
		$erro = "Arquivo enviado não encontrado";
	}
	
	if($erro!==0){
		echo $erro;
	}