<?php 
  require('../../BD/conexao.php');
  $sql = "SELECT * FROM tbcomentario Order By idComentario Desc";
  $statement = $pdo->prepare($sql);
  $statement->execute();
  $Comentarios = $statement->fetchAll(PDO::FETCH_OBJ);
?>

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

  <?php include('../../Menu.php'); ?>

  <br><br>

  <div class="container-fluid">
    <h1 style="padding-left: 35px;">Comentarios</h1>
    <hr>
  	<div class="container">
      <?php foreach ($Comentarios as $comentario): ?>
        <h2><?= $comentario->nomeUsuario ?></h2>
        <p><b>Email:</b> <?= $comentario->emailUsuario ?></p>
        <p><b>Titulo:</b> <?= $comentario->temaComentario ?></p>
        <p><b>Comentario:</b> <?= $comentario->Comentario ?></p>
        <hr>
      <?php endforeach; ?>
  	</div>
  </div>

  <?php for ($i=0; $i <=3 ; $i++) { echo "<br>"; } include('../../footer.php');?>
      
   <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../../Bootstrap/node_modules/jquery/dist/jquery.js"></script>
    <script src="../../Bootstrap/node_modules/popper.js/dist/umd/popper.js"></script>
    <script src="../../Bootstrap/node_modules/bootstrap/dist/js/bootstrap.js"></script>
    <script  src = "https://unpkg.com/ionicons@4.5.1/dist/ionicons.js"></script>
</body>
</html>
