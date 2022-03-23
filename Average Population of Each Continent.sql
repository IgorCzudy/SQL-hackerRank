select (COUNTRY.Continent),FLOOR(avg(CITY.Population))
from city 
inner join country
on CITY.CountryCode=COUNTRY.Code
GROUP BY COUNTRY.CONTINENT;