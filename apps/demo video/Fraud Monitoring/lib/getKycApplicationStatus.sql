select
  *
from
  kyc_applications
where
  user_id = {{tableTransactions.selectedRow.data.user_id}}