/*

INSIGHTS - Casos e mortes

*/

-- Visualizando toda a tabela, ordenando por localização e data
select * 
from COVID..CovidDeaths
order by 3,4


-- Selecionando dados que vamos usar
select location, date, total_cases, new_cases, total_deaths, population
from COVID..CovidDeaths
order by 1,2


-- Calculando mortality_rate (número de mortes pelo total de casos)
select location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as mortality_rate
from COVID..CovidDeaths
order by 1,2


-- Consultando a  mortality_rate no Brasil
select location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as mortality_rate
from COVID..CovidDeaths
where location = 'Brazil'
order by 2 desc


-- Consultado incidence_rate (taxa de contaminação por covid pela população) no Brasil
select location, date, population, total_cases, (total_cases/population)*100 as incidence_rate
from COVID..CovidDeaths
where location = 'Brazil'
order by 1,2 desc


-- Consultando os países com maior incidence_rate 
select location, population, MAX(total_cases/population)*100 as incidence_rate
from COVID..CovidDeaths
group by location, population
order by incidence_rate desc


-- Consultando países com o maior death_count (número de mortes pela população)
select location, MAX(cast(total_deaths as int)) as death_count
from COVID..CovidDeaths
where continent is not null -- usando esse parâmetro para evitar valores como "africa", "high income" e etc
group by location
order by death_count desc


-- Consultando death_count por continente
select continent, MAX(total_deaths) as death_count
from COVID..CovidDeaths
where continent is not null
Group by continent
order by death_count desc
-- alteranativa
select location, MAX(total_deaths) as death_count
from CovidDeaths
where continent is null 
	  AND location <> 'World' 
	  AND location not like '%income%' 
	  AND location not like '%union%'
Group by location
order by death_count desc


-- NUMEROS GLOBAIS

-- gerais 
select SUM(new_cases) as total_cases, SUM(new_deaths) total_deaths, 
	   SUM(new_deaths)/SUM(new_cases)*100 as death_percentage
from COVID..CovidDeaths
where continent is not null
order by 1,2

-- por dia
select date as day, SUM(new_cases) as new_cases, SUM(new_deaths) new_deaths, 
	   SUM(new_deaths)/SUM(new_cases)*100 as death_percentage
from COVID..CovidDeaths
where continent is not null
group by date
order by 1,2


