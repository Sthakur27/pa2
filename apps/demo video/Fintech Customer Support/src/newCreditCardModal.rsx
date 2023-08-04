<Modal
  id="newCreditCardModal"
  buttonText="Replace / Close Credit Card"
  hidden="true"
  modalHeightType="auto"
  modalWidth="90%"
  style={{
    ordered: [
      { "primary-surface": "" },
      { "accent-background": "hsl(29, 71%, 48%)" },
    ],
  }}
>
  <Text
    id="text29"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    style={{ ordered: [{ color: "tertiary" }] }}
    value="#### Manage {{userTable.selectedRow.data.name}}'s Credit Cards
Choose a card to replace or close from the list below"
    verticalAlign="center"
  />
  <TextInput
    id="ccInput"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    label="CC Number"
    placeholder="Enter value"
  />
  <TableLegacy
    id="ccTable"
    _columns={[
      "cc_number",
      "cc_type",
      "status",
      "open_date",
      "expiration_date",
      "Custom Column 1",
      "Custom Column 2",
      "user_id",
      "replace_reason",
      "close_reason",
      "closed_by",
      "close_date",
    ]}
    _columnSummaryTypes={{
      ordered: [
        { cc_number: "sum" },
        { "Custom Column 1": "" },
        { status: "" },
      ],
    }}
    _columnSummaryValues={{
      ordered: [{ cc_number: "" }, { "Custom Column 1": "" }, { status: "" }],
    }}
    _columnVisibility={{
      ordered: [
        { open_date: true },
        { cc_number: true },
        { closed_by: true },
        { close_reason: true },
        { user_id: false },
        { replace_reason: true },
        { first_transaction: true },
        { status: true },
        { close_date: true },
        { last_transaction: true },
        { "Custom Column 1": false },
        { "Custom Column 2": false },
        { cc_type: false },
        { expiration_date: true },
      ],
    }}
    _compatibilityMode={false}
    calculatedColumns={["Custom Column 1", "Custom Column 2"]}
    columnAlignment={{
      ordered: [
        { cc_number: "left" },
        { "Custom Column 1": "left" },
        { "Custom Column 2": "left" },
        { status: "left" },
      ],
    }}
    columnColors={{
      ordered: [
        { open_date: "" },
        { cc_number: "" },
        { closed_by: "" },
        { close_reason: "" },
        { user_id: "" },
        { replace_reason: "" },
        { first_transaction: "" },
        { status: "" },
        { close_date: "" },
        { last_transaction: "" },
        { "Custom Column 1": "orange" },
        { "Custom Column 2": "red" },
        { cc_type: "" },
        { expiration_date: "" },
      ],
    }}
    columnEditable={{
      ordered: [{ "Custom Column 1": false }, { "Custom Column 2": false }],
    }}
    columnFormats={{
      ordered: [
        { cc_number: "NumberDataCell" },
        { "Custom Column 1": "button" },
        { "Custom Column 2": "button" },
        { status: "SingleTagDataCell" },
      ],
    }}
    columnHeaderNames={{
      ordered: [
        { cc_number: "CC Number" },
        { closed_by: "Closed By" },
        { close_reason: "Close Reason" },
        { replace_reason: "Replace Reason" },
        { status: "Status" },
        { close_date: "Close Date" },
        { "Custom Column 1": '"Replace?"' },
        { "Custom Column 2": "Close?" },
        { cc_type: "Type" },
        { expiration_date: "Expiration Date" },
      ],
    }}
    columnMappers={{
      ordered: [
        { "Custom Column 1": "Replace" },
        { "Custom Column 2": "Close" },
        { status: "" },
      ],
    }}
    columns={[
      "cc_number",
      "cc_type",
      "status",
      "open_date",
      "expiration_date",
      "Custom Column 1",
      "Custom Column 2",
      "user_id",
      "replace_reason",
      "close_reason",
      "closed_by",
      "close_date",
    ]}
    columnTypeProperties={{
      ordered: [
        {
          cc_number: {
            ordered: [{ showSeparators: false }, { padDecimal: true }],
          },
        },
        { "Custom Column 1": { ordered: [] } },
        {
          status: {
            ordered: [
              { optionData: "{{ currentColumn }}" },
              { colorMode: "auto" },
              { allowCustomValue: true },
              { optionLabels: null },
              { optionColors: null },
              { optionValues: null },
            ],
          },
        },
      ],
    }}
    columnTypeSpecificExtras={{
      ordered: [
        {
          "Custom Column 1": {
            ordered: [{ buttonType: "action" }, { action: "openReplaceModal" }],
          },
        },
        {
          "Custom Column 2": {
            ordered: [{ buttonType: "action" }, { action: "openCloseModal" }],
          },
        },
      ],
    }}
    columnVisibility={{
      ordered: [
        { open_date: true },
        { cc_number: true },
        { closed_by: true },
        { close_reason: true },
        { user_id: false },
        { replace_reason: true },
        { first_transaction: true },
        { status: true },
        { close_date: true },
        { last_transaction: true },
        { "Custom Column 1": false },
        { "Custom Column 2": false },
        { cc_type: false },
        { expiration_date: true },
      ],
    }}
    columnWidths={[{ object: { id: "cc_number", value: 163.46875 } }]}
    customButtonName=""
    data="{{ getCC.data }}"
    defaultSortByColumn="open_date"
    defaultSortDescending={true}
    doubleClickToEdit={true}
    pageSize={7}
    style={{
      ordered: [
        { headerText: "tertiary" },
        { headerBackground: "surfacePrimary" },
        { selectedRowBackground: "rgba(18, 135, 70, 0.09)" },
      ],
    }}
  />
  <Modal
    id="replaceModal"
    buttonText="Replace Card"
    disabled="{{ccTable.selectedRow.data.status == 'closed' || ccTable.selectedRow.data.status == 'replaced'}}"
    events={[
      {
        ordered: [
          { event: "close" },
          { type: "widget" },
          { method: "setValue" },
          { pluginId: "replaceReasonInput" },
          { targetId: null },
          { params: { ordered: [{ value: "Lost Card" }] } },
          { waitType: "debounce" },
          { waitMs: "0" },
        ],
      },
    ]}
    hidden=""
    modalHeightType="auto"
    style={{ ordered: [{ "accent-background": "hsl(147, 77%, 30%)" }] }}
  >
    <Form
      id="form2"
      disabled=""
      disableSubmit="{{replaceReasonInput.value == 'Other' ? replaceReasonOtherInput.value.length == 0 : replaceReasonInput.value.length = 0}}"
      hoistFetching={true}
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
      style={{ ordered: [{ border: "surfacePrimary" }] }}
    >
      <Header>
        <Text
          id="formTitle2"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          value="####  Are you sure you want to replace card {{ccTable.selectedRow.data.cc_number}} ?"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Select
          id="replaceReasonInput"
          _defaultValue={null}
          allowDeselect={true}
          itemMode="static"
          label="Reason For Replacement"
          labelWrap={true}
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="Lost Card"
        >
          <Option id="7248f" value="Lost Card" />
          <Option id="d4ce6" value="Damaged Card" />
          <Option id="52af5" value="Expiring" />
          <Option id="a5ec2" disabled={false} hidden={false} value="Other" />
        </Select>
        <TextArea
          id="replaceReasonOtherInput"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          autoResize={true}
          hidden="{{replaceReasonInput.value != 'Other' || !replaceReasonInput.value}}"
          label="Give Reason for Other"
          labelPosition="top"
          minLength="5"
          minLines={2}
          placeholder="Enter value"
        />
      </Body>
      <Footer>
        <Button
          id="formButton2"
          _disclosedFields={{ array: [] }}
          disabled=""
          style={{ ordered: [{ background: "rgba(1, 84, 39, 1)" }] }}
          submit={true}
          submitTargetId="form2"
          text="Replace Card"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="replaceCC"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="close"
        params={{ ordered: [] }}
        pluginId="replaceModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Modal>
  <Modal
    id="closeModal"
    buttonText="Close Card"
    disabled="{{ccTable.selectedRow.data.status == 'closed' || ccTable.selectedRow.data.status == 'replaced'}}"
    events={[
      {
        ordered: [
          { event: "close" },
          { type: "widget" },
          { method: "setValue" },
          { pluginId: "closeReasonSelect" },
          { targetId: null },
          { params: { ordered: [{ value: "Fraud" }] } },
          { waitType: "debounce" },
          { waitMs: "0" },
        ],
      },
    ]}
    hidden=""
    style={{ ordered: [{ "accent-background": "hsl(4, 57%, 52%)" }] }}
  >
    <Form
      id="closeCard"
      disabled=""
      disableSubmit="{{closeReasonSelect.value == 'Other' ? closeOtherReason.value.length == 0 : closeReasonSelect.value.length = 0}}"
      hoistFetching={true}
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
      style={{ ordered: [{ border: "surfacePrimary" }] }}
    >
      <Header>
        <Text
          id="closeTitle"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          value="####  Are you sure you want to close card {{ccTable.selectedRow.data.cc_number}} ?"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Select
          id="closeReasonSelect"
          _defaultValue={null}
          allowDeselect={true}
          itemMode="static"
          label="Reason For Close"
          labelWrap={true}
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="Fraud"
        >
          <Option id="7248f" value="Fraud" />
          <Option id="d4ce6" value="Customer Leaving For Competitor" />
          <Option id="52af5" value="No Reason Given" />
          <Option id="a5ec2" disabled={false} hidden={false} value="Other" />
        </Select>
        <TextArea
          id="closeOtherReason"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          autoResize={true}
          hidden="{{closeReasonSelect.value != 'Other' || !closeReasonSelect.value}}"
          label="Give Reason for Other"
          labelPosition="top"
          minLength="5"
          minLines={2}
          placeholder="Enter value"
        />
      </Body>
      <Footer>
        <Button
          id="formButton3"
          _disclosedFields={{ array: [] }}
          disabled=""
          style={{ ordered: [{ background: "danger" }] }}
          submit={true}
          submitTargetId="closeCard"
          text="Close Card"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="closeCC"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="close"
        params={{ ordered: [] }}
        pluginId="closeModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Modal>
</Modal>
