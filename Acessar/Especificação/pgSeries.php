<?php 
 require('../../BD/conexao.php');
 $x= $_GET['id'];
  
  $statement1 = $pdo->prepare("SELECT * FROM tbseries where idFilmes = $x;");
  $statement2 = $pdo->prepare("SELECT c.categoria FROM `tbfilmes` f inner join tbcategoria  c
                               on f.idcategoria = c.idCategoria where idFilmes=$x"); 
  $statement3 = $pdo->prepare("SELECT c.categoria FROM `tbfilmes` f inner join tbcategoria  c
                               on f.idcategoria2 = c.idCategoria where idFilmes=$x"); 
  $statement4 = $pdo->prepare("SELECT c.categoria FROM `tbfilmes` f inner join tbcategoria  c
                               on f.idcategoria3 = c.idCategoria where idFilmes=$x");  
  $statement5 = $pdo->prepare("SELECT c.classificacao FROM `tbfilmes` f inner join tbclassificacao  c
                               on f.idClassificacao = c.idClassificacao where idFilmes=$x ");     
  
  $statement1->execute();
  $statement2->execute();
  $statement3->execute();
  $statement4->execute();
  $statement5->execute();

  $dadosFilmes = $statement1->fetch(PDO::FETCH_OBJ);
  $categoria1 = $statement2->fetch(PDO::FETCH_OBJ);
  $categoria2 = $statement3->fetch(PDO::FETCH_OBJ);
  $categoria3 = $statement4->fetch(PDO::FETCH_OBJ);
  $classificacao = $statement5->fetch(PDO::FETCH_OBJ);

  
  if (!isset($categoria2->categoria)){
    $cat2 = " ";
  }else{
    $cat2 = $categoria2->categoria;
  }

  if (!isset($categoria3->categoria)){
    $cat3 = " ";
  }else{
    $cat3 = $categoria3->categoria;
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

    <?php include('../../Menu.php'); ?>

<br><br>

 <div class="container-fluid">
    <h1 style="padding-left: 35px;"><?= $dadosFilmes->titFilme; ?></h1>
    <hr>
    <div class="container">
      <div class="row">
        <div class="col">
          <img class="float-right" src="../../Filmes/<?= $dadosFilmes->img; ?>"> 
        </div>
        <div class="col">
           <p><b>Ano de lançamento:</b><?= $dadosFilmes->ano; ?> 
           <p><b>Gêneros:</b> <?= $categoria1->categoria; ?> <?= $cat2;?> <?= $cat3; ?> <br>  
           <p><b>Duração:</b> <?= $dadosFilmes->duracao; ?> min<br>
           <p><b>Criador(es):</b> <?= $dadosFilmes->diretor; ?> <br>
           <p><b>Temporada(s):</b> <?= $dadosFilmes->qtdTemporadas; ?> <br>
           <p><b>Faixa etária:</b> <?= $classificacao->classificacao;  ?><br><br>
           <p><a href="https://www.youtube.com/results?search_query=<?= $dadosFilmes->titFilme; ?>" class="btn btn-info" role="button">Assista</a>
          </div>
        </div>
      <hr>
      <p><b>Sinopse:</b> <?= $dadosFilmes->sinopse; ?> 
      </div>
    </div> 
  </div>  
<br><br>

  <?php 
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