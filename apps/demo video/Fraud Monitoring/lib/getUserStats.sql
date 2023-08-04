select
  round(avg(amount), 2),
  count(*) as total_transactions,
  sum(amount) as total_sum
from
  transactions
where
  user_id = {{tableTransactions.selectedRow.data.user_id}}