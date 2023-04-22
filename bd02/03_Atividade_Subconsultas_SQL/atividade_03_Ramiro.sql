use empresa;

#a) Listar o nome e sexo dos funcionários que ganham mais que R$ 1400.
SELECT nome, sexo
FROM funcionario 
WHERE cod_cargo IN (
	SELECT cod_cargo
    FROM cargo
    WHERE salario>1400);
    
#b) Listar as informações dos cargos que possuem ao menos um funcionário (Elabore duas soluções, e em uma delas utilize o operador EXISTS).
SELECT c.*
FROM cargo c
WHERE c.cod_cargo IN (
	SELECT f.cod_cargo 
    FROM funcionario f);

SELECT c.*
FROM cargo c
WHERE exists (
	SELECT cod_cargo
	FROM funcionario f
	WHERE c.cod_cargo=f.cod_cargo);

#c) Listar as informações dos cargos que não possuem funcionários (Elabore duas soluções, e em uma delas utilize o operador EXISTS).
SELECT *
FROM Cargo
WHERE cod_cargo NOT IN (
	SELECT cod_cargo 
    FROM Funcionario);

SELECT *
FROM cargo c
WHERE not exists (
	SELECT *
    FROM funcionario f
    WHERE c.cod_cargo=f.cod_cargo);

#d) Listar o nome, data de admissão e sexo dos funcionários do departamento Financeiro.
SELECT f.nome, f.data_adm, f.sexo
FROM Funcionario f
WHERE f.cod_depto IN (
	SELECT d.cod_depto 
    FROM Departamento d 
    WHERE d.nome = 'Financeiro');
    
#e) Listar os dados dos funcionários do sexo masculino que foram contratados antes da Janete Rosa.
SELECT *
FROM Funcionario
WHERE sexo = 'M' AND data_adm < (
	SELECT data_adm 
    FROM Funcionario 
    WHERE nome = 'Janete Rosa');

#f) Listar o nome dos departamentos que não fizeram contratações no ano de 2008 (Elabore duas soluções, e em uma delas utilize o operador EXISTS).
SELECT nome
FROM Departamento
WHERE cod_depto NOT IN (
	SELECT cod_depto 
    FROM Funcionario 
    WHERE YEAR(data_adm) = 2008);
    
SELECT nome
FROM Departamento
WHERE NOT EXISTS (
	SELECT 1 
    FROM Funcionario 
    WHERE Funcionario.cod_depto = Departamento.cod_depto AND YEAR(data_adm) = 2008);

#g) Listar as informações do cargo de maior salário.
SELECT *
FROM Cargo
WHERE salario = (
	SELECT MAX(salario) 
    FROM Cargo);

#h) Para funcionário mais antigo da empresa listar: nome do funcionário, o nome do cargo e nível, e nome do seu departamento.
SELECT f.nome AS nome_funcionario, c.nome AS nome_cargo, c.nivel, d.nome AS nome_departamento
FROM Funcionario f
JOIN Cargo c ON f.cod_cargo = c.cod_cargo
JOIN Departamento d ON f.cod_depto = d.cod_depto
WHERE f.data_adm = (
	SELECT MIN(data_adm) 
    FROM Funcionario);

#i) Listar os dados de todos os funcionários da empresa, exceto do que foi contratado mais recentemente.
SELECT *
FROM Funcionario
WHERE data_adm != (
	SELECT MAX(data_adm) 
    FROM Funcionario);

#j) Listar os dados dos departamentos que possuem funcionárias do sexo feminino (Elabore duas soluções, e em uma delas utilize o operador EXISTS).
SELECT *
FROM Departamento d
WHERE EXISTS (
	SELECT 1 
	FROM Funcionario f 
	WHERE f.cod_depto = d.cod_depto AND f.sexo = 'F');
    
SELECT DISTINCT d.*
FROM Departamento d
JOIN Funcionario f ON d.cod_depto = f.cod_depto
WHERE f.sexo = 'F';

#k) Listar o nome e nível dos cargos ocupados por pelo menos um funcionário do sexo masculino (Elabore duas soluções, e em uma delas utilize o operador EXISTS).
SELECT c.nome, c.nivel
FROM Cargo c
WHERE EXISTS (
	SELECT 1 
	FROM Funcionario f 
	WHERE f.cod_cargo = c.cod_cargo AND f.sexo = 'M');
    
SELECT DISTINCT c.nome, c.nivel
FROM Cargo c
JOIN Funcionario f ON c.cod_cargo = f.cod_cargo
WHERE f.sexo = 'M';

#l) Listar os dados dos cargos que possuem funcionários, mas não possuem funcionários do sexo feminino (Elabore duas soluções, e em uma delas utilize o operador EXISTS).
SELECT *
FROM cargo c
WHERE NOT EXISTS (
	SELECT 1 
	FROM funcionario f 
	WHERE f.cod_cargo = c.cod_cargo AND f.sexo = 'F');

SELECT c.*
FROM cargo c
LEFT JOIN funcionario f ON c.cod_cargo = f.cod_cargo
WHERE f.sexo <> 'F' OR f.cod_cargo IS NULL;