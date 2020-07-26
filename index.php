
<?php 
  require('BD/conexao.php');
  $sql = "SELECT * FROM tbfilmes Where idcategoria = 11 or idcategoria2 = 11 or idcategoria3 = 11 Order By idFilmes Desc";
  $statement = $pdo->prepare($sql);
  $statement->execute();
  $filmes = $statement->fetchAll(PDO::FETCH_OBJ);

  $sql = "SELECT * FROM tbseries Order By idFilmes Desc";
  $statement = $pdo->prepare($sql);
  $statement->execute();
  $series = $statement->fetchAll(PDO::FETCH_OBJ);

 ?>
<!DOCTYPE html>
<html>
<head>
	<title>Hola Cine</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="Bootstrap/node_modules/bootstrap/compile/bootstrap.css">
    <link rel="stylesheet" href="Bootstrap/node_modules/bootstrap/compile/Style.css">
    <link href="https://unpkg.com/ionicons@4.5.1/dist/css/ionicons.min.css" rel="stylesheet">
    <link rel="shortcut icon" type="image/x-png" href="IMG/favicon.png">
  </head>
<body>

    <?php 
    include('Menu.php');
  ?>

  <!--CAROUSEL -->
  <div id="carouselSite" class="carousel slide carousel-fade" data-ride="carousel">
    <!-- IMAGENS CAROUSEL -->
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="IMG/slide-01.jpg" class="img-fluid d-block">
      </div>
      <?php 
        for ($i=2; $i<=12 ; $i++) { 
          if ($i < 10) {
            echo "<div class='carousel-item'>
                    <img src='IMG/slide-0$i.jpg' class='img-fluid d-block'>
                  </div>";
          }
          else{
            echo "<div class='carousel-item'>
                     <img src='IMG/slide-$i.jpg' class='img-fluid d-block'>
                  </div>";
          }
        }
       ?>
    </div>

    <a class="carousel-control-prev" href="#carouselSite" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon"></span>
      <span class="sr-only">Anterior</span>
    </a>

    <a class="carousel-control-next" href="#carouselSite" role="button" data-slide="next">
      <span class="carousel-control-next-icon"></span>
      <span class="sr-only">Anterior</span>
    </a>
  </div>

  <br><br>

  <div class="container-fluid">
    <h1 style="padding-left: 35px;">Filmes</h1>
    <hr>
    <div class="container">
      <?php foreach ($filmes as $filme): ?>
        <a href="/Arr_Site/Acessar/Especificação/pgFilmes.php?id=<?= $filme->idFilmes; ?>"><img src="Filmes/<?= $filme->img; ?>" class="img-thumbnail images"></a>
      <?php endforeach; ?>
  	</div>
    <br><br><br>
    <h1 style="padding-left: 35px;">Series em Alta</h1>
    <hr>
    <div class="container">
      <?php foreach ($series as $serie): ?>
        <a href="/Arr_Site/Acessar/Especificação/pgSeries.php?id=<?= $serie->idFilmes; ?>"><img src="Filmes/<?= $serie->img; ?>" class="img-thumbnail images"></a>
      <?php endforeach; ?>
    </div>
  </div>

    <br><br>

    <?php 
    include('footer.php');
  ?>
  

   <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="Bootstrap/node_modules/jquery/dist/jquery.js"></script>
    <script src="Bootstrap/node_modules/popper.js/dist/umd/popper.js"></script>
    <script src="Bootstrap/node_modules/bootstrap/dist/js/bootstrap.js"></script>
    <script  src = "https://unpkg.com/ionicons@4.5.1/dist/ionicons.js"></script>

</body>
</html>