select
  date_trunc('month', date) as month,
  cc_number,
  sum(amount) as total_transaction_amount,
  count(*) as total_transactions
from
  transactions
where
  transactions.user_id = {{userTable.selectedRow.data.id}}
  and cc_type != 'laser'
group by
  1,
  2
order by
  1 desc