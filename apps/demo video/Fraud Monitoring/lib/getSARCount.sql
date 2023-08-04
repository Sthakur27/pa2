select
  count(*)
from
  special_asset_loans
where
  first_name = {{getTransactionDetails.data.first_name['0']}}
  and last_name = {{getTransactionDetails.data.last_name['0'] }}