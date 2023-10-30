<App>
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <Include src="./src/modal1.rsx" />
    <Container
      id="tabbedContainer2"
      currentViewKey="{{ self.viewKeys[0] }}"
      heightType="fixed"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Tabs
          id="tabs2"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="tabbedContainer2"
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
          id="multiselectListbox1"
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
          id="multiselectListbox2"
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
  </Frame>
</App>
