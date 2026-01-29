select sales;
 -- 2823 RECORDS (ROWS)
select count(*) from rfmdata;
-- NUMBER OF CUSTOMERS? -- 92
select * from rfmdata;

select count(distinct(CUSTOMERNAME))
from 
rfmdata;


-- TOP 10 CUSTOMERS
select count(distinct(ORDERNUMBER)) as total_order,
CUSTOMERNAME,
sum(SALES) as sales
from 
rfmdata
group by
CUSTOMERNAME
order by
SALES DESC
Limit 10;

-- Customers who made at least 5 orders

select count(distinct(ORDERNUMBER)) as total_quantity,
CUSTOMERNAME,
sum(SALES)
from 
rfmdata
where
PRODUCTLINE = "Motorcycles"
group by
CUSTOMERNAME
having
total_quantity>=5 
order by
total_quantity
asc 


