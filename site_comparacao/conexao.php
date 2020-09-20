<!--
  Aqui acontece a conexão com o banco de dados
-->
<?php

    try{

    //Estabelecer a conexão
	$con=new PDO('mysql: host=localhost; dbname=site_comparacao',
		      "root",
		      "Casadepapel-123"
    );
    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

     } catch(PDOException $e) { 
       echo 'ERROR: ' . $e->getMessage();
   }


//---------------------functions------------------------------------------------------------------------------

   //Função retorna a chave primaria dado o slug e a tabela
   function pegar_chave_primaria($tabela,$slug,$con) {

    //Pego a chave primaria da categoria
    $sql='SELECT ID FROM '.$tabela.' WHERE '.$tabela.'.slug=\''.$slug.'\'';
    //print $sql;

    $categoria_id=$con->query($sql);
    $categoria_id->setFetchMode(PDO::FETCH_ASSOC);
    
    //id vai conter a chave primaria
    $id=-1;
    foreach ($categoria_id as $row) {     
        $id=$row['ID'];      
      

    }

    //print $id;

    return $id;

   }

   //Essa função retorna true se o id dado possui subcategorias
   //e false se não
   function tem_subcategorias($ID,$con){

      $sql='SELECT ID FROM subcategorias WHERE subcategorias.chave_estrangeira=\''.$ID.'\' && subcategorias.pai_subcategoria=true';

       $elementos=$con->query($sql);
       $elementos->setFetchMode(PDO::FETCH_ASSOC);
    
    
    $flag=false;
    foreach ($elementos as $row) {     
        if($row['ID']) 
          $flag=true;      
      

    }

   

    return $flag;

   }


?>