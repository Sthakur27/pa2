<Container
  id="containerAccountActions"
  hidden="{{finTechNavBar1.userPermission.user.groups['0'].name=='Customer Support Rep'}}"
  hoistFetching={true}
  showBody={true}
  style={{ ordered: [{ border: "surfacePrimary" }] }}
>
  <Header>
    <Text
      id="collapsibleTitle3"
      _defaultValue=""
      value="#### Container title"
      verticalAlign="center"
    />
    <ToggleButton
      id="collapsibleToggle3"
      _defaultValue={false}
      horizontalAlign="right"
      iconForFalse="down"
      iconForTrue="up"
      iconPosition="replace"
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ containerAccountActions.showBody }}"
    >
      <Event
        event="change"
        method="setShowBody"
        params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
        pluginId="containerAccountActions"
        pluginInstance={null}
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
  </Header>
  <View id="76245" viewKey="View 1">
    <Text
      id="text5"
      _defaultValue=""
      style={{ ordered: [{ color: "tertiary" }] }}
      value="## **Fraud Review Portal**
Review transactions marked as fraud, add notes, and take any necessary action."
      verticalAlign="center"
    />
    <Button
      id="freezeAccountButton"
      disabled="{{finTechNavBar1.userPermission.user.groups['0'].name==='View User'}}"
      iconBefore="flag"
      style={{ ordered: [{ background: "success" }, { border: "highlight" }] }}
      styleVariant="solid"
      text="Freeze Account"
      tooltipText="Direct update to database"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="flagAccount"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="fileWithFinCenButton"
      disabled="{{finTechNavBar1.userPermission.user.groups['0'].name==='View User'}}"
      iconBefore="check-circle"
      style={{ ordered: [{ label: "success" }, { border: "success" }] }}
      styleVariant="outline"
      text="File with FinCen"
      tooltipText="Opens dialogue box that will call an API"
    >
      <Event
        event="click"
        method="open"
        params={{ ordered: [] }}
        pluginId="modalForSAR"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
