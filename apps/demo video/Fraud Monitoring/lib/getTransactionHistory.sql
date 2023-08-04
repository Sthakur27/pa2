select
  *
from
  transactions
where
  user_id = {{tableTransactions.selectedRow.data.user_id}}
order by
  date desc