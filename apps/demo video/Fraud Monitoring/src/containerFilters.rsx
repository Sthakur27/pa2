<Container
  id="containerFilters"
  hidden="{{finTechNavBar1.userPermission.user.groups['0'].name=='Customer Support Rep'}}"
  hoistFetching={true}
  showBody={true}
  style={{ ordered: [{ background: "canvas" }, { border: "secondary" }] }}
>
  <Header>
    <Text
      id="containerTitle1"
      _defaultValue=""
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="f9eab" viewKey="View 1">
    <TextInput
      id="textInputUserId"
      _defaultValue=""
      label="User Id"
      placeholder="Enter value"
      showClear={true}
      style={{ ordered: [{ border: "secondary" }] }}
    />
    <Icon
      id="icon7"
      horizontalAlign="center"
      icon="filter"
      style={{ ordered: [{ color: "tertiary" }] }}
    />
    <Multiselect
      id="multiselectFraudReason"
      _defaultValue={{ array: [] }}
      itemMode="static"
      label="Reason"
      overlayMaxHeight={375}
      placeholder="Select options"
      showClear={true}
      showSelectionIndicator={true}
      style={{ ordered: [{ border: "secondary" }] }}
      wrapTags={true}
    >
      <Option id="b2d9a" value="Number of Small Transactions" />
      <Option id="6f6d0" value="Transaction location" />
      <Option id="a88b5" value="Large transaction" />
    </Multiselect>
    <DateRange
      id="dateRangeTransaction"
      dateFormat="MMM d, yyyy"
      endPlaceholder="End date"
      iconBefore="calendar"
      label="Date"
      showClear={true}
      startPlaceholder="Start date"
      style={{ ordered: [{ border: "secondary" }] }}
      textBetween="-"
      value={{ ordered: [{ start: "" }, { end: "" }] }}
    />
    <Switch
      id="switchShowUnreviewed"
      _defaultValue={false}
      label="Show Only Unreviewed"
      labelAlign="right"
      labelPosition="left"
    />
  </View>
</Container>
