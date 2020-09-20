
------Base de dados para teste---------------------------------------------------------------------------------------

DROP TABLE IF EXISTS categorias;

CREATE TABLE categorias(
    ID int PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    descricao VARCHAR(1000),
    slug VARCHAR(50)

	
);

INSERT INTO categorias VALUES
   (null,'Celulares e Telefones','Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
   	sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
   	Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
   	Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
   	 Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','celulares-e-telefones');

INSERT INTO categorias VALUES
   (null,'Eletrodomésticos','Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
   	sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
   	Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
   	Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
   	 Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','eletrodomesticos');

INSERT INTO categorias VALUES
   (null,'Câmeras e Filmadoras','Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
   	sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
   	Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
   	Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
   	 Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','cameras-e-filmadoras');

INSERT INTO categorias VALUES
   (null,'Brinquedos','Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
   	sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
   	Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
   	Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
   	 Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','brinquedos');


 INSERT INTO categorias VALUES
   (null,'Casa e jardim','Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
   	sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
   	Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
   	Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
   	 Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','casa-e-jardim');

  INSERT INTO categorias VALUES
   (null,'Esposte e Lazer','Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
   	sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
   	Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
   	Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
   	 Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','esporte-e-lazer');

INSERT INTO categorias VALUES
   (null,'Indústria e Comércio','Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
   	sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
   	Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
   	Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
   	 Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','industria-e-comercio');

INSERT INTO categorias VALUES
   (null,'Casa Inteligente','Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
   	sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
   	Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
   	Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
   	 Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','casa-inteligente');

INSERT INTO categorias VALUES
   (null,'Informática','Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
   	sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
   	Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
   	Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
   	 Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','informatica');

INSERT INTO categorias VALUES
   (null,'Instrumentos Musicais','Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
   	sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
   	Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
   	Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
   	 Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','instrumentos-musicais');




SELECT * FROM categorias;

---------------------------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS produtos;

CREATE TABLE produtos(
    produtoID int PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    descricao VARCHAR(1000),
    slug VARCHAR(50),
    categoriaID int 
	
);

INSERT INTO produtos VALUES
   (null,'Iphone X','Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
   	sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
   	Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
   	Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
   	 Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','iphone-x',0);

INSERT INTO produtos VALUES
   (null,'Samsug Galaxy','Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
   	sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
   	Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
   	Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
   	 Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','samsung-galaxy',0);


INSERT INTO produtos VALUES
   (null,'TV LG','Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
   	sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
   	Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
   	Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
   	 Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','tv-lg',1);

INSERT INTO produtos VALUES
   (null,'TV Samsug','Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
   	sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
   	Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
   	Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
   	 Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','tv-samsung',1);


SELECT * FROM produtos;

-----------------------------------------------------------------------------------------------------------------------

SELECT * From produtos Where produtos.categoriaID=0;
  


CREATE VIEW categoriaProdutoView AS
SELECT 
     categorias.nome AS 'categoria',
     produtos.nome AS 'produto'
FROM
    categorias,produtos
WHERE 
     categorias.categoriaID=produtos.categoriaID;




--------------------------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS subcategorias;

CREATE TABLE subcategorias(
    ID int PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    descricao VARCHAR(1000),
    slug VARCHAR(50),
    chave_estrangeira int,
    pai_subcategoria boolean	
);

INSERT INTO subcategorias VALUES
   (null,'Acessórios de Telefone','Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
   	sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
   	Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
   	Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
   	 Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','acessorios-de-telefone',1,false);


INSERT INTO subcategorias VALUES
   (null,'Celular e Smartphone','Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
   	sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
   	Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
   	Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
   	 Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','celular-e-smartphone',1,false);


INSERT INTO subcategorias VALUES
   (null,'Adega Climatizada','Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
   	sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
   	Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
   	Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
   	 Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','adega-climatizada',2,false);


INSERT INTO subcategorias VALUES
   (null,'Bateria para Telefone sem Fio','Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
   	sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
   	Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
   	Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
   	 Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','bateria-para-telefone-sem-fio',1,true);
