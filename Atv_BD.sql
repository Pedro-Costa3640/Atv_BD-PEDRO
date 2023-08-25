# Criar Tabela
CREATE DATABASE Tabela;

-- Mostrar o Banco
SHOW DATABASES;

-- Acessar o Banco
USE Tabela;

-- Criar Tabela no Banco
CREATE TABLE Tabela.Livros(
	id int auto_increment,
    titulo varchar(50) not null,
    autor varchar(255) not null,
    sexo varchar(11) not null,
    paginas int not null,
    editora varchar(50) not null,
    valorCapa double not null,
    valorKindle double not null,
    anoPubli int not null,
    PRIMARY KEY(Id)
);

-- Inserir Registros na Tabela
INSERT INTO Tabela.Livros(titulo,autor,sexo,paginas,editora,valorCapa,valorKindle,anoPubli)
VALUES('Pai Rico Pai Pobre',
'Robert T. Kiyosaki',
'Masculino',
336,
'Alta Books',
61.53,
58.45,
2018);

INSERT INTO Tabela.Livros(titulo,autor,sexo,paginas,editora,valorCapa,valorKindle,anoPubli)
VALUES('Mindset',
'Carol S. Dweck',
'Feminino',
312,
'Objetiva',
38.99,
14.95,
2017);

INSERT INTO Tabela.Livros(titulo,autor,sexo,paginas,editora,valorCapa,valorKindle,anoPubli)
VALUES('Como fazer amigos e influenciar pessoas',
'Dale Carnegie',
'Masculino',
256,
'Sextante',
38.99,
33.24,
2019),

('A Cabana',
'William P. Young',
'Masculino',
240,
'Arqueira',
35.99,
17.90,
2008),

('O Poder do Hábito',
'Charles Duhigg',
'Masculino',
408,
'Objetiva',
42.99,
29.90,
2012),

('Código Limpo',
'Robert C. Marin',
'Masculino',
425,
'Alta Books',
91.99,
87.39,
2009),

('Essencialismo',
'Greg McKeown',
'Masculino',
272,
'Sextante',
53.58,
33.24,
2015),

('Me Poupe!',
'Nathalia Arcuri',
'Feminino',
176,
'Sextante',
32.86,
17.09,
2018),

('Comece pelo Porquê',
'Simon Sinek',
'Masculino',
256,
'Sextante',
50.58,
24.90,
2018),

('O Alquimista',
'Paulo Coelho',
'Masculino',
206,
'Paralela',
24.70,
14.70,
2017);

-- 1) SELECIONAR E EXIBIR TABELA TODOS OS DADOS
SELECT * FROM Tabela.Livros;

-- 2) CONSULTA DE NOME DO LIVRO E EDITORA 
SELECT titulo, editora
FROM Tabela.Livros;

-- 3) CONSULTA DO NOME DO LIVRO, NÚMERO DE PÁGINAS, AUTORES (MASCULINOS)
SELECT titulo, editora, autor
FROM Tabela.Livros
WHERE sexo = 'Masculino';

-- 4) CONSULTA NOME DO LIVRO, NÚMERO DE PÁGINAS, AUTORES (FEMININO)
SELECT titulo, paginas, autor
FROM Tabela.Livros
WHERE sexo = 'Feminino';

-- 5) CONSULTA DO NOME DO AUTOR, EDITORA, ANO DE PUBLICAÇÃO A PARTIR DE 2017
SELECT autor, editora, anoPubli
FROM Tabela.Livros
WHERE anoPubli > 2017;

-- 6) CONSULTA DO NOME DO AUTOR DO SEXO MASCULINO COM LIVROS PUBLICADOS PELA EDITORA SEXTANTE E ALTAS BOOKS
SELECT autor, editora
FROM Tabela.Livros
WHERE sexo = 'Masculino' AND editora = 'Sextante' OR editora = 'Alta Books';

-- 7) CONSULTA DO NOME DO LIVRO, AUTOR, NÚMERO DE PÁGINAS, EDITORA, ANO DE PUBLICAÇÃO E VALOR DA CAPA
SELECT titulo, autor, paginas, editora, anoPubli, valorCapa
FROM Tabela.Livros;

-- 8) CONSULTA DO NOME DO LIVRO, AUTOR, NÚMERO DE PÁGINAS E VALOR DO KINDLE
SELECT titulo, autor, paginas, valorKindle
FROM Tabela.Livros;

-- 9) CONSULTA DO NOME DOS AUTORES COM LIVROS PUBLICADOS PELA EDITORA SEXTANTE
SELECT autor, editora
FROM Tabela.Livros
WHERE editora = 'Sextante';

-- 10) CONSULTA DO NOME DO LIVRO, AUTORES, VALOR DA CAPA COMUM E VALOR DO KINDLE
SELECT titulo, autor, valorCapa, valorKindle
FROM Tabela.Livros;

