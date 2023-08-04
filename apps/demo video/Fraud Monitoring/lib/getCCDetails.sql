select
  *
from
  credit_cards_new
where
  user_id = {{tableTransactions.selectedRow.data.user_id}}
  and cc_number = {{tableTransactions.selectedRow.data.cc_number}}