select
  users.*,
  first_name || ' ' || last_name as NAME,
  sum(amount) as total_transaction_amount,
  count(*) as total_transactions
from
  transactions
  join users on transactions.user_id = users.id
where
  users.id = {{userTable.selectedRow.data.id}}
group by
  1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14
order by
  total_transactions desc