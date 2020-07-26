<!DOCTYPE html>
<html>
<head>
  <title>Hola Cine</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../Bootstrap/node_modules/bootstrap/compile/bootstrap.css">
    <link rel="stylesheet" href="../Bootstrap/node_modules/bootstrap/compile/Style.css">
    <link href="https://unpkg.com/ionicons@4.5.1/dist/css/ionicons.min.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/x-png" href="../IMG/favicon.png">
  </head>
<body>

   <?php 
    require('conexao.php');
    include('../Menu.php');
  ?>
<br><br>
  <div class="container-fluid">
  <h1 style="padding-left: 35px;">Cadastrar</h1>
  <br>
  <div class="tabpanel">
	  <ul class="nav nav-tabs" role="tablist">
	    <li role="presentation" class="nav-item">
	      <a href="#adm" class="nav-link active" style="font-size:15pt;" aria-controls="adm" data-toggle="tab" role="tab">Filmes</a> 
	    </li>
	    <li role="presentation" class="nav-item">
	      <a href="#normalUser" class="nav-link" style="font-size:15pt;" aria-controls="normalUser" data-toggle="tab" role="tab">Series</a>
	    </li>
	  </ul>

      <div class="tab-content">
        <div role="tab-panel" class="tab-pane active container" id="adm">
        	<br>
			<form enctype="multipart/form-data" action="../Filmes/inserir-Filmes.php" method="post">
			  
			  <div class="form-group">
			    <label for="exampleFormControlInput1">Nome</label>
			    <input type="text" name="txNome" class="form-control" id="exampleFormControlInput1" required>
			  </div>

			  <div class="row">
			  	<div class="col">
			  	  <div class="form-group">
				    <label for="exampleFormControlInput1">Imagem</label>
				    <input type="file" name="txFileContent" class="form-control" id="exampleFormControlInput1">
				  </div>
			  	 </div>
			  	<div class="col">
			  	  <div class="form-group">
				    <label for="exampleFormControlInput1">Ano</label>
				    <input type="text" name="txAno" class="form-control" id="exampleFormControlInput1" required>
				  </div>
			  	</div>
			  	<div class="col">
			  	  <div class="form-group">
				    <label for="exampleFormControlInput1">Diretor</label>
				    <input type="text" name="txDiretor" class="form-control" id="exampleFormControlInput1" required>
				  </div>
			  	</div>
			  	<div class="col">
			  	  <div class="form-group">
				    <label for="exampleFormControlInput1">Duração</label>
				    <input type="text" name="txDuracao" class="form-control" id="exampleFormControlInput1" required>
				  </div>
			  	</div>
			  </div>

			  <div class="form-group">
			    <label for="exampleFormControlInput1">Sinopse</label>
			    <textarea class="form-control" name="txSinopse" id="validationTextarea" required> 
			      </textarea>
			  </div>

			  <div class="row">
			  	<div class="col">
			  	  <div class="form-group">
				    <label for="exampleFormControlInput1">Classificação</label>
				    <select class="custom-select" name="txClassificacao">
				      <option value="" >Escolha a Classificação</option>
				      <?php 
		                $consulta = $pdo->query("SELECT * FROM tbclassificacao;");   
		                while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) {
		                  echo"<option value='{$linha['idClassificacao']}'>{$linha['classificacao']}</option>";
		                }
		               ?>
					</select>
				  </div>
			  	 </div>
			  	<div class="col">
			  	   <div class="form-group">
				    <label for="exampleFormControlInput1">Categoria</label>
				    <select class="custom-select" name="txCategoria">
				      <option value="" >Escolha uma Categoria</option>
				      <?php 
		                $consulta = $pdo->query("SELECT * FROM tbcategoria;");   
		                while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) {
		                  echo"<option value='{$linha['idCategoria']}'>{$linha['categoria']}</option>";
		                }
		               ?>
					</select>
				  </div>
			  	</div>
			  	<div class="col">
			  	   <div class="form-group">
				    <label for="exampleFormControlInput1">Categoria2</label>
				     <select class="custom-select" name="txCategoria2">
				      <option value="" >Escolha uma Categoria</option>
				      <?php 
		                $consulta = $pdo->query("SELECT * FROM tbcategoria;");   
		                while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) {
		                  echo"<option value='{$linha['idCategoria']}'>{$linha['categoria']}</option>";
		                }
		               ?>
					</select>
				  </div>
			  	</div>
			  	<div class="col">
			  	  <div class="form-group">
				    <label for="exampleFormControlInput1">Categoria3</label>
				     <select class="custom-select" name="txCategoria3">
				      <option value="" >Escolha uma Categoria</option>
				      <?php 
		                $consulta = $pdo->query("SELECT * FROM tbcategoria;");   
		                while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) {
		                  echo"<option value='{$linha['idCategoria']}'>{$linha['categoria']}</option>";
		                }
		               ?>
					</select>
				  </div>
			  	</div>
		  </div>
        <br>
        <input type="submit" class="btn btn-success" value="Cadastrar" >
		</form>
	</div>

	<div role="tab-panel" class="tab-pane container" id="normalUser">
    <br>
    	<form enctype="multipart/form-data" action="../Filmes/inserir-Series.php" method="post">
		  
		  <div class="form-group">
		    <label for="exampleFormControlInput1">Nome</label>
		    <input type="text" name="txNome" class="form-control" id="exampleFormControlInput1" required>
		  </div>

		  <div class="row">
		  	<div class="col">
		  	  <div class="form-group">
			    <label for="exampleFormControlInput1">Imagem</label>
			    <input type="file" name="txFileContent" class="form-control" id="exampleFormControlInput1">
			  </div>
		  	 </div>
		  	<div class="col">
		  	  <div class="form-group">
			    <label for="exampleFormControlInput1">Ano</label>
			    <input type="text" name="txAno" class="form-control" id="exampleFormControlInput1" required>
			  </div>
		  	</div>
		  	<div class="col">
		  	  <div class="form-group">
			    <label for="exampleFormControlInput1">Diretor</label>
			    <input type="text" name="txDiretor" class="form-control" id="exampleFormControlInput1" required>
			  </div>
		  	</div>
		  	<div class="col">
		  	  <div class="form-group">
			    <label for="exampleFormControlInput1">Duração</label>
			    <input type="text" name="txDuracao" class="form-control" id="exampleFormControlInput1" required>
			  </div>
		  	</div>
		  	<div class="col">
		      <div class="form-group">
			    <label for="exampleFormControlInput1">Temporadas</label>
			    <input type="number" name="nbTemporada" class="form-control" id="exampleFormControlInput1">
			  </div>
		  	</div>
		  </div>

		  <div class="form-group">
		    <label for="exampleFormControlInput1">Sinopse</label>
		    <textarea class="form-control" name="txSinopse" id="validationTextarea" required> 
		      </textarea>
		  </div>

		  <div class="row">
		  	<div class="col">
		  	  <div class="form-group">
			    <label for="exampleFormControlInput1">Classificação</label>
			    <select class="custom-select" name="txClassificacao">
			      <option value="" >Escolha a Classificação</option>
			      <?php 
	                $consulta = $pdo->query("SELECT * FROM tbclassificacao;");   
	                while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) {
	                  echo"<option value='{$linha['idClassificacao']}'>{$linha['classificacao']}</option>";
	                }
	               ?>
				</select>
			  </div>
		  	 </div>
		  	<div class="col">
		  	   <div class="form-group">
			    <label for="exampleFormControlInput1">Categoria</label>
			    <select class="custom-select" name="txCategoria">
			      <option value="" >Escolha uma Categoria</option>
			      <?php 
	                $consulta = $pdo->query("SELECT * FROM tbcategoria;");   
	                while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) {
	                  echo"<option value='{$linha['idCategoria']}'>{$linha['categoria']}</option>";
	                }
	               ?>
				</select>
			  </div>
		  	</div>
		  	<div class="col">
		  	   <div class="form-group">
			    <label for="exampleFormControlInput1">Categoria2</label>
			     <select class="custom-select" name="txCategoria2">
			      <option value="" >Escolha uma Categoria</option>
			      <?php 
	                $consulta = $pdo->query("SELECT * FROM tbcategoria;");   
	                while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) {
	                  echo"<option value='{$linha['idCategoria']}'>{$linha['categoria']}</option>";
	                }
	               ?>
				</select>
			  </div>
		  	</div>
		  	<div class="col">
		  	  <div class="form-group">
			    <label for="exampleFormControlInput1">Categoria3</label>
			     <select class="custom-select" name="txCategoria3">
			      <option value="" >Escolha uma Categoria</option>
			      <?php 
	                $consulta = $pdo->query("SELECT * FROM tbcategoria;");   
	                while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) {
	                  echo"<option value='{$linha['idCategoria']}'>{$linha['categoria']}</option>";
	                }
	               ?>
				 </select>
			   </div>
		  	</div>
		  </div>
        <br>
        <input type="submit" class="btn btn-success" value="Cadastrar" >
		</form>
    </div>
   </div>
  </div>
 </div>

  <br><br>

  <?php 
    include('../footer.php');
  ?>

   <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../Bootstrap/node_modules/jquery/dist/jquery.js"></script>
    <script src="../Bootstrap/node_modules/popper.js/dist/umd/popper.js"></script>
    <script src="../Bootstrap/node_modules/bootstrap/dist/js/bootstrap.js"></script>
    <script  src = "https://unpkg.com/ionicons@4.5.1/dist/ionicons.js"></script>
</body>
</html>						
