select
  t.*,
  f.*,
  u.lat as user_lat_,
  u.long user_long_
from
  transactions t
  inner join fraud_transactions f on t.id = f.transaction_id
  inner join users u on f.user_id = u.id
where
  f.is_fraud -- user filters
  and (
    f.user_id = {{textInputUserId.value}}
    or {{!textInputUserId.value}}
  )
  and (
    f.reason like any ({{multiselectFraudReason.value}})
    or {{multiselectFraudReason.value.length}} = 0
  )
  and (
    reviewed = (case when {{switchShowUnreviewed.value}} then false else null end)
    or not {{switchShowUnreviewed.value}}
  ) -- logic to handle if no date is inputted in filter
  and (
    (
      (t.date >= {{dateRangeTransaction.value.start!==""? dateRangeTransaction.value.start:'2000-01-01' }} and t.date <= {{(dateRangeTransaction.value.end!==""? dateRangeTransaction.value.end:'2050-01-01')}} )
    )
      )
limit {{tableTransactions.pageSize}}
offset {{tableTransactions.paginationOffset}}