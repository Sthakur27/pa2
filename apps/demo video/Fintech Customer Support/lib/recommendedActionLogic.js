if (!userTable.selectedRow.data) return
const account_status = userTable.selectedRow.data.account_status;
const app_status = userTable.selectedRow.data.application_status;

if (account_status == 'flagged' && (app_status == 'review required' || app_status == 'pending review' || app_status == 'submitted')) {
  tabsRecommendedActions2.setCurrentViewIndex(0);
} else if (account_status == 'flagged' && (app_status == 'approved' || app_status == 'rejected' || app_status === null)) {
  tabsRecommendedActions2.setCurrentViewIndex(1);
} else if (account_status == 'active' && (app_status == 'review required' || app_status == 'pending review' || app_status == 'submitted')) {
  tabsRecommendedActions2.setCurrentViewIndex(2);
}
else {
  tabsRecommendedActions2.setCurrentViewIndex(3); 
}
;