select
  date_trunc('month', DATE) as month,
  count(*)
from
  transactions
where
  user_id = {{tableTransactions.selectedRow.data.user_id}}
group by
  1
order by
  month