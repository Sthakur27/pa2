let points = new Object();
points.x = {{getTransactions.data.lat}};
points.y = {{getTransactions.data.long}};
const amounts = {{getTransactions.data.amount}};
const action_required = {{getTransactions.data.is_fraud_new}} ? 'red' : 'blue';
let amount_details = {
  min: Math.min(...amounts),
  range: Math.max(...amounts) - Math.min(...amounts)
}
if (points && points.length) {
  return {
    type: "FeatureCollection",
    features: points.map((p,i)=>{ return {
      type: 'Feature',
      properties: {
        action_required: action_required[i].toString(),
        size: ((amounts[i]-amount_details.min) / (amount_details.range))*15 +10
      },
      geometry: {
        type: 'Point',
        coordinates: [p.y, p.x],
        color: action_required
      }
    }})
  }
} else {
  return undefined
}
