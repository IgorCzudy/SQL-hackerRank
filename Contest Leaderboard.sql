select  h.hacker_id, h.name, sum(s.score)
from hackers h
inner join (select max(score) as score,hacker_id from submissions group by challenge_id, hacker_id) s 
on s.hacker_id=h.hacker_id
group by h.hacker_id, name
having sum(s.score)>0
order by sum(s.score) desc,h.hacker_id asc ;