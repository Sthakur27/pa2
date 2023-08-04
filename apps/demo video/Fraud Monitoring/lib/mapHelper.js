
//center = [long, lan]

var center = [{{parseInt(getTransactionDetails.data.user_long)}},{{parseInt(getTransactionDetails.data.user_lat)}}];
var radius = 1000;
var options = {steps: 30, units: 'kilometers', properties: {foo: 'bar'}};
//Using 3rd party library Turf
var circle = turf.circle(center, radius, options);

return circle