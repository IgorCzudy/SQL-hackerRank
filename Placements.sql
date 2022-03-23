select students.name
from students
inner join friends on friends.id=students.id
inner join packages p1 on students.id=p1.ID
inner join packages p2 on friends.friend_id=p2.id
where p1.salary<p2.salary
order by p2.salary;