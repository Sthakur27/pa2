const points = {{coords.value}};
const amounts = {{getTransactions.data.amount}};
const action_required = {{getTransactions.data.is_fraud_new}};
const color = {{getTransactions.data.is_fraud_color}};
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
        action_required: action_required[i],
        color: color[i],
        size: ((amounts[i]-amount_details.min) / (amount_details.range))*15 +10
      },
      geometry: {
        type: 'Point',
        coordinates: [p.y, p.x]
      }
    }})
  }
} else {
  return undefined
}
