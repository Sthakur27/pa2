-- -- -- select * from fraud_transactions f  left outer join transactions t on 

-- with transactions as (select t.date, t.id, t.user_id, t.amount,  t.type,  
--    ST_SetSRID(ST_Point(t.long, t.lat),4326)::geography(point,4326)        transaction_point, 
--         ST_SetSRID(ST_Point(u.long, u.lat),4326)::geography(point,4326) house_location 

-- from transactions t left outer join users u on t.user_id= u.id)
-- , transactions_per_day as (
--   select user_id, date, count(*) as total_transactions, sum(case when amount <20 then 1 else 0 end) as total_small_transactions from transactions
--   group by 1,2 
-- ), raw_data as (
-- select 
-- t.date, t.id, t.user_id, t.amount, t.type,
-- total_transactions, total_small_transactions, 
--  ST_DISTANCE(t.transaction_point, t.house_location)/1000 as distance_in_km
--  from transactions t left outer join transactions_per_day tpd on 
--  t.user_id= tpd.user_id and t.date = tpd.date)



-- SELECT * INTO fraud_transactions FROM (select id as transaction_id, user_id, date, 
-- case when amount>5000 then TRUE
-- when total_small_transactions>3 then TRUE
-- when distance_in_km>1000 then true 
-- else false end as is_fraud,
-- case when amount>5000 then 'Large transaction'
-- when total_small_transactions>3 then 'Number of Small Transactions'
-- when distance_in_km>1000 then 'Transaction location' 
-- else null end as reason, 
-- null as notes, 
-- false as reviewed
-- from raw_data) x



