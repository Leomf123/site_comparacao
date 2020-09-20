<!---
	Lista todas as subcategorias encontradas no banco de dados
	na div dada

	By Leonardo Macedo Freire, 2020
-->
<?php include 'conexao.php' ?>

 <ul>	

<?php   

    //Recebe os dados da pagina do form-----------------------------------------
    //categoria aqui é o name do button que retorna o value com o nome da categoria ou subcategoria
    $slug=filter_input(INPUT_GET, "categoria");
        
 
    //Pego a chave primaria da categoria ou subcategoria
    //Essa função retorna o indice se a categoria constar em categorias
    // e -1 se não
    //$con vem do arquivo de conexao.php
   $id=pegar_chave_primaria("categorias",$slug,$con);

   //Se id for -1 provavelemente temos que olhar na tabela subcategorias
   if($id==(-1)){

   	$id=pegar_chave_primaria("subcategorias",$slug,$con);

   	 //Fazer as pesquisas no banco de dados em subcategorias pela chave estrangeira e que tenha uma subcategoria como pai
    $result=$con->query('SELECT ID, nome, descricao, slug FROM 	subcategorias WHERE subcategorias.chave_estrangeira='.$id.' && subcategorias.pai_subcategoria=true');
    $result->setFetchMode(PDO::FETCH_ASSOC);


   }
   else{
   	 //Fazer as pesquisas no banco de dados em subcategorias pela chave estrangeira e que tenha uma categoria como pai
    $result=$con->query('SELECT ID, nome, descricao, slug FROM 	subcategorias WHERE subcategorias.chave_estrangeira='.$id.' && subcategorias.pai_subcategoria=false');
    $result->setFetchMode(PDO::FETCH_ASSOC);

   }
    //--------------------------------------------------------------------------------

   

     

    //Em $result eu tenho a lista de todas as subcategorias, agora é lista-lás
  foreach ($result as $row) {  	
  		# code...
  	        //Flag vai ser true se o id tiver subcategorias e false se não
  	        $flag=tem_subcategorias($row['ID'],$con);
  	       // print $flag." ".$row['nome'];

	        print	 "<li>";
			print   "<div id='imagem_categoria'>";
			print    	" <img src='imagens/".$row['slug'].".jpg' alt='".$row['nome']."'> ";
			print       "</div>";				    
			print	    "<div id='dados_categoria'>";
			if($flag) print	    	"<form action='subcategorias.php' method='get'>";
			else print	    	"<form action='produtos.php' method='get'>";
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