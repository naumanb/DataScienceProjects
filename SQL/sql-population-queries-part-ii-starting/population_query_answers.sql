-- How many entries in the countries table are from Africa?
select count(*) from countries where continent = 'Africa';

-- What was the total population of the continent of Oceania in 2005?
select sum(population) as 'PopulationIn2005' from population_years
	join countries on population_years.country_id = countries.id
	where continent = 'Oceania' and year = 2005;

-- What is the average population of countries in South America in 2003?
select avg(population) as 'AvgPopulation' from population_years
	join countries on population_years.country_id = countries.id
	where continent = 'South America' and year = 2003;	

-- What country had the smallest population in 2007?
select name, min(population) from population_years 
	join countries on population_years.country_id = countries.id
	where year = 2007;	

-- What is the average population of Poland during the time period covered by this dataset?
select avg(population) from population_years
	join countries on population_years.country_id = countries.id
	where name = 'Poland';

-- How many countries have the word “The” in their name?
select count(*) from countries where name like '%The%';

-- What was the total population of each continent in 2010?
select continent, sum(population) from population_years
	join countries on population_years.country_id = countries.id
	where year = 2010
	group by countries.continent;
