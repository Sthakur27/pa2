<GlobalFunctions>
  <Folder id="getDataQueries">
    <SqlQueryUnified
      id="getCCDetails"
      query={include("./lib/getCCDetails.sql", "string")}
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getFraudCount"
      query={include("./lib/getFraudCount.sql", "string")}
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getFraudList"
      query={include("./lib/getFraudList.sql", "string")}
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      runWhenPageLoads={true}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getKycApplicationStatus"
      query={include("./lib/getKycApplicationStatus.sql", "string")}
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      showFailureToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getSARCount"
      query={include("./lib/getSARCount.sql", "string")}
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getTransactionDetails"
      query={include("./lib/getTransactionDetails.sql", "string")}
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      runWhenPageLoads={true}
      showFailureToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getTransactionHistory"
      query={include("./lib/getTransactionHistory.sql", "string")}
      queryTimeout="10001"
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      showFailureToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getTransactionsByDate"
      query={include("./lib/getTransactionsByDate.sql", "string")}
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      showFailureToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getUnfilteredFraudCount"
      query={include("./lib/getUnfilteredFraudCount.sql", "string")}
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getUserStats"
      query={include("./lib/getUserStats.sql", "string")}
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      showFailureToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
  </Folder>
  <Folder id="updateData">
    <SqlQueryUnified
      id="closeCC"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"close_date","value":"{{moment().format(\'L\')}}"},{"key":"close_reason","value":"Fraud"},{"key":"closed_by","value":"{{current_user.fullName}}"},{"key":"status","value":"closed"}]'
      }
      confirmationMessage="Are you sure you want to close this credit card?"
      editorMode="gui"
      filterBy={
        '[{"key":"cc_number","value":"{{tableTransactions.selectedRow.data.cc_number}}","operation":"="}]'
      }
      requireConfirmation={true}
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      runWhenModelUpdates={false}
      tableName="credit_cards_new"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getCCDetails"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <RESTQuery
      id="createSARFile"
      body={
        '[{"key":"address","value":"{{formSAR.data.inputAddress}}"},{"key":"amount","value":"{{formSAR.data.inputAmount}}"},{"key":"email","value":"{{formSAR.data.inputEmail}}"},{"key":"incident_date","value":"{{formSAR.data.inputIncidentDate}}"},{"key":"name","value":"{{formSAR.data.inputName}}"},{"key":"narrative","value":"{{formSAR.data.inputNarrative}}"},{"key":"occupation","value":"{{formSAR.data.inputOccupation}}"},{"key":"ssn","value":"{{formSAR.data.inputSSN}}"},{"key":"type_code","value":"{{formSAR.data.inputTypeCode}}"}]'
      }
      bodyType="json"
      query="fintech/sar_responses"
      resourceName="759d9065-638d-433d-a79a-02cc360b7cee"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      successMessage="Success! SAR form has been filed with FinCen for user {{tableTransactions.selectedRow.data.user_id}}"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      type="POST"
    />
    <SqlQueryUnified
      id="flagAccount"
      actionType="UPDATE_BY"
      changeset={'[{"key":"account_status","value":"flagged"}]'}
      confirmationMessage="Are you sure you want to flag account {{tableTransactions.selectedRow.data.user_id}}?"
      editorMode="gui"
      filterBy={
        '[{"key":"id","value":"{{tableTransactions.selectedRow.data.user_id}}","operation":"="}]'
      }
      requireConfirmation={true}
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      runWhenModelUpdates={false}
      tableName="users"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getTransactionDetails"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <Function
      id="recordUpdatesFormatter"
      funcBody={include("./lib/recordUpdatesFormatter.js", "string")}
    />
    <SqlQueryUnified
      id="submitChangesReviewed"
      actionType="BULK_UPDATE_BY_KEY"
      bulkUpdatePrimaryKey="transaction_id"
      confirmationMessage="This will update {{tableTransactions.recordUpdates.length}} transaction. Do you want to continue?"
      editorMode="gui"
      filterBy={
        '[{"key":"transaction_id","value":"{{tableTransactions.recordUpdates}}","operation":"="}]'
      }
      records="{{recordUpdatesFormatter.value}}"
      requireConfirmation={true}
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      runWhenModelUpdates={false}
      tableName="fraud_transactions"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getFraudList"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <Folder id="helperFunctions">
    <Function
      id="mapHelper"
      funcBody={include("./lib/mapHelper.js", "string")}
    />
  </Folder>
  <Instrumentation
    id="accountFreezeAuditTrail"
    jsonBody="{
	time: {{ moment.now() }},
	user_email: {{ current_user.email }},
  fraud_ticket: {{tableTransactions.selectedRow.data.id}}
}"
    properties={[
      {
        ordered: [{ pluginId: "freezeAccountButton" }, { property: "submit" }],
      },
    ]}
  />
  <SqlQueryUnified
    id="getUniqueNames"
    query={include("./lib/getUniqueNames.sql", "string")}
    resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="is_fraud"
    query={include("./lib/is_fraud.sql", "string")}
    resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
</GlobalFunctions>
