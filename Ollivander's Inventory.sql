select  w.id, p.age, w.coins_needed, w.power 
from wands w 
inner join
wands_property p on w.code=p.code
where p.is_evil=0 and w.coins_needed=(select min(coins_needed) from wands w1 
    inner join  
    wands_property p1 on w1.code=p1.code
    where w1.power=w.power and p.age=p1.age
)
order by w.power desc, p.age desc;