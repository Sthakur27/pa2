<GlobalFunctions>
  <Folder id="getData">
    <SqlQueryUnified
      id="getAppStatus"
      enableTransformer={true}
      query={include("./lib/getAppStatus.sql", "string")}
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      transformer="return formatDataAsArray(data)"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getCC"
      query={include("./lib/getCC.sql", "string")}
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getSpendOverTime"
      query={include("./lib/getSpendOverTime.sql", "string")}
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getTransactions"
      query={include("./lib/getTransactions.sql", "string")}
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getUserCount"
      query={include("./lib/getUserCount.sql", "string")}
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getUserInfo"
      query={include("./lib/getUserInfo.sql", "string")}
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getUserLoans"
      query={include("./lib/getUserLoans.sql", "string")}
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getUserStatus"
      enableTransformer={true}
      query={include("./lib/getUserStatus.sql", "string")}
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      transformer="return formatDataAsArray(data)"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getUsers"
      query={include("./lib/getUsers.sql", "string")}
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
  </Folder>
  <Folder id="helperQueries">
    <Function id="coords" funcBody={include("./lib/coords.js", "string")} />
    <Function
      id="mapFormatter"
      funcBody={include("./lib/mapFormatter.js", "string")}
    />
    <JavascriptQuery
      id="onPointSelectedTrigger"
      query={include("./lib/onPointSelectedTrigger.js", "string")}
      queryFailureConditions="[]"
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <JavascriptQuery
      id="openCCModal"
      query={include("./lib/openCCModal.js", "string")}
      queryFailureConditions="[]"
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <JavascriptQuery
      id="openCloseModal"
      query={include("./lib/openCloseModal.js", "string")}
      queryFailureConditions="[]"
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <JavascriptQuery
      id="openKYCModal"
      query={include("./lib/openKYCModal.js", "string")}
      queryFailureConditions="[]"
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <JavascriptQuery
      id="openReplaceModal"
      query={include("./lib/openReplaceModal.js", "string")}
      queryFailureConditions="[]"
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <JavascriptQuery
      id="query20"
      query={include("./lib/query20.js", "string")}
      queryFailureConditions="[]"
      resourceName="JavascriptQuery"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <JavascriptQuery
      id="recommendedActionLogic"
      query={include("./lib/recommendedActionLogic.js", "string")}
      queryFailureConditions="[]"
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
  </Folder>
  <Folder id="updateQueries">
    <SqlQueryUnified
      id="addNewCard"
      actionType="INSERT"
      changeset={
        '[{"key":"user_id","value":"{{userTable.selectedRow.data.id}}"},{"key":"open_date","value":"{{moment().format(\'L\')}}"},{"key":"cc_number","value":"{{Math.round(Math.random()*10000000000000)}}"},{"key":"cc_type","value":"{{ccTable.selectedRow.data.cc_type}}"},{"key":"expiration_date","value":"{{moment().add(10, \'years\').format(\'L\')}}"},{"key":"status","value":"open"}]'
      }
      editorMode="gui"
      filterBy={
        '[{"key":"cc_number","value":"{{ccTable.selectedRow.data.cc_number}}","operation":"="}]'
      }
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      runWhenModelUpdates={false}
      successMessage="New Card Created and Sent to Customer"
      tableName="credit_cards_new"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getCC"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <GraphQLQuery
      id="closeCC"
      body={include("./lib/closeCC.gql", "string")}
      graphQLVariables={
        '[{"key":"cc_number","value":"{{ccTable.selectedRow.data.cc_number}}"},{"key":"close_date","value":"{{moment().format(\'YYYY-MM-DD\')}}"},{"key":"close_reason","value":"{{closeReasonSelect.value}}"},{"key":"closed_by","value":"{{current_user.fullName}}"},{"key":"status","value":"closed"}]'
      }
      headers={'[{"key":"","value":""}]'}
      resourceName="791899d0-887b-45a4-ae18-70a6a5bf61fd"
      runWhenModelUpdates={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getCC"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <SqlQueryUnified
      id="form1SubmitToUsers"
      actionType="UPDATE_BY"
      changesetIsObject={true}
      changesetObject="{{ updateUser.data }}"
      editorMode="gui"
      filterBy={
        '[{"key":"id","value":"{{userTable.selectedRow.data.id}}","operation":"="}]'
      }
      resourceName="313b2384-eb49-483c-b331-3ddccf7bc305"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      successMessage="User info updated successfully!"
      tableName="users"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getUsers"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <GraphQLQuery
      id="replaceCC"
      body={include("./lib/replaceCC.gql", "string")}
      graphQLVariables={
        '[{"key":"cc_number","value":"{{ccTable.selectedRow.data.cc_number}}"},{"key":"close_date","value":"{{moment().format(\'YYYY-MM-DD\')}}"},{"key":"replace_reason","value":"{{replaceReasonInput.value}}"},{"key":"closed_by","value":"{{current_user.fullName}}"},{"key":"status","value":"replaced"}]'
      }
      resourceName="791899d0-887b-45a4-ae18-70a6a5bf61fd"
      runWhenModelUpdates={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="addNewCard"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
  </Folder>
  <Folder id="S3Upload">
    <S3Query
      id="s3Upload"
      actionType="upload"
      resourceName="dc7b85fa-ab2c-403b-b408-4365a262bb52"
      runWhenModelUpdates={false}
      successMessage="Document Uploaded"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      uploadData="{{fileInput1.value[0]}}"
      uploadFileName="{{select1.value + ':' + userTable.selectedRow.data.application_id}}"
      uploadFileType="binary"
    >
      <Event
        event="success"
        method="open"
        params={{ ordered: [] }}
        pluginId="KYCNavWarningModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="reset"
        params={{ ordered: [] }}
        pluginId="form3"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </S3Query>
  </Folder>
  <Folder id="Temporary state">
    <State id="state1" />
  </Folder>
</GlobalFunctions>
