create database test1;
use test1;
create table testdata(
Favorites varchar(5),
From_URL varchar(155),
To_URL varchar(350),
Anchor_Text varchar(155),
Link_Status varchar(15),
Type_ varchar(10),
BLdom  varchar(25),
DomPop varchar(25),
Power int,
Trust int,
Power_Trust int,
Alexa varchar(10),
IP varchar(20),
CNTRY varchar(25)
);

select count(*) from testdata;

select * from testdata limit 3;

select anchor_text, count(*) 
from testdata
group by anchor_text
order by count(*) desc 
limit 10;

select link_status, count(*) 
from testdata
group by link_status;

SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX(from_url, '/', 3), '://', -1), '/', 1), '?', 1) AS domain, count(*)
from testdata
group by domain
order by count(*) desc;

select bldom from testdata limit 5;


limit 10;
