<!DOCTYPE>
<html lang="br">
<head>
	<meta charset="UTF-8">
	<title>|| Las Peliculas ||</title>
    <link rel="stylesheet" type="text/css" href="Index-Style.css">
</head>
<body>
   <div class="es">
   	  <div class="log">
   	  	<ul>
   	  	 	<li><a class="a" href="">LOGIN</a></li>
   	  	 	<li><a class="a" href="">SING UP</a></li>
   	  	 </ul>  
   	  </div>
   </div>

   <header class="cab">
   	   <div class="tes">
   	   	    Las<br>
   	   	    <h3>Peliculas</h3>
   	   </div>  	   
   </header>

   <div class="menu"> 
	  <ul>
	    <li><a href="#Historia"> Home</a></li> 
	    <li><a href="#Equipamentos"> Contato </a></li>
	    <li><a href="Dicas.html"> Categorias</a></li>
	 </ul>
   </div>

<!--    <div id="imagens">
     <ul>
      <li><img src="IMG/Bac.jpg" alt="imagem01" title="imagem01" width="800" height="300" /> </li>
      <li><img src="IMG/back.jpg" alt="imagem01" title="imagem01" width="800" height="300" /></li>
      <li><img src="IMG/imagem03.jpg" alt="imagem03" title="imagem03" width="800" height="300" /></li>
      <li><img src="IMG/imagem04.jpg" alt="imagem03" title="imagem03" width="800" height="300" /></li>
    </ul>

   <div class="pag">
      <a href="#" id="ant">anterior</a>
        <span id="pager"></span>
        <a href="#" id="prox">próximo</a>
    </div>FIM DIV PAG

</div>FIM DIV IMAGENS
 -->

<div class="div-filmes">              
       <?php

        $home = ["Lançamentos","Series em Alta","Vintage","Classicos","Nacionais","Animes"];

         for ($f=0;$f<=5;$f++){
            echo " <fieldset class='lan'><legend>$home[$f]</legend><div class='scroll'>";             
               for ($i=1; $i <20 ; $i++) { 
                  if ($i<10) {
                     echo "<li><img class='filmes-img' src='Filmes/$home[$f]/0$i.jpg' alt='imagem01' title='imagem01'/></li>";
                  }else{
                     echo "<li><img class='filmes-img' src='Filmes/$home[$f]/$i.jpg' alt='imagem01' title='imagem01'/></li>";
                  }           
            };
            echo "</div> </fieldset>";
         }        
      ?>  
</div>

<footer>
Copyright &copy; 2018 - by Thiago, Jão Pedro, Vitoria <br/>
Facebook | Instagram
</footer>

</body>
</html>