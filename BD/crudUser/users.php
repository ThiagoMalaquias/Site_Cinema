<?php
  require('../conexao.php'); 
    $sql = "SELECT * FROM tbusuarios where situacao = 'normal_user' Order By idUsuario Desc";
    $statement = $pdo->prepare($sql);
    $statement->execute();
    $normalUsers = $statement->fetchAll(PDO::FETCH_OBJ);

    $sql = "SELECT * FROM tbusuarios where situacao = 'admin' Order By idUsuario Desc";
    $statement = $pdo->prepare($sql);
    $statement->execute();
    $adminUsers = $statement->fetchAll(PDO::FETCH_OBJ);
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
	  <h1 style="padding-left: 35px;">Usuarios</h1>
	  <br>
		<div class="tabpanel">
      <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="nav-item">
          <a href="#adm" class="nav-link active" style="font-size:15pt;" aria-controls="adm" data-toggle="tab" role="tab">Administradores</a> 
        </li>
        <li role="presentation" class="nav-item">
          <a href="#normalUser" class="nav-link" style="font-size:15pt;" aria-controls="normalUser" data-toggle="tab" role="tab">Normal_User</a>
        </li>
      </ul>
      <div class="tab-content">
        <div role="tab-panel" class="tab-pane active container" id="adm">
          <br><br>
          <table class="table">
            <thead class="thead-dark">
              <tr>
                <th scope="col">Nome</th>
                <th scope="col">Email</th>
                <th scope="col">Situação</th>
                <th scope="col">Ação</th>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($adminUsers as $usuarios): ?>
              <tr>
                <th scope="row"><?= $usuarios->nome; ?></th>
                <td><?= $usuarios->email; ?></td>
                <td><?= $usuarios->situacao; ?></td>
                <td>
                  <a href="/Arr_Site/BD/crudUser/edit.php?id=<?= $usuarios->idUsuario; ?>" class="btn btn-warning">Edit</a>
                  <a href="/Arr_Site/BD/crudUser/delete.php?id=<?= $usuarios->idUsuario; ?>" class="btn btn-danger" 
                     onclick="return confirm('Que deseja excluir esse Usuario?')">Delete</a>
                </td>
              </tr>
              <?php endforeach; ?>
            </tbody>
          </table>
        </div>

         <div role="tab-panel" class="tab-pane container" id="normalUser">
          <br><br>
          <table class="table">
            <thead class="thead-dark">
              <tr>
                <th scope="col">Nome</th>
                <th scope="col">Email</th>
                <th scope="col">Situação</th>
                <th scope="col">Ação</th>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($normalUsers as $usuarios): ?>
              <tr>
                <th scope="row"><?= $usuarios->nome; ?></th>
                <td><?= $usuarios->email; ?></td>
                <td><?= $usuarios->situacao; ?></td>
                <td>
                  <a href="/Arr_Site/BD/crudUser/edit.php?id=<?= $usuarios->idUsuario; ?>" 
                     class="btn btn-warning">Edit</a>
                  <a href="/Arr_Site/BD/crudUser/delete.php?id=<?= $usuarios->idUsuario; ?>" class="btn btn-danger" 
                     onclick="return confirm('Que deseja excluir esse Usuario?')">Delete</a>
                </td>
              </tr>
              <?php endforeach; ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
	</div>

  <?php include('../../footer.php'); ?>

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="../../Bootstrap/node_modules/jquery/dist/jquery.js"></script>
  <script src="../../Bootstrap/node_modules/popper.js/dist/umd/popper.js"></script>
  <script src="../../Bootstrap/node_modules/bootstrap/dist/js/bootstrap.js"></script>
  <script  src = "https://unpkg.com/ionicons@4.5.1/dist/ionicons.js"></script>

</body>
</html>	

<script>
	var link = $(".nav-link", ".tab-pane");
	link.on("click", function(){
		link.removeClass("active");
		$(this).addClass("active");
	})
</script>					
