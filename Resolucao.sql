SELECT * FROM Atores
SELECT * FROM ElencoFilme
SELECT * FROM Filmes
SELECT * FROM FilmesGenero
SELECT * FROM Generos

-----------------------------------

--1 Exerc�cio
SELECT
	Nome, 
	Ano
FROM Filmes

--2 Exec�cio
SELECT
*
FROM Filmes
ORDER BY Ano ASC

--3 Exerc�cio
SELECT * FROM Filmes WHERE Nome = 'De Volta Para o Futuro'

--4 Exerc�cio
Select 
	Nome,
	Ano,
	Duracao
FROM Filmes WHERE Ano = 1997

--5 Exerc�cio
SELECT * FROM Filmes WHERE Ano > 2000

--6 Exerc�cio
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes WHERE Duracao > 100 AND DURACAO < 150
ORDER BY Duracao ASC

--7 Exerc�cio
SELECT  
	Filmes.Ano,
	COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Filmes.Ano
ORDER BY Quantidade DESC

--8 Exerc�cio
SELECT 
	PrimeiroNome, UltimoNome
FROM Atores WHERE Genero = 'M'

--9 Exerc�cio
SELECT 
	PrimeiroNome, UltimoNome
FROM Atores WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10 Exerc�cio
SELECT 
	Filmes.Nome, Generos.Genero
FROM 
	Filmes
JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--11 Exerc�cio 
SELECT 
	Filmes.Nome, Generos.Genero
FROM 
	Filmes
JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mist�rio'

--12 Exerc�cio
SELECT
	Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel	
From 
	Filmes
JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id
JOIN Atores ON Atores.Id = ElencoFilme.IdAtor