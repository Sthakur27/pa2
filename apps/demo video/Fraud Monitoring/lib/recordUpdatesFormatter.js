const keys_to_keep = ['reviewed', 'transaction_id', 'user_id', 'reason', 'notes', 'is_fraud'];
const data = {{tableTransactions.recordUpdates}}
      
const redux1 = list => list.map(o => Object.fromEntries(
    keys_to_keep.map(k => [k, o[k]])
));

return (redux1(data)); 

