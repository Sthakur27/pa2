let points = [];
let len = {{formatDataAsArray(getTransactions.data).length}};
for (var i = 0; i <= len; i++) {
  points.push({
    x: {{getTransactions.data.lat}}[i],
    y: {{getTransactions.data.long}}[i]
  });
}

return points