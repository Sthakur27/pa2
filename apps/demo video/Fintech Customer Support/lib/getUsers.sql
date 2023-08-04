select
  first_name || ' ' || last_name as NAME,
  users.*,
  application_status,
  application_id,
  sum(amount) as total_transaction_amount,
  min(date) as first_transaction,
  count(distinct transactions.id) as total_transactions
from
  users
  left join transactions on transactions.user_id = users.id
  left join kyc_applications on kyc_applications.user_id = users.id
where
  (
    first_name || ' ' || last_name ilike {{'%' + nameInput.value + '%'}}
    or users.id ilike {{'%' + nameInput.value + '%'}}
  )
  and (
    users.account_status = {{accountStatus.value}}
    or {{!accountStatus.value}}
  )
  and (
    users.email = {{emailInput.value}}
    or {{!emailInput.value}}
  )
  and (
    kyc_applications.application_status = {{applicationStatusInput.value}}
    OR {{!applicationStatusInput.value}}
  )
group by
  1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17
order by
  total_transactions desc
limit
  {{ userTable.pageSize }} offset {{ userTable.paginationOffset }}