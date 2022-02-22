select * from students	-- #1
select name from students	-- #2
select id from students	-- #3
select name from students	-- #4
select email from students	-- #5
select name, email from students	--#6
select id, name, email from students	--#7
select * from students	--#8
where password = '12333'
select * from students	--#9
where created_on = '2021-03-26 00:00:00'
select * from students	--#10
where name = '����'
select * from students	--#11
where name like '%8'
select * from students	--#12
where name like	'%a%'
select * from students	--#13
where created_on = '2021-07-12 00:00:00'
select * from students	--#14
where created_on = '2021-07-12 00:00:00' and password = '1m313'
select * from students 	--#15
where created_on = '2021-07-12 00:00:00' and name like '%Andrey%'
select * from students	--#16
where created_on = '2021-07-12 00:00:00' and name like '%8%'
select * from students	--#17
where id = '10'
select * from students	--#18
where id = '53'
select * from students	--#19
where id > 40
select * from students	--#20
where id < 30
select * from students 	--#21
where id < 27 or id > 88
select * from students	--#22
where id <= 37
select * from students	--#23
where id >= 37
select * from students	--#24
where id > 80 and id < 90
select * from students	--#25
where id > 80 and id < 90
select * from students	--#26
where password in ('12333', '1m313', '123313')
select * from students	--#27
where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00')
select min(id) as min from students	--#28
select max(id) as max from students	--#29
select count(*) from students	--#30
select id, name, created_on from students	--#31
order by created_on
select id, name, created_on from students	--#32
order by created_on desc