<Container
  id="collapsibleContainerCreditCardDetails"
  hidden="{{finTechNavBar1.userPermission.user.groups['0'].name=='Customer Support Rep'}}"
  hoistFetching={true}
  showHeader={true}
  style={{ ordered: [{ border: "secondary" }] }}
>
  <Header>
    <Text
      id="collapsibleTitle7"
      _defaultValue=""
      style={{ ordered: [{ color: "tertiary" }] }}
      value="#### Credit Card Details"
      verticalAlign="center"
    />
    <ToggleButton
      id="collapsibleToggle7"
      _defaultValue={false}
      horizontalAlign="right"
      iconForFalse="down"
      iconForTrue="up"
      iconPosition="replace"
      style={{ ordered: [{ border: "tertiary" }, { label: "tertiary" }] }}
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ collapsibleContainerCreditCardDetails.showBody }}"
    >
      <Event
        event="change"
        method="setShowBody"
        params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
        pluginId="collapsibleContainerCreditCardDetails"
        pluginInstance={null}
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
  </Header>
  <View id="76245" viewKey="View 1">
    <Text
      id="text15"
      _defaultValue=""
      value="**CC #:** 
**Expiration Date:** 
**Type:** 
**Status:** "
      verticalAlign="center"
    />
    <Text
      id="text17"
      _defaultValue=""
      value="{{getCCDetails.data.cc_number[0]}}
{{getCCDetails.data.expiration_date[0]}}
{{getCCDetails.data.cc_type[0]}}
{{getCCDetails.data.status[0]}}
"
      verticalAlign="center"
    />
    <Button
      id="button10"
      disabled="{{getCCDetails.data.status[0]!=='open'}}"
      hidden="{{finTechNavBar1.userPermission.user.groups['0'].name==='View User'}}"
      iconBefore="credit-card"
      style={{ ordered: [{ background: "danger" }] }}
      styleVariant="solid"
      text="Close Card"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="closeCC"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
