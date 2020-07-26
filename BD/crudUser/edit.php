<?php
  require('../conexao.php');
  $id = $_GET['id'];
  $sql = 'SELECT * FROM tbusuarios WHERE idUsuario=:id';
  $statement = $pdo->prepare($sql);
  $statement->execute([':id' => $id ]);
  $person = $statement->fetch(PDO::FETCH_OBJ);
  if (isset ($_POST['txUser'])  && isset($_POST['elEmail']) && isset($_POST['txSituacao']) ) {
    $nome = $_POST['txUser'];
    $email = $_POST['elEmail'];
    $situacao = $_POST['txSituacao'];
    $sql = 'UPDATE tbusuarios SET nome=:nome, email=:email, situacao=:situacao WHERE idUsuario=:id';
    $statement = $pdo->prepare($sql);
    if ($statement->execute([':nome' => $nome, ':email' => $email, ':situacao' => $situacao, ':id' => $id])) {
      header("Location: /Arr_Site/BD/crudUser/users.php");
    }
  }
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

    <?php   
    include('../../Menu.php');
  ?>

<br><br>

<div class="container-fluid">
  <h1 style="padding-left: 35px;">Update de Usuarios</h1>
  <hr>
  <?php if(!empty($message)): ?>
    <div class="alert alert-success">
      <?= $message; ?>
    </div>
  <?php endif; ?>
  <div class="container">
    <form method="post">
      <div class="form-group">
          <label for="exampleFormControlInput1">Nome</label>
          <input type="text" value="<?= $person->nome; ?>" name="txUser" class="form-control" id="exampleFormControlInput1">
      </div>

        <div class="form-group">
          <label for="exampleFormControlInput1">Email</label>
          <input type="email" value="<?= $person->email; ?>" name="elEmail" class="form-control" id="exampleFormControlInput1">
        </div>

        <div class="form-group">
          <label for="exampleFormControlInput1">Situação</label>
          <input type="text" value="<?= $person->situacao; ?>" name="txSituacao" class="form-control" id="exampleFormControlInput1" value="normal_user">
        </div>

        <input type="submit" class="btn btn-success" value="Update" >
    </form>
  </div>
</div>

  <?php 
     for ($i=0; $i <=6 ; $i++) { 
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
