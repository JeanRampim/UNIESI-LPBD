-- Figura 1
-- A)
select avg(salario) from funcionarios;

-- B)
select f.primeiro_nome, f.funcao, d.codigo_depto  from funcionarios f, departamentos d where
f.codigo_func = d.codigo_depto
group by d.nome;

-- C)
select f.primeiro_nome, f.endereco, f.rg, f.cpf from funcionarios f, departamentos d where
f.codigo_func = d.codigo_depto
order by d.nome = "TI";

-- D
select f.primeiro_nome, f.salario from funcionarios f order by
f.data_nasc >= "1980-01-01" <= "1990-12-17"; 



-- Figura 2
-- A)
select ct.Name, ct.Continent from country ct;

-- B)
select ct.Name, ct.Region, ct.Population, ct.Continent from country ct order by 
ct.Continent = "Europa";

-- C)
select ct.LifeExpectancy, ct.Continent from country ct order by
ct.Continent = "Asia";

-- D)
create view vw_Country as 
select ct.Name, ct.HeadOfState, ct.GovernmentForm, ct.Population from country ct
order by ct.Continent = "South America" and
ct.Population = "2000000";
select * from vw_country;

-- E) 
create view vw_Country2 as
select ct.name, ct.SurfaceArea, cl.Language, cl.IsOfficial from country ct, countrylanguage cl where
ct.Code = cl.CountryCode and
cl.Language = "English" and
cl.IsOfficial = "T"
order by ct.SurfaceArea asc;
select * from vw_country2;

-- F)
alter view vw_Country2 as
select ct.name, ct.SurfaceArea, cl.Language, cl.Percentage from country ct, countrylanguage cl where
ct.Code = cl.CountryCode and
cl.Language = "English" and
cl.IsOfficial = "T"
order by ct.SurfaceArea asc;