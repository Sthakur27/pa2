<Modal
  id="modal1"
  buttonText="Open Modal"
  modalHeightType="auto"
  modalWidth="6
0%"
>
  <Text
    id="text1"
    value="## Choose Elements to Migrate"
    verticalAlign="center"
  />
  <Container
    id="tabbedContainer3"
    currentViewKey="{{ self.viewKeys[0] }}"
    heightType="fixed"
    showBody={true}
    showHeader={true}
  >
    <Header>
      <Tabs
        id="tabs3"
        itemMode="static"
        navigateContainer={true}
        targetContainerId="tabbedContainer3"
        value="{{ self.values[0] }}"
      >
        <Option id="5dbdd" value="Tab 1" />
        <Option id="d4222" value="Tab 2" />
        <Option id="7402f" value="Tab 3" />
      </Tabs>
    </Header>
    <View
      id="401f9"
      label="Apps
"
      viewKey="View 1"
    >
      <MultiselectListbox
        id="multiselectListbox3"
        emptyMessage="No options"
        hideLabel={true}
        itemMode="static"
        labelPosition="top"
        showSelectionIndicator={true}
        value="{{ [self.values[0]] }}"
      >
        <Option id="6d3ec" label="My Folder > My App" value="Option 1" />
        <Option id="d29e0" label="My Folder > My App 2" value="Option 2" />
        <Option id="a2d8a" label="Shannon === Loser" value="Option 3" />
      </MultiselectListbox>
    </View>
    <View
      id="6f9b1"
      viewKey="Workflows
"
    />
    <View
      id="156e5"
      viewKey="Resources
"
    >
      <MultiselectListbox
        id="multiselectListbox4"
        disabled=""
        emptyMessage="No options"
        itemMode="static"
        labelPosition="top"
        showSelectionIndicator={true}
        value="{{ [self.values[0]] }}"
      >
        <Option
          id="b3bfa"
          disabled="True"
          label="Auto Checked Resource"
          value="Option 1"
        />
        <Option id="eba66" value="Option 2" />
        <Option id="4e2be" label="Some Other Resource" value="Option 3" />
      </MultiselectListbox>
    </View>
    <View
      id="7ee90"
      disabled={false}
      hidden={false}
      iconPosition="left"
      viewKey="Themes"
    />
    <View
      id="2b051"
      disabled={false}
      hidden={false}
      iconPosition="left"
      viewKey="Query Library"
    />
  </Container>
  <Button id="button1" styleVariant="solid" text="Export" />
</Modal>
