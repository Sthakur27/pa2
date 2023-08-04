<Container
  id="collapsibleContainerCustomerProfile"
  heightType="fixed"
  hidden="{{finTechNavBar1.userPermission.user.groups['0'].name=='Customer Support Rep'}}"
  hoistFetching={true}
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ border: "secondary" }] }}
>
  <Header>
    <Text
      id="collapsibleTitle6"
      _defaultValue=""
      style={{ ordered: [{ color: "tertiary" }] }}
      value="#### Customer Profile"
      verticalAlign="center"
    />
    <ToggleButton
      id="collapsibleToggle6"
      _defaultValue={false}
      horizontalAlign="right"
      iconForFalse="down"
      iconForTrue="up"
      iconPosition="replace"
      style={{ ordered: [{ label: "tertiary" }, { border: "tertiary" }] }}
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ collapsibleContainerCustomerProfile.showBody }}"
    >
      <Event
        event="change"
        method="setShowBody"
        params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
        pluginId="collapsibleContainerCustomerProfile"
        pluginInstance={null}
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
  </Header>
  <View id="76245" viewKey="View 1">
    <Image
      id="circularImage1"
      aspectRatio={1}
      horizontalAlign="center"
      src="https://randomuser.me/api/portraits/med/women/{{tableTransactions.selectedRow.index}}.jpg"
      style={{ ordered: [{ borderRadius: "50%" }] }}
    />
    <Text
      id="text9"
      _defaultValue=""
      value="##### {{getTransactionDetails.data.first_name + ' ' + getTransactionDetails.data.last_name }}
  {{getTransactionDetails.data.email[0] }}
  *Customer Since 2010*

"
      verticalAlign="center"
    />
    <Statistic
      id="statisticTransactionsValue"
      currency="USD"
      formattingStyle="currency"
      label="Total Revenue"
      labelCaption="Since last month"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue={0.08}
      showSeparators={true}
      value="{{getUserStats.data.total_sum}}"
    />
    <Button
      id="buttonGoToAccount"
      iconAfter="right"
      style={{ ordered: [{ background: "tertiary" }] }}
      styleVariant="solid"
      text="Go to Account "
    >
      <Event
        event="click"
        method="openApp"
        params={{
          ordered: [
            { uuid: "427e7c9e-0a4e-11ed-85bf-8755ebf03521" },
            {
              options: {
                ordered: [
                  {
                    hashParams: [
                      {
                        ordered: [
                          { key: "userId" },
                          { value: "{{table4.selectedRow.data.user_id}}" },
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
    <Statistic
      id="statisticTransactionsVolume"
      currency="USD"
      label="Amount of Transactions"
      labelCaption="Since last month"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue="0.010"
      showSeparators={true}
      style={{ ordered: [{ positive: "success" }] }}
      value="{{getUserStats.data.total_transactions}}"
    />
    <Text
      id="text10"
      _defaultValue=""
      value="**KYC Application:** "
      verticalAlign="center"
    />
    <Icon
      id="icon1"
      hidden="{{getKycApplicationStatus.data.application_status[0]!=='accepted'}}"
      horizontalAlign="center"
      icon="check-circle"
      style={{ ordered: [{ color: "success" }] }}
    />
    <Link
      id="link1"
      hidden="{{(!getKycApplicationStatus.data.application_status['0'])}}"
      iconAfter="arrow-right"
      text="Go to KYC Application"
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
                  { queryParams: [{ ordered: [{ key: "" }, { value: "" }] }] },
                  {
                    hashParams: [
                      {
                        ordered: [
                          { key: "appId" },
                          {
                            value:
                              "{{getKycApplicationStatus.data.application_id['0']}}",
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
    </Link>
    <Text
      id="text12"
      _defaultValue=""
      value={
        "{{_.capitalize(getKycApplicationStatus.data.application_status['0'])? _.capitalize(getKycApplicationStatus.data.application_status['0']): \"None Found\"}}"
      }
      verticalAlign="center"
    />
    <Icon
      id="icon2"
      hidden="{{getKycApplicationStatus.data.application_status[0]!=='rejected'}}"
      horizontalAlign="center"
      icon="close-circle"
      style={{ ordered: [{ color: "danger" }] }}
    />
    <Icon
      id="icon3"
      hidden="{{getKycApplicationStatus.data.application_status[0]=='rejected' ||getKycApplicationStatus.data.application_status[0]=='accepted'}}"
      horizontalAlign="center"
      icon="question-circle-o"
      style={{ ordered: [{ color: "rgba(101, 100, 100, 1)" }] }}
    />
    <Text
      id="text11"
      _defaultValue=""
      value="**Loans:** "
      verticalAlign="center"
    />
    <Link id="linkGoToLoans" iconAfter="arrow-right" text="Go to Loans">
      <Event
        event="click"
        method="openApp"
        params={{
          ordered: [
            { uuid: "0d3c005e-0c58-11ed-a87a-33ef0912fadf" },
            {
              options: {
                ordered: [
                  { queryParams: [{ ordered: [{ key: "" }, { value: "" }] }] },
                  {
                    hashParams: [
                      {
                        ordered: [
                          { key: "name" },
                          {
                            value:
                              "{{getTransactionDetails.data.first_name['0'] + ' ' + getTransactionDetails.data.last_name['0'] }}",
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
    </Link>
    <Text
      id="text13"
      _defaultValue=""
      value="{{getSARCount.data.count['0']}} existing loans"
      verticalAlign="center"
    />
    <Icon
      id="icon6"
      hidden="{{getKycApplicationStatus.data.application_status[0]=='rejected' ||getKycApplicationStatus.data.application_status[0]=='accepted'}}"
      horizontalAlign="center"
      icon="book"
      style={{ ordered: [{ color: "rgba(101, 100, 100, 1)" }] }}
    />
  </View>
</Container>
