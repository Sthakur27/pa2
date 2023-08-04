<App>
  <Include src="./functions.rsx" />
  <UrlFragments
    id="$urlFragments"
    value={{ ordered: [{ userId: "{{textInputUserId.value}}" }] }}
  />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    sticky={false}
    style={{ ordered: [{ canvas: "#ffffff" }] }}
    type="main"
  >
    <Button
      id="buttonSubmitChanges"
      disabled="{{tableTransactions.recordUpdates.length==0}}"
      hidden="{{finTechNavBar1.userPermission.user.groups['0'].name=='Customer Support Rep'}}"
      iconBefore="save"
      style={{ ordered: [{ background: "success" }] }}
      styleVariant="solid"
      text="Submit Changes"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="submitChangesReviewed"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text16"
      _defaultValue=""
      hidden="{{finTechNavBar1.userPermission.user.groups['0'].name!=='Customer Support Rep'}}"
      value="You dont have access to see this page"
      verticalAlign="center"
    />
    <Text
      id="text14"
      _defaultValue=""
      hidden="{{finTechNavBar1.userPermission.user.groups['0'].name=='Customer Support Rep'}}"
      horizontalAlign="right"
      style={{ ordered: [{ color: "success" }] }}
      value="*{{tableTransactions.recordUpdates.length}} {{tableTransactions.recordUpdates.length==1? 'row' : 'rows'}} changed*"
      verticalAlign="center"
    />
    <Include src="./src/containerAccountActions.rsx" />
    <Link
      id="linkRevertChanges"
      disabled="{{tableTransactions.recordUpdates.length===0}}"
      hidden="{{finTechNavBar1.userPermission.user.groups['0'].name=='Customer Support Rep'}}"
      horizontalAlign="right"
      iconBefore="rollback"
      style={{ ordered: [{ text: "rgba(147, 148, 148, 1)" }] }}
      text="Revert Changes"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getFraudList"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Container
      id="collapsibleContainerDetails"
      hidden="{{finTechNavBar1.userPermission.user.groups['0'].name=='Customer Support Rep'}}"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ border: "secondary" }] }}
    >
      <Header>
        <Text
          id="collapsibleTitle4"
          _defaultValue=""
          style={{ ordered: [{ color: "tertiary" }] }}
          value="#### Details"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle4"
          _defaultValue={false}
          horizontalAlign="right"
          iconForFalse="down"
          iconForTrue="up"
          iconPosition="replace"
          style={{ ordered: [{ border: "tertiary" }, { label: "tertiary" }] }}
          styleVariant="outline"
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ collapsibleContainerDetails.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="collapsibleContainerDetails"
            pluginInstance={null}
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="76245" viewKey="View 1">
        <KeyValueMap
          id="keyValueTransactionDetails"
          data="{{getTransactionDetails.data}}"
          keyTitle=""
          prevRowFormats={{
            ordered: [
              { "Transaction Amount": "usd_dollars" },
              { date: "date" },
              { amount: "usd_dollars" },
              { email: "usd_dollars" },
            ],
          }}
          prevRowMappers={{
            ordered: [
              {
                user_address:
                  "{{self + ', ' + getTransactionDetails.data.user_state }}",
              },
              {
                account_status:
                  '{{self == \'active\'? `<a style="border:1px; color:darkgreen; background-color: #D7EAE0 ; border-color: #D7EAE0 border-style:solid; border-color:green; border-radius: 15px; padding-left: 10px; padding-right: 10px;"> ${self} </a>` : `<a style="border:1px; color:darkred; border-color:#F8DBD8; background-color: #F8DBD8; border-style:solid; border-radius: 15px; padding-left: 10px; padding-right: 10px;"> ${self} </a>`}}',
              },
              { account_id: "{{getUserStats.data.round}}" },
              { ssn: "" },
              { date: "" },
              { user_long: "" },
              {
                distance_in_km:
                  '{{(self)<1000 ? `<a style="border:1px; color:darkgreen; background-color: #D7EAE0 ; border-color: #D7EAE0 border-style:solid; border-color:green; border-radius: 15px; padding-left: 10px; padding-right: 10px;"> ${(self)} km </a>` : `<a style="border:1px; color:darkred; border-color:#F8DBD8; background-color: #F8DBD8;border-style:solid;  border-radius: 15px; padding-left: 10px; padding-right: 10px;"> ${(self)} km </a>`}}',
              },
              {
                status:
                  '{{self=="success" ? `<a style="border:1px; color:darkgreen; background-color: #D7EAE0 ; border-color: #D7EAE0 border-style:solid; border-color:green; border-radius: 15px; padding-left: 10px; padding-right: 10px;"> ${self} </a>` : `<a style="border:1px; color:darkred; border-color:#F8DBD8; background-color: #F8DBD8; border-style:solid;  border-radius: 15px; padding-left: 10px; padding-right: 10px;"> ${self} </a>`}}',
              },
              {
                amount:
                  '{{self<5000 ? `<a style="border:1px; color:darkgreen; background-color: #D7EAE0 ; border-color: #D7EAE0; border-style:solid; ; border-radius: 15px; padding-left: 10px; padding-right: 10px;"> ${self} </a>` : `<a style="border:1px; color:darkred; background-color: #F8DBD8; border-style:solid; border-color:#F8DBD8; border-radius: 15px; padding-left: 10px; padding-right: 10px;"> ${self} </a>`}}',
              },
              { email: "{{getUserStats.data.round[0]}}" },
              {
                fraud_reason:
                  '<a style="border:1px; color: grey; border-style:solid; ; border-radius: 15px; padding-left: 10px; padding-right: 10px;"> <b>{{tableTransactions.selectedRow.data.reason}}</b></a>',
              },
            ],
          }}
          rowFormats={{
            ordered: [
              { "Transaction Amount": "usd_dollars" },
              { date: "date" },
              { amount: "usd_dollars" },
              { email: "usd_dollars" },
            ],
          }}
          rowHeaderNames={{
            ordered: [
              { user_address: "Home Address" },
              { a: "Customer" },
              { b: "Account Status" },
              { c: "Transaction Status" },
              { account_status: "Account Status" },
              { account_id: "Avg Trans Amount" },
              { ssn: "long" },
              { date: "Date" },
              { user_long: "" },
              { distance_in_km: "Distance from Home" },
              { status: "Status" },
              { amount: "Amount" },
              { type: "Type" },
              { email: "Avg Trans Amt" },
              { fraud_reason: "Fraud Reason" },
            ],
          }}
          rowMappers={{
            ordered: [
              {
                user_address:
                  "{{self + ', ' + getTransactionDetails.data.user_state }}",
              },
              {
                account_status:
                  '{{self == \'active\'? `<a style="border:1px; color:darkgreen; background-color: #D7EAE0 ; border-color: #D7EAE0 border-style:solid; border-color:green; border-radius: 15px; padding-left: 10px; padding-right: 10px;"> ${self} </a>` : `<a style="border:1px; color:darkred; border-color:#F8DBD8; background-color: #F8DBD8; border-style:solid; border-radius: 15px; padding-left: 10px; padding-right: 10px;"> ${self} </a>`}}',
              },
              { account_id: "{{getUserStats.data.round}}" },
              { ssn: "" },
              { date: "" },
              { user_long: "" },
              {
                distance_in_km:
                  '{{(self)<1000 ? `<a style="border:1px; color:darkgreen; background-color: #D7EAE0 ; border-color: #D7EAE0 border-style:solid; border-color:green; border-radius: 15px; padding-left: 10px; padding-right: 10px;"> ${(self)} km </a>` : `<a style="border:1px; color:darkred; border-color:#F8DBD8; background-color: #F8DBD8;border-style:solid;  border-radius: 15px; padding-left: 10px; padding-right: 10px;"> ${(self)} km </a>`}}',
              },
              {
                status:
                  '{{self=="success" ? `<a style="border:1px; color:darkgreen; background-color: #D7EAE0 ; border-color: #D7EAE0 border-style:solid; border-color:green; border-radius: 15px; padding-left: 10px; padding-right: 10px;"> ${self} </a>` : `<a style="border:1px; color:darkred; border-color:#F8DBD8; background-color: #F8DBD8; border-style:solid;  border-radius: 15px; padding-left: 10px; padding-right: 10px;"> ${self} </a>`}}',
              },
              {
                amount:
                  '{{self<5000 ? `<a style="border:1px; color:darkgreen; background-color: #D7EAE0 ; border-color: #D7EAE0; border-style:solid; ; border-radius: 15px; padding-left: 10px; padding-right: 10px;"> ${self} </a>` : `<a style="border:1px; color:darkred; background-color: #F8DBD8; border-style:solid; border-color:#F8DBD8; border-radius: 15px; padding-left: 10px; padding-right: 10px;"> ${self} </a>`}}',
              },
              { email: "{{getUserStats.data.round[0]}}" },
              {
                fraud_reason:
                  '<a style="border:1px; color: grey; border-style:solid; ; border-radius: 15px; padding-left: 10px; padding-right: 10px;"> <b>{{tableTransactions.selectedRow.data.reason}}</b></a>',
              },
            ],
          }}
          rowMappersRenderAsHTML={{
            ordered: [
              { amount: true },
              { user_long: true },
              { account_status: true },
              { status: true },
              { fraud_reason: true },
              { distance_in_km: true },
            ],
          }}
          rows={[
            "a",
            "b",
            "c",
            "",
            "Account Status",
            "Transas",
            "Trans",
            "Transaction Status",
            "Fraud Triggered By",
            "Transaction Type",
            "Transaction Amount",
            "Customer Since",
            "Customer Address",
            "user_id",
            "transaction_id",
            "is_fraud",
            "reviewed",
            "notes",
            "reason",
            "id",
            "fraud_reason",
            "account_status",
            "status",
            "cc_type",
            "cc_number",
            "date",
            "type",
            "currency",
            "amount",
            "account_id",
            "lat",
            "long",
            "email",
            "last_name",
            "first_name",
            "user_address",
            "user_long",
            "ssn",
            "language",
            "job_sector",
            "user_state",
            "user_country",
            "user_lat",
            "error",
            "message",
            "position",
            "queryExecutionMetadata",
            "source",
            "distance_in_km",
            "statusCode",
            "data",
          ]}
          rowVisibility={{
            ordered: [
              { "": true },
              { user_address: true },
              { a: true },
              { notes: false },
              { b: true },
              { user_country: false },
              { c: true },
              { reason: true },
              { account_status: true },
              { "Account Status": true },
              { message: true },
              { cc_number: false },
              { error: true },
              { job_sector: false },
              { Trans: true },
              { position: true },
              { data: true },
              { user_lat: false },
              { account_id: true },
              { ssn: false },
              { date: true },
              { user_id: false },
              { is_fraud: false },
              { user_long: false },
              { currency: false },
              { "Customer Address": true },
              { distance_in_km: true },
              { status: true },
              { last_name: false },
              { "Transaction Status": true },
              { reviewed: false },
              { amount: true },
              { "Customer Since": true },
              { language: false },
              { cc_type: false },
              { "Transaction Amount": true },
              { Transas: true },
              { first_name: false },
              { type: true },
              { source: true },
              { id: false },
              { "Fraud Triggered By": true },
              { transaction_id: false },
              { long: false },
              { "Transaction Type": true },
              { email: true },
              { user_state: false },
              { fraud_reason: true },
              { statusCode: true },
              { lat: false },
              { queryExecutionMetadata: true },
            ],
          }}
          style={{
            ordered: [
              { "primary-background": "#ffffff" },
              { "border-color": "#ffffff" },
              { "primary-text": "rgba(69, 69, 69, 1)" },
            ],
          }}
          valueTitle=""
        />
        <Map
          id="mapTransactionLocation"
          geoJson={
            '{\n   "type":"FeatureCollection",\n   "features":[\n     \n      {{mapHelper.value}}\n     \n   ]\n}'
          }
          geoJsonLayerStyle={
            "{\n  \n  'paint': {\n    'fill-color': '#128747',\n      \"fill-opacity\":0.1\n  }\n}"
          }
          latitude="{{parseInt(tableTransactions.selectedRow.data.lat)}}"
          latitudeColumnName="lat"
          longitude="{{parseInt(tableTransactions.selectedRow.data.long)}}"
          longitudeColumnName="long"
          points={
            '[{ long:{{tableTransactions.selectedRow.data.long}},lat: {{tableTransactions.selectedRow.data.lat}}, marker:   "📍" }, { long: {{getTransactionDetails.data.user_long}},lat: {{getTransactionDetails.data.user_lat}}, \nmarker:   "🏠"} ]'
          }
          zoom="1"
        />
      </View>
    </Container>
    <Include src="./src/containerFilters.rsx" />
    <TableLegacy
      id="tableTransactions"
      _columns={[
        "reviewed",
        "id",
        "date",
        "status",
        "reason",
        "user_id",
        "transaction_id",
        "account_id",
        "cc_type",
        "cc_number",
        "type",
        "currency",
        "amount",
        "is_fraud",
        "notes",
        "lat",
        "long",
        "user_lat_",
        "user_long_",
        "date_demo_day",
        "model_output",
        "model_accuracy",
      ]}
      _columnSummaryTypes={{
        ordered: [
          { cc_number: "" },
          { status: "" },
          { amount: "sum" },
          { "Custom Column 2": "checkedCount" },
          { reviewed: "checkedCount" },
          { notes: "" },
          { reason: "" },
        ],
      }}
      _columnSummaryValues={{
        ordered: [
          { cc_number: "" },
          { status: "" },
          { amount: "" },
          { "Custom Column 2": "" },
          { reviewed: "" },
          { notes: "" },
          { reason: "" },
        ],
      }}
      _columnVisibility={{
        ordered: [
          { notes: true },
          { reason: true },
          { account_status: false },
          { cc_number: false },
          { job_sector: false },
          { account_id: false },
          { date: true },
          { model_accuracy: false },
          { user_id: false },
          { is_fraud: false },
          { user_long_: false },
          { currency: false },
          { state: false },
          { date_demo_day: true },
          { status: true },
          { user_lat_: false },
          { last_name: false },
          { address: false },
          { job_title: false },
          { country: false },
          { reviewed: true },
          { model_output: false },
          { amount: true },
          { language: false },
          { cc_type: false },
          { first_name: false },
          { type: false },
          { id: false },
          { transaction_id: false },
          { long: false },
          { email: false },
          { lat: false },
        ],
      }}
      _compatibilityMode={false}
      columnAlignment={{
        ordered: [
          { cc_number: "left" },
          { status: "left" },
          { amount: "right" },
          { "Custom Column 2": "center" },
          { reviewed: "center" },
          { notes: "left" },
          { reason: "left" },
        ],
      }}
      columnColors={{
        ordered: [
          { notes: "" },
          { reason: "" },
          { account_status: "" },
          { cc_number: "" },
          { job_sector: "" },
          { account_id: "" },
          { date: "" },
          { model_accuracy: "" },
          { user_id: "" },
          { is_fraud: "" },
          { user_long_: "" },
          { currency: "" },
          { state: "" },
          { date_demo_day: "" },
          { status: "" },
          { user_lat_: "" },
          { last_name: "" },
          { address: "" },
          { "Custom Column 1": "" },
          { job_title: "" },
          { country: "" },
          { "Custom Column 2": "" },
          { reviewed: "" },
          { model_output: "" },
          { amount: "" },
          { language: "" },
          { cc_type: "" },
          { first_name: "" },
          { type: "" },
          { id: "" },
          { transaction_id: "" },
          { long: "" },
          { email: "" },
          { lat: "" },
        ],
      }}
      columnEditable={{
        ordered: [
          { "Custom Column 1": true },
          { "Custom Column 2": true },
          { reviewed: true },
          { notes: true },
          { reason: true },
        ],
      }}
      columnFormats={{
        ordered: [
          { cc_number: "TextDataCell" },
          { status: "SingleTagDataCell" },
          { amount: "CurrencyDataCell" },
          { "Custom Column 2": "CheckboxDataCell" },
          { reviewed: "CheckboxDataCell" },
          { notes: "TextMultiDataCell" },
          { reason: "SingleTagDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { notes: "Notes" },
          { reason: "Reason" },
          { cc_number: "CC Number" },
          { account_id: "Account Id" },
          { date: "Date" },
          { model_accuracy: "Model Accuracy\n" },
          { user_id: "User Id" },
          { status: "Status" },
          { "Custom Column 1": "Notes" },
          { "Custom Column 2": "Reviewed" },
          { reviewed: "Reviewed" },
          { model_output: "Model Output" },
          { amount: "Amount" },
          { cc_type: "CC Type" },
          { type: "Type" },
          { id: "Id" },
          { transaction_id: "Transaction Id" },
        ],
      }}
      columnMappers={{
        ordered: [
          { status: "" },
          {
            cc_number:
              "{{current_user.groups.map(group => group.name).includes('Administrator')? self: self.replace(self.substring(4,14), \"*******\")}}",
          },
          { date: "{{moment(self).fromNow()}}" },
          { "Custom Column 2": "" },
          { reason: "" },
        ],
      }}
      columns={[
        "reviewed",
        "id",
        "date",
        "status",
        "reason",
        "user_id",
        "transaction_id",
        "account_id",
        "cc_type",
        "cc_number",
        "type",
        "currency",
        "amount",
        "is_fraud",
        "notes",
        "lat",
        "long",
        "user_lat_",
        "user_long_",
        "date_demo_day",
        "model_output",
        "model_accuracy",
      ]}
      columnTypeProperties={{
        ordered: [
          { cc_number: { ordered: [] } },
          {
            status: {
              ordered: [
                { optionData: "{{ currentColumn }}" },
                { colorMode: "mapped" },
                { allowCustomValue: true },
                { optionLabels: null },
                {
                  optionColors:
                    '{{item==\'success\'? "#D7EAE0": item==\'pending\'? "#f8f8f8": item="denied"? "#F8DBD8":"F8DBD8"}}',
                },
                { optionValues: null },
              ],
            },
          },
          {
            amount: {
              ordered: [
                { showSeparators: true },
                { currency: "USD" },
                { padDecimal: true },
              ],
            },
          },
          { "Custom Column 2": { ordered: [{ falseDisplayValue: "x" }] } },
          { reviewed: { ordered: [{ falseDisplayValue: "x" }] } },
          { notes: { ordered: [] } },
          {
            reason: {
              ordered: [
                { optionData: "{{ currentColumn }}" },
                { colorMode: "mapped" },
                { allowCustomValue: true },
                { optionLabels: "" },
                { optionColors: '{{"#F5F5F5"}}' },
                { optionValues: null },
              ],
            },
          },
        ],
      }}
      columnVisibility={{
        ordered: [
          { notes: true },
          { reason: true },
          { account_status: false },
          { cc_number: false },
          { job_sector: false },
          { account_id: false },
          { date: true },
          { model_accuracy: true },
          { user_id: false },
          { is_fraud: false },
          { user_long_: false },
          { currency: false },
          { state: false },
          { date_demo_day: true },
          { status: true },
          { user_lat_: false },
          { last_name: false },
          { address: false },
          { job_title: false },
          { country: false },
          { reviewed: true },
          { model_output: true },
          { amount: true },
          { language: false },
          { cc_type: false },
          { first_name: false },
          { type: false },
          { id: false },
          { transaction_id: false },
          { long: false },
          { email: false },
          { lat: false },
        ],
      }}
      columnWidths={[
        { object: { id: "cc_type", value: 97.296875 } },
        { object: { id: "transaction_id", value: 179 } },
        { object: { id: "id", value: 241.486328125 } },
        { object: { id: "cc_number", value: 133.087890625 } },
        { object: { id: "date", value: 113.984375 } },
        { object: { id: "status", value: 93.3125 } },
        { object: { id: "reason", value: 160.9296875 } },
        { object: { id: "reviewed", value: 97.5625 } },
        { object: { id: "amount", value: 119.5625 } },
      ]}
      customButtonName=""
      data="{{ getFraudList.data }}"
      doubleClickToEdit={true}
      events={[
        {
          ordered: [
            { event: "saveChanges" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "submitChangesReviewed" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden="{{finTechNavBar1.userPermission.user.groups['0'].name=='Customer Support Rep'}}"
      pageSize={17}
      serverPaginated={true}
      showBoxShadow={false}
      style={{
        ordered: [
          { border: "secondary" },
          { headerBackground: "surfacePrimary" },
          { headerText: "tertiary" },
          { selectedRowBackground: "canvas" },
        ],
      }}
      totalRowCount="{{getFraudCount.data.count['0']}}"
    />
    <Include src="./src/collapsibleContainerTransactionHistory.rsx" />
    <Include src="./src/collapsibleContainerCreditCardDetails.rsx" />
    <Include src="./src/collapsibleContainerCustomerProfile.rsx" />
    <Modal
      id="modalForSAR"
      buttonText="Open Modal"
      hidden="true"
      modalHeightType="auto"
      modalWidth="60%"
    >
      <Form
        id="formSAR"
        hoistFetching={true}
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
        style={{ ordered: [{ border: "secondary" }] }}
      >
        <Header>
          <Text
            id="formTitle2"
            _defaultValue=""
            style={{ ordered: [{ color: "tertiary" }] }}
            value="#### SAR Form"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <Text
            id="text7"
            _defaultValue=""
            style={{ ordered: [{ color: "tertiary" }] }}
            value="**Customer Details**"
            verticalAlign="center"
          />
          <TextInput
            id="inputName"
            _defaultValue=""
            customValidation="{{inputName.value===getTransactionDetails.data.first_name+ ' ' +getTransactionDetails.data.last_name? '': 'Name does not match record' }}"
            label="Name"
            placeholder="Enter value"
            style={{ ordered: [{ border: "secondary" }] }}
            value="{{getTransactionDetails.data.first_name +  ' ' + getTransactionDetails.data.last_name}}"
          />
          <TextInput
            id="inputEmail"
            _defaultValue=""
            label="Email"
            patternType="email"
            placeholder="Enter value"
            style={{ ordered: [{ border: "secondary" }] }}
            value="{{getTransactionDetails.data.email[0]}}"
          />
          <TextInput
            id="inputAddress"
            _defaultValue=""
            label="Address"
            minLength="5"
            placeholder="Enter value"
            style={{ ordered: [{ border: "secondary" }] }}
            value="{{getTransactionDetails.data.user_address[0] }}"
          />
          <TextInput
            id="inputOccupation"
            _defaultValue=""
            label="Occupation"
            maxLength=""
            minLength=""
            placeholder="Enter value"
            style={{ ordered: [{ border: "secondary" }] }}
            value="{{getTransactionDetails.data.job_sector[0]}}"
          />
          <TextInput
            id="inputSSN"
            _defaultValue=""
            label="SSN"
            maxLength="9"
            minLength="9"
            placeholder="Enter value"
            style={{ ordered: [{ border: "secondary" }] }}
            value="{{getTransactionDetails.data.ssn[0]}}"
          />
          <Divider id="divider1" />
          <Text
            id="text8"
            _defaultValue=""
            style={{ ordered: [{ color: "tertiary" }] }}
            value="**Incident Details**"
            verticalAlign="center"
          />
          <TextInput
            id="inputAmount"
            _defaultValue=""
            label="Amount"
            placeholder="Enter value"
            style={{ ordered: [{ border: "secondary" }] }}
            textBefore="$"
            value="{{getTransactionDetails.data.amount[0]}}"
          />
          <Date
            id="inputIncidentDate"
            dateFormat="MMM d, yyyy"
            datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
            iconBefore="calendar"
            label="Date of Incident"
            style={{ ordered: [{ border: "secondary" }] }}
            value="{{tableTransactions.selectedRow.data.date}}"
          />
          <Select
            id="inputTypeCode"
            _defaultValue={null}
            allowDeselect={true}
            itemMode="static"
            label="Type Code"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
            style={{ ordered: [{ border: "secondary" }] }}
          >
            <Option id="af16a" value="ACH" />
            <Option id="f7041" value="Check" />
            <Option
              id="62362"
              disabled={false}
              hidden={false}
              value="Consumer loan"
            />
            <Option
              id="944cf"
              disabled={false}
              hidden={false}
              value="Credit/Debit Card"
            />
            <Option id="e039e" value="Wire" />
          </Select>
          <TextArea
            id="inputNarrative"
            _defaultValue=""
            autoResize={true}
            label="Narrative"
            labelPosition="top"
            minLines={2}
            placeholder="Enter value"
            required={true}
            style={{ ordered: [{ border: "secondary" }] }}
            value="{{tableTransactions.selectedRow.data.reason}}"
          />
        </Body>
        <Footer>
          <Button
            id="formButtonSubmitToFinCen"
            style={{ ordered: [{ background: "success" }] }}
            submit={true}
            submitTargetId="formSAR"
            text="Submit to FinCen"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="createSARFile"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="submit"
          method="close"
          params={{ ordered: [] }}
          pluginId="modalForSAR"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
  </Frame>
</App>
