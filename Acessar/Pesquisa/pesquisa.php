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

     <div class="container">
        <?php
          
            $x= $_POST['txPesquisa'];
            echo "<h1 style='padding-left: 35px;'>'$x' no Hola Cine</h1>";
            echo "<hr>";
            if(empty($x)){
                 echo "Nenhum arquivo foi encontrado";
                
            }else{
              $consulta = $pdo->query("SELECT * FROM tbfilmes where titFilme LIKE '%$x%'");
              
              while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) { 
                echo "<a href='/Arr_Site/Acessar/Especificação/pgFilmes.php?id={$linha['idFilmes']}'><img src='../../Filmes/{$linha['img']}' class='img-thumbnail images'></a>";
              }

              //Series em Alta
              $puxa = $pdo->query("SELECT * FROM tbseries where titFilme LIKE '%$x%'");

              while ($series = $puxa->fetch(PDO::FETCH_ASSOC)) {
                echo "<a href='/Arr_Site/Acessar/Especificação/pgFilmes.php?id={$series['idFilmes']}'><img src='../../Filmes/{$series['img']}' class='img-thumbnail images'></a>";   
              }
            }
            
          ?>
</div>

  <?php 
     for ($i=0; $i <=10 ; $i++) { 
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