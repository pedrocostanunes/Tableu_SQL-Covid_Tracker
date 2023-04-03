
use COVID

select *
from COVID..CovidDeaths

/*

Queries para o Dashboard do Tabeau

*/

-- 1. População, infectados e porcentagem de infectados - Table 1
select Location, MAX(population) as CountryPopulation, MAX(total_cases) as TotalCases, 
	MAX(total_cases)/MAX(population)*100 as InfectedPercentage
from COVID..CovidDeaths
Where continent is not null 
group by location
order by CountryPopulation desc


-- 2. Total de infectados por continentes - Table 4
select Location, SUM(new_cases) as TotalInfectedCount
from COVID..CovidDeaths
where continent is null 
and location not in ('World', 'European Union', 'International', 'High income', 
	'Upper middle income', 'Lower middle income', 'Low income')
group by location
order by TotalInfectedCount desc


-- 3. Total de infectados por país - Table 3
select Location, Population, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
from COVID..CovidDeaths
group by Location, Population
order by PercentPopulationInfected desc


-- 4. Top 10 países em % de infectados (países com mais de 50M habitantes) - Table 4
Select Location, Population, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From COVID..CovidDeaths
where population > 50000000 
	  and location not in ('World', 'European Union', 'International', 'High income', 
	'Upper middle income', 'Lower middle income', 'Low income', 'Europe', 'North America',
	'South America')
Group by Location, Population
order by PercentPopulationInfected desc