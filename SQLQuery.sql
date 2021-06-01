CREATE TABLE Cities(
  id integer primary key,
  name varchar(30) not null,
  state varchar(20),
  population integer
);

insert into cities values (1, 'New York', 'New York', 8175133);
insert into cities values (2, 'Los Angeles', 'California', 3792621);
insert into cities values (3, 'Chicago', 'Illinois', 2695598);
insert into cities values (4, 'Houston', 'Texas', 2099451);
insert into cities values (5, 'Philadelphia', 'Pennsylvania', 1526006);
insert into cities values (6, 'Phoenix', 'Arizona', 1445632);
insert into cities values (7, 'San Antonio', 'Texas', 1327407);
insert into cities values (8, 'San Diego', 'California', 1307402);
insert into cities values (9, 'Dallas', 'Texas', 1197816);
insert into cities values (10, 'San Jose', 'California', 945942);

-- total population by state
select state, sum(population) as 'state population'
from Cities
group by state;

--total number of cities by state
select state, count(name) as 'number of cities'
from Cities
group by state;

--total number of cities by state by order
select state, count(name) as 'number of cities'
from Cities
group by state
order by 'number of cities';

--record with lowest population
select * from Cities where population = (select min(population) from Cities);

insert into cities values (11, 'San Jose Copy', 'California', 945942);

/* A subquery within a subquery */
select * from cities WHERE id = (select min(id) from cities WHERE population = (select min(population) from cities));