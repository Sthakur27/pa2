const selected_point = mapboxMap1.selectedPoint;
//just finding based on lat for now
let index = _.findIndex(transactionTable.data.lat, (e) => {
    return e == selected_point.x}, 0);
tabbedContainer3.setCurrentViewIndex(1)
transactionTable.selectRow(index)
return index



