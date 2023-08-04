<Container
  id="collapsibleContainerTransactionHistory"
  hidden="{{finTechNavBar1.userPermission.user.groups['0'].name=='Customer Support Rep'}}"
  hoistFetching={true}
  showHeader={true}
  style={{ ordered: [{ border: "secondary" }] }}
>
  <Header>
    <Text
      id="collapsibleTitle5"
      _defaultValue=""
      style={{ ordered: [{ color: "tertiary" }] }}
      value="#### User's Transaction History"
      verticalAlign="center"
    />
    <ToggleButton
      id="collapsibleToggle5"
      _defaultValue={false}
      horizontalAlign="right"
      iconForFalse="down"
      iconForTrue="up"
      iconPosition="replace"
      style={{ ordered: [{ label: "tertiary" }, { border: "tertiary" }] }}
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ collapsibleContainerTransactionHistory.showBody }}"
    >
      <Event
        event="change"
        method="setShowBody"
        params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
        pluginId="collapsibleContainerTransactionHistory"
        pluginInstance={null}
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
  </Header>
  <View id="76245" viewKey="View 1">
    <TableLegacy
      id="table4"
      _columns={[
        "id",
        "date",
        "amount",
        "status",
        "user_id",
        "cc_type",
        "cc_number",
        "type",
        "currency",
        "account_id",
        "lat",
        "long",
      ]}
      _columnSummaryTypes={{
        ordered: [{ status: "" }, { type: "" }, { amount: "sum" }],
      }}
      _columnSummaryValues={{
        ordered: [{ status: "" }, { type: "" }, { amount: "" }],
      }}
      _columnVisibility={{
        ordered: [
          { cc_number: false },
          { account_id: false },
          { date: true },
          { user_id: false },
          { currency: false },
          { status: true },
          { amount: true },
          { cc_type: false },
          { type: true },
          { id: false },
          { long: false },
          { lat: false },
        ],
      }}
      _compatibilityMode={false}
      columnAlignment={{
        ordered: [{ status: "left" }, { type: "left" }, { amount: "right" }],
      }}
      columnColors={{
        ordered: [
          { cc_number: "" },
          { account_id: "" },
          { date: "" },
          { user_id: "" },
          { currency: "" },
          { status: "" },
          { amount: "" },
          { cc_type: "" },
          { type: "" },
          { id: "" },
          { long: "" },
          { lat: "" },
        ],
      }}
      columnFormats={{
        ordered: [
          { status: "SingleTagDataCell" },
          { type: "default" },
          { amount: "CurrencyDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { date: "Date" },
          { status: "Status" },
          { amount: "Amount" },
          { type: "Type" },
        ],
      }}
      columnMappers={{ ordered: [{ status: "" }, { type: "" }] }}
      columns={[
        "id",
        "date",
        "amount",
        "status",
        "user_id",
        "cc_type",
        "cc_number",
        "type",
        "currency",
        "account_id",
        "lat",
        "long",
      ]}
      columnTypeProperties={{
        ordered: [
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
            type: {
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
          {
            amount: {
              ordered: [
                { showSeparators: true },
                { currency: "USD" },
                { padDecimal: true },
              ],
            },
          },
        ],
      }}
      columnVisibility={{
        ordered: [
          { cc_number: false },
          { account_id: false },
          { date: true },
          { user_id: false },
          { currency: false },
          { status: true },
          { amount: true },
          { cc_type: false },
          { type: true },
          { id: false },
          { long: false },
          { lat: false },
        ],
      }}
      customButtonName=""
      data="{{ getTransactionHistory.data }}"
      doubleClickToEdit={true}
      pageSize={5}
      showBoxShadow={false}
      style={{
        ordered: [
          { border: "surfacePrimary" },
          { headerAccent: "surfacePrimary" },
          { headerBackground: "surfacePrimary" },
          { toolbarBackground: "surfacePrimary" },
          { headerText: "tertiary" },
        ],
      }}
    />
    <Text
      id="text6"
      _defaultValue=""
      style={{ ordered: [{ color: "tertiary" }] }}
      value="##### Transactions over Time"
      verticalAlign="center"
    />
    <PlotlyChart
      id="chart1"
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "Transactions" },
                { datasource: "{{getTransactionsByDate.data['count']}}" },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#224930" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
        ],
      }}
      datasourceDataType="object"
      datasourceInputMode="javascript"
      datasourceJS="{{getTransactionsByDate.data}}"
      isDataTemplateDirty={true}
      xAxis="{{getTransactionsByDate.data.month}}"
      xAxisDropdown="month"
    />
  </View>
</Container>
