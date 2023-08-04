select
  *
from
  credit_cards_new
where
  user_id = {{userTable.selectedRow.data.id}}
  and (
    cast(cc_number as varchar) ilike {{'%' + ccInput.value + '%'}}
    or {{!ccInput.value}}
  )
order by
  1 desc