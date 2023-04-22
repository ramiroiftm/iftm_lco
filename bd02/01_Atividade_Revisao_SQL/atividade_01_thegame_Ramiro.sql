create database theGame;
use theGame;

create table Jogador(
cod_jogador int primary key,
nome varchar(50),
nickname varchar(20),
sexo char(1),
email varchar(100),
dt_nasc date,
pontuacao int,
moedas int);

insert into Jogador
values(1,"Roberto Carlos","robcar","M","robcar@gmail.com","2000-08-07",1000,3000),
(2,"Maria Clara","marcla","F","marcla@gmail.com","1999-05-07",5000,500),
(3,"João Marcos","jomar","M","jomar@gmail.com","1998-01-15",1000,5000),
(4,"Karina Jones","kjones","F","kjones@yahoo.com","1999-03-05",1000,8000);

create table poder(
cod_poder int primary key,
habilidade varchar(40));
insert into poder values 
(1,"Choque do trovão"),
(2,"Bola elétrica"),
(3,"Ataque rápido"),
(4,"Cauda de ferro"),
(5,"Teia Elétrica"),
(6,"Jato de Bolhas"),
(7,"Redomoinho");

create table Adquire_poder(
cod_aquisicao int primary key,
cod_jogador int,
cod_poder int,
dt_hora_aquisicao datetime,
foreign key(cod_jogador) references Jogador(cod_jogador),
foreign key(cod_poder) references Poder(cod_poder));

insert into Adquire_poder values
(1,1,1,"2021-06-20 19:00:00"),
(2,1,2,"2021-06-21 10:00:00"),
(3,2,1,"2021-06-21 11:00:00"),
(4,2,3,"2021-06-23 13:00:00"),
(5,2,4,"2021-06-24 15:00:00"),
(6,3,4,"2021-06-25 12:00:00"),
(7,3,5,"2021-06-26 08:00:00"),
(8,4,6,"2021-06-26 12:00:00");

create table Cenario(
cod_cenario int primary key,
caracteristicas varchar(30),
qtde_min_pontos int);

insert into Cenario values
(1,"Terrestre",1000),
(2,"Aquatico",2500),
(3,"Espacial",5000);

create table Partida(
cod_partida int primary key,
data_hora_inicio datetime,
data_hora_termino datetime,
pontos_obtidos int,
cod_jogador int,
cod_cenario int,
foreign key(cod_jogador) references jogador(cod_jogador),
foreign key(cod_cenario)  references cenario(cod_cenario));

insert into Partida values
(1,"2021-06-27 19:00:00","2021-06-27 20:00:00",300,1,1),
(2,"2021-06-27 19:30:00","2021-06-27 21:00:00",500,2,1),
(3,"2021-06-28 08:00:00","2021-06-28 12:00:00",200,3,1),
(4,"2021-06-28 08:30:00","2021-06-28 11:30:00",200,1,2);

#1) Utilizando junção de tabelas, gere os seguintes relatórios:
#a)Liste o nickname do jogador,sexo,pontuação, moeda, habilidade do
#poder e data e hora de aquisição do poder para todos os jogadores
#cadastrados. Ordene o resultado pela data de aquisição, da mais recente
#para a mais antiga.
SELECT j.nickname, j.sexo, j.pontuacao, j.moedas, p.habilidade, a.dt_hora_aquisicao
FROM jogador j JOIN adquire_poder a ON j.cod_jogador = a.cod_jogador JOIN 
poder p ON p.cod_poder = a.cod_poder
ORDER BY dt_hora_aquisicao;

#b)Liste código da partida, data de início e data de término, pontos
#obtidos e características do cenário de todas as partidas jogadas pelo
#jogador Roberto Carlos.
SELECT pa.cod_partida, pa.data_hora_inicio, pa.data_hora_termino, pa.pontos_obtidos, c.caracteristicas
FROM partida pa JOIN cenario c ON  pa.cod_cenario = c.cod_cenario 
JOIN jogador j ON pa.cod_jogador = j.cod_jogador
WHERE j.nome = "Roberto Carlos";

#c)Liste as informações dos jogadores que jogaram partidas fora do cenário
#Terrestre.
SELECT j.cod_jogador, j.nome, j.nickname, j.sexo, j.email, j.dt_nasc, j.pontuacao, j.moedas
FROM partida pa JOIN cenario c ON  pa.cod_cenario = c.cod_cenario 
JOIN jogador j ON pa.cod_jogador = j.cod_jogador
WHERE c.caracteristicas NOT LIKE "Terrestre";

#d)Liste o nome, sexo e ano de nascimento dos jogadores que jogaram
#partidas no período diurno (antes das 18:00:00) no mês de junho de 2021.
SELECT j.nome, j.sexo, YEAR(j.dt_nasc) ano_nascimento
FROM jogador j JOIN partida pa ON pa.cod_jogador = j.cod_jogador
WHERE TIME(pa.data_hora_inicio) <= '18:00:00';

#e)Liste as habilidades dos poderes adquiridos pela jogadora Maria Clara no mês de junho de 2021.
SELECT p.habilidade
FROM jogador j JOIN adquire_poder a ON j.cod_jogador = a.cod_jogador JOIN 
poder p ON p.cod_poder = a.cod_poder
WHERE j.nome LIKE "Maria Clara" AND MONTH(dt_hora_aquisicao)=06 AND YEAR(dt_hora_aquisicao)=2021;

#2) Utilize funções agregadas e agrupamento para atender as requisições a seguir:
#a)Liste o nickname do jogador e a quantidade de partidas realizadas.
SELECT j.nickname, count(*) partidas_realizadas
FROM jogador j JOIN partida pa ON j.cod_jogador = pa.cod_jogador
GROUP BY j.nickname;

#b)Liste o mês, dia e a quantidade de partidas realizadas no mês e dia, considere somentepartidas do ano de 2021.
SELECT DAY(data_hora_inicio) partidas_dia, MONTH(data_hora_inicio) partidas_mes, COUNT(*)
FROM partida
WHERE YEAR(data_hora_inicio)=2021
GROUP BY partidas_dia, partidas_mes;

#c)Liste o nome do jogador e total de pontos obtidos pelo jogador em
#partidas. Consideresomente jogadores que tiverem um total de pontos superior a 200.
SELECT j.nome, sum(pa.pontos_obtidos) pontos_obtidos
FROM jogador j JOIN partida pa ON j.cod_jogador = pa.cod_jogador
WHERE pontos_obtidos > 200
GROUP BY j.nome;

#d)Liste a característica do cenário e a quantidade de partidas realizadas no cenário.
SELECT c.caracteristicas, count(cod_partida) qtd_partidas
FROM cenario c JOIN partida pa ON pa.cod_cenario = c.cod_cenario
GROUP BY caracteristicas;

#e)Liste o nome do jogador e a quantidade de poderes adquiridos pelo jogador, ordenando em ordem decrescente.
SELECT j.nome, count(cod_poder) qtd_poderes
FROM jogador j JOIN adquire_poder a ON j.cod_jogador = a.cod_jogador
GROUP BY j.nome
ORDER BY qtd_poderes DESC;