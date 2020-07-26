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
  <?php
         $x= $_GET['id'];

          $conCategoria = $pdo->query("SELECT * FROM tbCategoria where idcategoria = $x");
          while ($linha2 = $conCategoria ->fetch(PDO::FETCH_ASSOC)) {   
             echo "<h1 style='padding-left: 35px;'>{$linha2['categoria']}</h1>";    
           }
          
          echo "<hr>";
          echo "<div class='container'>";

              $consulta = $pdo->query("SELECT f.titFilme,f.img, f.idFilmes, c.categoria,f.sinopse FROM `tbfilmes` f inner join tbcategoria c on f.idCategoria = c.idCategoria where f.idcategoria = $x or 
                                                                      f.idcategoria2 = $x or 
                                                                      f.idcategoria3 = $x Order By f.idFilmes Desc;");                                   
              $i = 0;
              while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) {
                if ($i>=15) {
                  break;
                }
                echo "<a href='/Arr_Site/Acessar/Especificação/pgFilmes.php?id={$linha['idFilmes']}'><img src='../../Filmes/{$linha['img']}' class='img-thumbnail images'></a>";
                
                $i += 1; 
              }   
         ?>
          
      </div>
   </div>

<br><br><br><br><br><br><br>
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
