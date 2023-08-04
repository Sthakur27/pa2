<Container
  id="tabsRecommendedActions2"
  currentViewKey="{{ self.viewKeys[0] }}"
  hoistFetching={true}
  showBody={true}
  showHeader={true}
  style={{
    ordered: [
      { background: "tertiary" },
      { border: "tertiary" },
      { borderRadius: "0px" },
    ],
  }}
>
  <Header>
    <Tabs
      id="tabs4"
      _defaultValue={null}
      hidden="true"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabsRecommendedActions2"
      value="{{ self.values[0] }}"
    >
      <Option id="aa56c" value="Tab 1" />
      <Option id="1bcb6" value="Tab 2" />
      <Option id="bcd1c" value="Tab 3" />
    </Tabs>
    <Container id="container3" hoistFetching={true} showBody={true}>
      <View id="e47d5" viewKey="View 1">
        <Button
          id="button2"
          _disclosedFields={{ array: [] }}
          horizontalAlign="left"
          iconBefore="credit-card"
          style={{
            ordered: [
              { background: "rgba(204, 98, 196, 0.09)" },
              { label: "rgb(204, 98, 196)" },
            ],
          }}
          styleVariant="solid"
        />
        <Text
          id="text10"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{
            ordered: [{ color: "" }, { background: "" }, { links: "" }],
          }}
          value="**Replace Credit Card**"
          verticalAlign="center"
        />
        <Text
          id="text9"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{ ordered: [{ color: "rgba(38, 38, 38, 0.48)" }] }}
          value="<p>Close or Replace Credit Card for {{userTable.selectedRow.data.name}}</p>"
          verticalAlign="center"
        />
        <Link
          id="link2"
          _disclosedFields={{ array: [] }}
          disabled="{{finTechNavBar1.userPermission.user.groups['0'].name==='View User'}}"
          iconAfter="bold/interface-arrows-right-alternate"
          showUnderline="never"
          style={{ ordered: [{ text: "rgba(124, 124, 124, 1)" }] }}
          text="Open"
        >
          <Event
            event="click"
            method="open"
            params={{ ordered: [] }}
            pluginId="newCreditCardModal"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Link>
      </View>
    </Container>
  </Header>
  <View id="fc599" viewKey="Flagged + KYC">
    <Include src="./container2.rsx" />
    <Container id="container4" hoistFetching={true} showBody={true}>
      <View id="e47d5" viewKey="View 1">
        <Button
          id="button3"
          _disclosedFields={{ array: [] }}
          horizontalAlign="left"
          iconBefore="bold/computer-desktop-check"
          style={{
            ordered: [
              { background: "rgba(101, 7, 178, 0.09)" },
              { label: "rgba(101, 7, 178, 1)" },
            ],
          }}
          styleVariant="solid"
        />
        <Text
          id="text12"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{
            ordered: [{ color: "" }, { background: "" }, { links: "" }],
          }}
          value="**Review Flagged Transactions**"
          verticalAlign="center"
        />
        <Text
          id="text11"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{ ordered: [{ color: "rgba(38, 38, 38, 0.48)" }] }}
          value="<p>Monitor flagged transactions and flag for additional review ...</p>"
          verticalAlign="center"
        />
        <Link
          id="link3"
          _disclosedFields={{ array: [] }}
          iconAfter="bold/interface-arrows-right-alternate"
          showUnderline="never"
          style={{ ordered: [{ text: "rgba(124, 124, 124, 1)" }] }}
          text="Open"
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
                        hashParams: [
                          {
                            ordered: [
                              { key: "userId" },
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
        </Link>
      </View>
    </Container>
  </View>
  <View id="56da1" viewKey="Flagged">
    <Container id="container6" hoistFetching={true} showBody={true}>
      <View id="e47d5" viewKey="View 1">
        <Button
          id="button12"
          _disclosedFields={{ array: [] }}
          horizontalAlign="left"
          iconBefore="bold/computer-desktop-check"
          style={{
            ordered: [
              { background: "rgba(101, 7, 178, 0.09)" },
              { label: "rgba(101, 7, 178, 1)" },
            ],
          }}
          styleVariant="solid"
        />
        <Text
          id="text17"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{
            ordered: [{ color: "" }, { background: "" }, { links: "" }],
          }}
          value="**Review Flagged Transactions**"
          verticalAlign="center"
        />
        <Text
          id="text16"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{ ordered: [{ color: "rgba(38, 38, 38, 0.48)" }] }}
          value="<p>Monitor flagged transactions, capture notes, and flag for additional review ...</p>"
          verticalAlign="center"
        />
        <Link
          id="link4"
          _disclosedFields={{ array: [] }}
          iconAfter="bold/interface-arrows-right-alternate"
          showUnderline="never"
          style={{ ordered: [{ text: "rgba(124, 124, 124, 1)" }] }}
          text="Open"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "71cf2580-f765-11ec-8d6f-33d93da3fb90" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Link>
      </View>
    </Container>
    <Container id="container7" hoistFetching={true} showBody={true}>
      <View id="e47d5" viewKey="View 1">
        <Button
          id="button14"
          _disclosedFields={{ array: [] }}
          horizontalAlign="left"
          iconBefore="info"
          style={{
            ordered: [
              { background: "rgba(209, 119, 36, 0.26)" },
              { label: "warning" },
            ],
          }}
          styleVariant="solid"
        />
        <Text
          id="text19"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{
            ordered: [{ color: "" }, { background: "" }, { links: "" }],
          }}
          value="**Update User Information**"
          verticalAlign="center"
        />
        <Text
          id="text18"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{ ordered: [{ color: "rgba(38, 38, 38, 0.48)" }] }}
          value="<p>Update a User's Address, Name, or other personal information</p>"
          verticalAlign="center"
        />
        <Link
          id="link5"
          _disclosedFields={{ array: [] }}
          iconAfter="bold/interface-arrows-right-alternate"
          showUnderline="never"
          style={{ ordered: [{ text: "rgba(124, 124, 124, 1)" }] }}
          text="Open"
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
        </Link>
      </View>
    </Container>
  </View>
  <View id="b4438" viewKey="KYC">
    <Include src="./container9.rsx" />
    <Container id="container10" hoistFetching={true} showBody={true}>
      <View id="e47d5" viewKey="View 1">
        <Button
          id="button17"
          _disclosedFields={{ array: [] }}
          horizontalAlign="left"
          iconBefore="info"
          style={{
            ordered: [
              { background: "rgba(209, 119, 36, 0.26)" },
              { label: "warning" },
            ],
          }}
          styleVariant="solid"
        />
        <Text
          id="text25"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{
            ordered: [{ color: "" }, { background: "" }, { links: "" }],
          }}
          value="**Update User Information**"
          verticalAlign="center"
        />
        <Text
          id="text24"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{ ordered: [{ color: "rgba(38, 38, 38, 0.48)" }] }}
          value="<p>Update a User's Address, Name, or other personal information</p>"
          verticalAlign="center"
        />
        <Link
          id="link8"
          _disclosedFields={{ array: [] }}
          iconAfter="bold/interface-arrows-right-alternate"
          showUnderline="never"
          style={{ ordered: [{ text: "rgba(124, 124, 124, 1)" }] }}
          text="Open"
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
        </Link>
      </View>
    </Container>
  </View>
  <View
    id="96bdf"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Normal"
  >
    <Container id="container11" hoistFetching={true} showBody={true}>
      <View id="e47d5" viewKey="View 1">
        <Button
          id="button18"
          _disclosedFields={{ array: [] }}
          horizontalAlign="left"
          iconBefore="info"
          style={{
            ordered: [
              { background: "rgba(209, 119, 36, 0.26)" },
              { label: "warning" },
            ],
          }}
          styleVariant="solid"
        />
        <Text
          id="text27"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{
            ordered: [{ color: "" }, { background: "" }, { links: "" }],
          }}
          value="**Update User Information**"
          verticalAlign="center"
        />
        <Text
          id="text26"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{ ordered: [{ color: "rgba(38, 38, 38, 0.48)" }] }}
          value="<p>Update a User's Address, Name, or other personal information</p>"
          verticalAlign="center"
        />
        <Link
          id="link9"
          _disclosedFields={{ array: [] }}
          iconAfter="bold/interface-arrows-right-alternate"
          showUnderline="never"
          style={{ ordered: [{ text: "rgba(124, 124, 124, 1)" }] }}
          text="Open"
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
        </Link>
      </View>
    </Container>
  </View>
</Container>
