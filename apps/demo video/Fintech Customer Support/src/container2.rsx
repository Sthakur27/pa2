<Container id="container2" hoistFetching={true} showBody={true}>
  <View id="e47d5" viewKey="View 1">
    <Button
      id="button1"
      _disclosedFields={{ array: [] }}
      horizontalAlign="left"
      iconBefore="upload"
      style={{
        ordered: [
          { background: "rgba(60, 146, 222, 0.16)" },
          { label: "info" },
        ],
      }}
      styleVariant="solid"
    />
    <Text
      id="text8"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "" }, { background: "" }, { links: "" }] }}
      value="**Upload KYC Doc**"
      verticalAlign="center"
    />
    <Text
      id="text7"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgba(38, 38, 38, 0.48)" }] }}
      value="<p>Upload document, and review KYC applications</p>"
      verticalAlign="center"
    />
    <Link
      id="link1"
      _disclosedFields={{ array: [] }}
      disabled="{{finTechNavBar1.userPermission.user.groups['0'].name==='View User'}}"
      iconAfter="bold/interface-arrows-right-alternate"
      showUnderline="never"
      style={{ ordered: [{ text: "rgba(124, 124, 124, 1)" }] }}
      text="Open"
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
    </Link>
    <Link
      id="link11"
      _disclosedFields={{ array: [] }}
      disabled="{{finTechNavBar1.userPermission.user.groups['0'].name==='View User'}}"
      iconAfter="bold/interface-arrows-right-alternate"
      showUnderline="never"
      style={{ ordered: [{ text: "rgba(124, 124, 124, 1)" }] }}
      text="View App"
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
                          { key: "page" },
                          { value: "View Application" },
                        ],
                      },
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
                  { newTab: true },
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
