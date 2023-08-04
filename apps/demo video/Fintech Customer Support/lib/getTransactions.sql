select
  *,
  case when is_fraud is null then false else is_fraud end as is_fraud_new,
  case when is_fraud is null then 'blue' else 'red' end as is_fraud_color
from
  transactions
  left join fraud_transactions on transactions.id = fraud_transactions.transaction_id
where
  transactions.user_id = {{userTable.selectedRow.data.id}}