<!DOCTYPE html>
<html>
<head>
  <title>Hola Cine</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../../Bootstrap/node_modules/bootstrap/compile/bootstrap.css">
    <link rel="stylesheet" href="../../Bootstrap/node_modules/bootstrap/compile/Style.css">
    <link href="https://unpkg.com/ionicons@4.5.1/dist/css/ionicons.min.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/x-png" href="../../IMG/favicon.png">
  </head>
<body>

    <?php 
    require('../../BD/conexao.php');
    include('../../Menu.php');
  ?>

<br><br>

<div class="container-fluid">
  <h1 style="padding-left: 35px;">Fale Conosco</h1>
  <hr>
	<div class="container">
		<form method="post" action="inserir-comentario.php">
			<div class="form-group">
        <?php $nome_user = $_SESSION['nome']; ?>
		    <label for="exampleFormControlInput1">Nome</label>
		    <input type="text" name="txNome" class="form-control" id="exampleFormControlInput1"
               value="<?php echo $nome_user; ?>">
			</div>

			  <div class="form-group">
          <?php $email_user = $_SESSION['email']; ?>       
			    <label for="exampleFormControlInput1">Email</label>
			    <input type="email" name="txEmail" class="form-control" id="exampleFormControlInput1" 
                 value="<?php echo $email_user; ?>">
			  </div>

        <div class="form-group">
          <label for="exampleFormControlInput1">Titulo</label>
          <input type="text" name="txSubject" class="form-control" id="exampleFormControlInput1">
        </div>

			   <div class="form-group">
          <label for="exampleFormControlInput1">Mensagem</label>
          <textarea class="form-control" name="txComment" id="validationTextarea" required> 
          </textarea>
        </div>

        <input type="submit" class="btn btn-success" value="Enviar Comentario">
		</form>
	</div>
</div>

  <?php 
     for ($i=0; $i <=3 ; $i++) { 
       echo "<br>";
     }
    include('../../footer.php');
  ?>
   

   <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../../Bootstrap/node_modules/jquery/dist/jquery.js"></script>
    <script src="../../Bootstrap/node_modules/popper.js/dist/umd/popper.js"></script>
    <script src="../../Bootstrap/node_modules/bootstrap/dist/js/bootstrap.js"></script>
    <script  src = "https://unpkg.com/ionicons@4.5.1/dist/ionicons.js"></script>
</body>
</html>
