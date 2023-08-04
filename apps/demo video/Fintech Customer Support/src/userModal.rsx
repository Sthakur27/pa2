<Modal
  id="userModal"
  buttonText="Open Modal"
  hidden="true"
  modalHeightType="auto"
  modalWidth="40%"
>
  <Text
    id="userNameModalText"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    value="### {{userTable.selectedRow.data.name}}"
    verticalAlign="center"
  />
  <Image
    id="circularImage1"
    _disclosedFields={{ array: [] }}
    aspectRatio={1}
    horizontalAlign="center"
    src="https://placekitten.com/400/300"
    style={{ ordered: [{ borderRadius: "50%" }] }}
  />
  <Button
    id="investigateFraudModal"
    _disclosedFields={{ array: [] }}
    hidden="{{userTable.selectedRow.data.account_status != 'Flagged'}}"
    style={{ ordered: [{ background: "danger" }] }}
    styleVariant="solid"
    text="Investigate Fraud"
  />
  <Link
    id="userEmailModalText"
    _disclosedFields={{ array: [] }}
    horizontalAlign="center"
    text="{{userTable.selectedRow.data.email}}"
    tooltipText="Click to draft email to {{userTable.selectedRow.data.name}}"
  >
    <Event
      event="click"
      method="openUrl"
      params={{
        ordered: [{ url: "mailto:{{userTable.selectedRow.data.email}}" }],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Link>
  <Text
    id="UserInfoModal"
    _defaultValue=""
    _disclosedFields={{ array: [] }}
    value="**Total Transactions:** {{userTable.selectedRow.data.total_transactions}}

**Transaction Amount:** ${{userTable.selectedRow.data.total_transaction_amount}}

**First Transaction:** {{userTable.selectedRow.data.first_transaction}}

**Account Status:** {{userTable.selectedRow.data.account_status}}"
    verticalAlign="center"
  />
  <Button
    id="memberNavButton"
    _disclosedFields={{ array: [] }}
    iconAfter="right"
    style={{ ordered: [{ border: "surfacePrimary" }] }}
    styleVariant="outline"
    text="View Member"
  >
    <Event
      event="click"
      method="setCurrentViewIndex"
      params={{ ordered: [{ viewIndex: "1" }] }}
      pluginId="tabbedContainer1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="setValue"
      params={{ ordered: [{ value: "{{userTable.selectedRow.data.id}}" }] }}
      pluginId="state1"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="close"
      params={{ ordered: [] }}
      pluginId="userModal"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>
