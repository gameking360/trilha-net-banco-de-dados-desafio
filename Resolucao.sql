use Filmes;

/*1*/
select nome,ano from Filmes;

/*2*/
select nome,ano,duracao from Filmes order by ano;

/*3*/
select nome,ano,duracao from Filmes where nome like 'De volta para o futuro';

/*4*/
select nome,ano,duracao from Filmes where ano = 1997;

/*5*/
select nome,ano,duracao from Filmes where ano > 2000;

/*6*/
select nome,ano,duracao from Filmes where duracao between 100 and 150 order by duracao;

/*7*/
select ano, count(nome) as 'Quantidade' from Filmes group by ano order by Quantidade desc;

/*8*/
select Id, PrimeiroNome, UltimoNome,Genero from Atores where Genero = 'M';

/*9*/
select Id, PrimeiroNome, UltimoNome,Genero from Atores where Genero = 'F' order by PrimeiroNome;

/*10*/
select * from FilmesGenero;
select f.Nome, g.genero from Filmes f inner join FilmesGenero fg on fg.IdFilme = f.Id
									inner join Generos g on g.Id = fg.IdGenero;

/*11*/
select f.nome, g.genero from Filmes f inner join FilmesGenero fg on fg.IdFilme = f.Id
										inner join Generos g on g.Id = fg.IdGenero where g.genero like 'Mistério';

/*12*/
select * from ElencoFilme
select f.nome, a.PrimeiroNome,a.UltimoNome, e.Papel from Filmes f inner join ElencoFilme e on e.IdFilme = f.Id
inner join Atores a on a.Id = e.IdAtor;