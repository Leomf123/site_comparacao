<!---
	Lista todas as categorias encontradas no banco de dados
	na div dada

	By Leonardo Macedo Freire, 2020
-->
<?php include 'conexao.php' ?>

 <ul>	

<?php   

    //Fazer as pesquisas no banco de dados
    $result=$con->query('SELECT nome, descricao, slug FROM 	categorias');
    $result->setFetchMode(PDO::FETCH_ASSOC);

    //Em $result eu tenho a lista de todas as categorias, agora é lista-lás

  foreach ($result as $row) {  	
  		# code...

	        print	 "<li>";
			print   "<div id='imagem_categoria'>";
			print    	" <img src='imagens/".$row['slug'].".jpg' alt='".$row['nome']."'> ";
			print       "</div>";				    
			print	    "<div id='dados_categoria'>";
			print	    	"<form action='subcategorias.php' method='get'>";
			print	    		"<button type='submit' name='categoria' value='".$row['slug']."'>";
			print	    	            "<h3>".$row['nome']."</h3>";
			print	            "</button>";
			print	        "</form>";
			print	    	"<h4>".$row['descricao']."</h4>";				    	
			print	    "</div>";          			  
		    print	"</li>";
  	
  }	
    
?>
</ul>