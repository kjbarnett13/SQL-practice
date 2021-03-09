--pulls all data from the transactions table 
select *
from transactions;

--pulls all data from the owners table 
select *
from owners;

--joins the two tables
select * 
from transactions left outer join owners
on transactions.pet_id = owners.pet_id
order by date;

-- 1. Which dogs (petIDs) did not come in 
-- for any service during the week 6/16 to 6/22?
SELECT o.pet_id, date
FROM owners AS o LEFT OUTER JOIN transactions AS t
ON o.pet_id = t.pet_id
WHERE date IS NULL;

-- 2. Which was/were the busiest day/s 
-- during this week? (more clients = busier)


SELECT DISTINCT date, COUNT(transaction_id) AS count_transactions
FROM transactions
GROUP BY date
ORDER BY COUNT(transaction_id) DESC;

-- records total visits 
select owner_id, count(transactions.pet_id)
from transactions left outer join owners
on transactions.pet_id = owners.pet_id
group by owner_id
order by owner_id;

-- records total visits + pet_id
select owner_id, transactions.pet_id, count(transactions.pet_id)
from transactions left outer join owners
on transactions.pet_id = owners.pet_id
group by owner_id,transactions.pet_id
order by owner_id;


-- records most common service
select owner_id, service, count(transactions.service)as most_common 
from transactions left outer join owners
on transactions.pet_id = owners.pet_id
group by owner_id, service 
order by owner_id;




