<Container
  id="tabbedContainer2"
  currentViewKey="{{ self.viewKeys[0] }}"
  heightType="fixed"
  hidden=""
  hoistFetching={true}
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ background: "tertiary" }, { border: "tertiary" }] }}
  styleContext={{ ordered: [{ primary: "success" }] }}
>
  <Header>
    <Tabs
      id="tabsRecommendedActions"
      _defaultValue={null}
      hidden=""
      itemMode="static"
      navigateContainer={true}
      style={{ ordered: [{ selectedText: "rgba(238, 255, 246, 1)" }] }}
      targetContainerId="tabbedContainer2"
      value="{{ self.values[0] }}"
    >
      <Option id="ab11e" value="Tab 1" />
      <Option id="eb1fd" value="Tab 2" />
      <Option id="66405" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="94dc5" viewKey="Recommended Actions">
    <Text
      id="text13"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      value="#### Support Actions:"
      verticalAlign="center"
    />
    <Include src="./tabsRecommendedActions2.rsx" />
  </View>
  <View id="7ca03" viewKey="All Actions">
    <Button
      id="button4"
      _disclosedFields={{ array: [] }}
      disabled="{{finTechNavBar1.userPermission.user.groups['0'].name==='View User'}}"
      iconBefore="credit-card"
      style={{ ordered: [{ background: "secondary" }, { label: "tertiary" }] }}
      styleVariant="solid"
      text="Replace Credit Card"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="openCCModal"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button5"
      _disclosedFields={{ array: [] }}
      disabled="{{finTechNavBar1.userPermission.user.groups['0'].name==='View User'}}"
      iconBefore="upload"
      style={{ ordered: [{ background: "secondary" }, { label: "tertiary" }] }}
      styleVariant="solid"
      text="Upload KYC Doc"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="openKYCModal"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button13"
      _disclosedFields={{ array: [] }}
      disabled="{{finTechNavBar1.userPermission.user.groups['0'].name==='View User'}}"
      iconBefore="info-circle-o"
      style={{ ordered: [{ background: "secondary" }, { label: "tertiary" }] }}
      styleVariant="solid"
      text="Update User Info"
    >
      <Event
        event="click"
        method="open"
        params={{ ordered: [] }}
        pluginId="updateUserInfoModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button6"
      _disclosedFields={{ array: [] }}
      iconBefore="safety"
      style={{ ordered: [{ background: "secondary" }, { label: "tertiary" }] }}
      styleVariant="solid"
      text="View Flagged Transactions"
    >
      <Event
        event="click"
        method="openApp"
        params={{
          ordered: [
            { uuid: "71cf2580-f765-11ec-8d6f-33d93da3fb90" },
            {
              options: {
                ordered: [
                  {
                    queryParams: [
                      {
                        ordered: [
                          { key: "userid" },
                          { value: "{{userTable.selectedRow.data.id}}" },
                        ],
                      },
                    ],
                  },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button7"
      _disclosedFields={{ array: [] }}
      iconBefore="bank"
      style={{ ordered: [{ label: "tertiary" }, { background: "secondary" }] }}
      styleVariant="solid"
      text="Review Transactions"
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
    </Button>
    <Button
      id="button8"
      _disclosedFields={{ array: [] }}
      iconBefore="file"
      style={{ ordered: [{ background: "secondary" }, { label: "tertiary" }] }}
      styleVariant="solid"
      text="Review Application (KYC)"
    >
      <Event
        event="click"
        method="openApp"
        params={{
          ordered: [
            { uuid: "f0a0b830-0a0f-11ed-82c0-f79535bdde7a" },
            {
              options: {
                ordered: [
                  {
                    hashParams: [
                      {
                        ordered: [
                          { key: "appId" },
                          {
                            value:
                              "{{userTable.selectedRow.data.application_id}}",
                          },
                        ],
                      },
                    ],
                  },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button9"
      _disclosedFields={{ array: [] }}
      iconBefore="mail"
      style={{ ordered: [{ background: "secondary" }, { label: "tertiary" }] }}
      styleVariant="solid"
      text="Contact User"
    >
      <Event
        event="click"
        method="open"
        params={{ ordered: [] }}
        pluginId="sendEmail"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
