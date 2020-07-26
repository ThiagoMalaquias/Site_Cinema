<?php session_start(); ?>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="/Arr_Site">Hola Cine</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" id="navDrop">
            Categorias
          </a>
          <div class="dropdown-menu">
            <?php 
                $consulta = $pdo->query("SELECT * FROM tbcategoria;");
                      
                while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) {
                  if ($linha['idCategoria'] > 9) {
                    break;
                  }
                  echo"<a class='dropdown-item'style='cursor: pointer;' href='/Arr_Site/Acessar/Categorias/pgCategorias.php?id={$linha['idCategoria']}'>{$linha['categoria']} </a>";
                }
            ?>
        </div>
      </li>
      <?php 
            $consulta = $pdo->query("SELECT * FROM tbcategoria;");
                  
            while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) {
              if ($linha['idCategoria'] > 9 && $linha['idCategoria'] != 11 && $linha['idCategoria'] < 17 ) {
                echo "<li class='nav-item active'>"; 
                echo  "<a class='nav-link' href='/Arr_Site/Acessar/Categorias/pgCategorias.php?id={$linha['idCategoria']}'>{$linha['categoria']} <span     class='sr-only'>(current)</span></a>";
                echo "</li>";
              }
            }
        ?>
      </ul>
      <form class="form-inline my-2 my-lg-0" method="post" action="/Arr_Site/Acessar/Pesquisa/pesquisa.php">
        <input class="form-control mr-sm-2" name="txPesquisa" type="search" placeholder="Buscar" aria-label="Search" required>
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
      </form>
      <?php 
          if (!isset($_SESSION["email"]) || !isset($_SESSION["senha"])) {
            echo "<a href='' data-toggle='modal' data-target='#userModal'>
                     <ion-icon name='contact' id='user'></ion-icon>
                  </a>";
          }
          else{
            $situacao_user = $_SESSION['situacao'];
            if ($situacao_user == "admin") {
              echo "<a href='' data-toggle='modal' data-target='#adminModal'>
                      <ion-icon name='contact' id='user'></ion-icon>
                    </a>";
            }
            else{
               echo "<a href='' data-toggle='modal' data-target='#bemModal'>
                      <ion-icon name='contact' id='user'></ion-icon>
                    </a>";
            }
          }
       ?>
           
    </div>
  </nav>

  <!-- Modal Cadastre-se -->
<div class="modal fade" id="userModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Entre</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form method="post" action="/Arr_Site/Login/login.php">
        <div class="modal-body">
          <div class="input-group mb-3">
            <div class="input-group-prepend">
              <span class="input-group-text" id="basic-addon1"><ion-icon name="mail"></ion-icon></span>
            </div>
            <input type="email" name="txEmail" class="form-control" placeholder="Email" aria-label="Username" aria-describedby="basic-addon1" required>
          </div>
          <div class="input-group mb-3">
            <div class="input-group-prepend">
              <span class="input-group-text" id="basic-addon1"><ion-icon name="keypad"></ion-icon></span>
            </div>
            <input type="Password" class="form-control" name="ssSenha" placeholder="Senha" aria-label="Username" aria-describedby="basic-addon1" required>
          </div>
        </div>
        <div class="modal-footer">
        <input type="submit" class="btn btn-secondary" placeholder="Entre" >
      </form>
        <a href="/Arr_Site/Login/Cadastre-se.php" role="button" class="btn btn-primary">Cadastre-se</a>
      </div>
    </div>
  </div>
</div>

  <!-- Modal Bem Vindo -->
<div class="modal fade" id="bemModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <?php 
          $nome_user = $_SESSION['nome'];
          echo"<h5 class='modal-title' id='exampleModalLabel'>$nome_user</h5>";
        ?>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <a href="/Arr_Site/Acessar/Avaliação/avaliacao.php" class="btn btn-warning btn-lg btn-block">Avalie nosso site</a>
       <a href="/Arr_Site/Acessar/Comentario/Comentario.php" class="btn btn-info btn-lg btn-block">Fale Conosco</a>
      </div>
      <div class="modal-footer">
        <a href="/Arr_Site/Login/logout.php" role="button" class="btn btn-primary">Sair</a>
      </div>
    </div>
  </div>
</div>

  <!-- Modal Administrador -->
<div class="modal fade" id="adminModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <?php 
          $nome_user = $_SESSION['nome'];
          echo"<h5 class='modal-title' id='exampleModalLabel'>Administrador $nome_user</h5>";
        ?>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <a href="/Arr_Site/BD/form-CadastrarFilmesSeries.php" class="btn btn-info btn-lg btn-block">
          Cadastrar (Filmes/Series)
        </a>
        <a href="/Arr_Site/Acessar/Comentario/select-comentario.php" 
           class="btn btn-info btn-lg btn-block">
           Comentarios
        </a>
        <a href="/Arr_Site/BD/crudUser/users.php" class="btn btn-info btn-lg btn-block">
           Users
        </a>
      </div>
      <div class="modal-footer">
        <a href="/Arr_Site/Login/logout.php" role="button" class="btn btn-primary">Sair</a>
      </div>
    </div>
  </div>
</div>