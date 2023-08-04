with distance as (
  SELECT
    round(
      ST_DISTANCE(fraud_transaction_point, house_location) / 1000
    ) "distance_in_km"
  FROM
    (
      SELECT
        ST_SetSRID(ST_Point({{tableTransactions.selectedRow.data.long}}, {{tableTransactions.selectedRow.data.lat}}), 4326) :: geography(point, 4326) fraud_transaction_point,
        ST_SetSRID(ST_Point({{(tableTransactions.selectedRow.data.user_long_)}}, {{(tableTransactions.selectedRow.data.user_lat_)}}), 4326) :: geography(point, 4326) house_location
    ) x
)
select
  f.reason fraud_reason,
  t.type,
  t.amount,
  t.date,
  t.status,
  u.email,
  u.last_name,
  u.first_name,
  u.account_status,
  u.ssn,
  u.job_sector,
  u.state as user_state,
  u.address user_address,
  u.lat user_lat,
  u.long user_long,
  d.distance_in_km
from
  transactions t
  inner join fraud_transactions f on t.id = f.transaction_id
  inner join users u on u.id = f.user_id
  cross join distance d
where
  t.id = {{tableTransactions.selectedRow.data.transaction_id}}
order by
  1