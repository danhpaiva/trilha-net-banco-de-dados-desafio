### 1 - Buscar o nome e ano dos filmes

```sql
SELECT Nome, Ano
FROM Filmes;
```

### 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

```sql
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;
```

### 3 - Buscar pelo filme "De Volta para o Futuro", trazendo nome, ano e duração

```sql
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';
```

### 4 - Buscar os filmes lançados em 1997

```sql
SELECT Nome, Ano
FROM Filmes
WHERE Ano = 1997;
```

### 5 - Buscar os filmes lançados APÓS o ano 2000

```sql
SELECT Nome, Ano
FROM Filmes
WHERE Ano > 2000;
```

### 6 - Buscar os filmes com duração maior que 100 e menor que 150, ordenando pela duração ascendente

```sql
SELECT Nome, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;
```


### 7 - Buscar a quantidade de filmes lançados no ano, agrupando por ano, ordenando pela quantidade em ordem decrescente

```sql
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;
```

### 8 - Buscar os atores do gênero masculino (campo Genero = 'M'), retornando PrimeiroNome e UltimoNome

```sql
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';
```

### 9 - Buscar os atores do gênero feminino (campo Genero = 'F'), ordenando pelo PrimeiroNome

```sql
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;
```

### 10 - Buscar o nome do filme e o gênero

```sql
SELECT f.Nome AS Filme, g.Genero AS Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;
```

### 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

```sql
SELECT f.Nome AS Filme, g.Genero AS Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';
```

### 12 - Buscar o nome do filme e os atores, trazendo PrimeiroNome, UltimoNome e o Papel

```sql
SELECT f.Nome AS Filme, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id;
```