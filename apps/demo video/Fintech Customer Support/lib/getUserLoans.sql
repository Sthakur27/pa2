select
  count(*)
from
  kyc_applications
where
  kyc_applications.user_id = {{userTable.selectedRow.data.id}}