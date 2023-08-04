<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp id="appUUID" defaultValue="{{retoolContext.appUuid}}" />
  <GlobalWidgetOutput
    id="userPermission"
    value="{{userPermissionState.value}}"
  />
  <Frame id="$main" sticky={false} type="main">
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Image
        id="image1"
        dbBlobId="a8b95b93-2c9c-44f8-8551-4ade126d933e"
        fit="contain"
        heightType="fixed"
        horizontalAlign="center"
        src={
          'https://i.ibb.co/FgXn9b8/Screen-Shot-2022-07-22-at-10-25-02-AM.png" alt="Screen-Shot-2022-07-22-at-10-25-02-AM'
        }
        srcType="dbBlobId"
        style={{
          ordered: [{ borderColor: "surfaceSecondary" }, { borderRadius: "" }],
        }}
      >
        <Event
          event="click"
          method="openApp"
          params={{
            ordered: [{ uuid: "07f0460a-7e55-11ec-a78c-fb8eb1d5497a" }],
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Image>
      <Avatar
        id="avatar1"
        fallback="{{ current_user.fullName }}"
        imageSize={32}
        label="{{ current_user.fullName }}"
        labelAlign="right"
        labelCaption="{{ current_user.email }}"
        labelPosition="left"
        src="{{ current_user.profilePhotoUrl }}"
        style={{ ordered: [{ background: "automatic" }] }}
      />
      <DropdownButton
        id="dropdownButton1"
        horizontalAlign="right"
        icon="user"
        itemMode="static"
        overlayMaxHeight={375}
        style={{
          ordered: [
            { border: "surfacePrimary" },
            { label: "rgba(159, 158, 158, 1)" },
          ],
        }}
        styleVariant="outline"
        text="{{userPermissionState.value.user.groups['0'].name}}"
      >
        <Option
          id="1f872"
          hidden="{{userPermissionState.value.user.groups['0'].name==='Admin'}}"
          icon="thunderbolt"
          label="Admin "
        >
          <Event
            event="click"
            method="setIn"
            params={{
              ordered: [
                { value: "Admin" },
                { keyPath: "['user','groups','0', 'name']" },
              ],
            }}
            pluginId="userPermissionState"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </Option>
        <Option
          id="29395"
          hidden="{{userPermissionState.value.user.groups['0'].name==='View User'}}"
          icon="lock"
          label="View User"
        >
          <Event
            event="click"
            method="setIn"
            params={{
              ordered: [
                { keyPath: "['user','groups','0', 'name']" },
                { value: "View User" },
              ],
            }}
            pluginId="userPermissionState"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </Option>
        <Option
          id="bbbac"
          disabled={false}
          hidden="{{userPermissionState.value.user.groups['0'].name==='Customer Support Rep'}}"
          icon="phone"
          label="Customer Support Rep"
        >
          <Event
            event="click"
            method="setIn"
            params={{
              ordered: [
                { value: "Customer Support Rep" },
                { keyPath: "['user','groups','0', 'name']" },
              ],
            }}
            pluginId="userPermissionState"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </Option>
      </DropdownButton>
      <Tabs
        id="tabs1"
        _defaultValue={null}
        itemMode="static"
        style={{
          ordered: [
            { selectedText: "primary" },
            { unselectedText: "tertiary" },
            { selectedBackground: "secondary" },
            { hoverText: "primary" },
          ],
        }}
        value="{{ appUUID.value }}"
      >
        <Option
          id="83d6b"
          disabled={false}
          hidden={false}
          icon="home"
          iconPosition="left"
          label="Home"
          value="07f0460a-7e55-11ec-a78c-fb8eb1d5497a"
        />
        <Option
          id="beda5"
          hidden="{{userPermissionState.value.user.groups[0].name==='Customer Support Rep'}}"
          icon="safety"
          iconPosition="left"
          label="Fraud Monitoring"
          value="71cf2580-f765-11ec-8d6f-33d93da3fb90"
        />
        <Option
          id="d1866"
          hidden="{{userPermissionState.value.user.groups[0].name==='Customer Support Rep'}}"
          icon="bank"
          iconPosition="left"
          label="Special Assets"
          value="0d3c005e-0c58-11ed-a87a-33ef0912fadf"
        />
        <Option
          id="19e3c"
          disabled={false}
          hidden="{{userPermissionState.value.user.groups[0].name==='Customer Support Rep'}}"
          icon="usergroup-add"
          iconPosition="left"
          label="KYC"
          value={'"f0a0b830-0a0f-11ed-82c0-f79535bdde7a"'}
        />
        <Option
          id="52625"
          icon="mail"
          iconPosition="left"
          label="Customer Support"
          value="427e7c9e-0a4e-11ed-85bf-8755ebf03521"
        />
        <Option
          id="f40bc"
          disabled={false}
          hidden="[
  'f0a0b830-0a0f-11ed-82c0-f79535bdde7a',
  '71cf2580-f765-11ec-8d6f-33d93da3fb90',
  '0d3c005e-0c58-11ed-a87a-33ef0912fadf',
  '07f0460a-7e55-11ec-a78c-fb8eb1d5497a',
  '427e7c9e-0a4e-11ed-85bf-8755ebf03521'
].includes({{ tabs1.value }})
"
          icon="dot-chart"
          iconPosition="left"
          label="ML Model"
          value="427e7c9e-0a4e-11ed-85bf-8755ebf3522"
        />
        <Event
          event="change"
          method="run"
          params={{
            ordered: [
              {
                src: "if(tabs1.value == 'f0a0b830-0a0f-11ed-82c0-f79535bdde7a'){\n  utils.openApp('f0a0b830-0a0f-11ed-82c0-f79535bdde7a')\n}\nelse if(tabs1.value == '71cf2580-f765-11ec-8d6f-33d93da3fb90'){\n  utils.openApp('71cf2580-f765-11ec-8d6f-33d93da3fb90')\n}\nelse if(tabs1.value == '0d3c005e-0c58-11ed-a87a-33ef0912fadf'){\n  utils.openApp('0d3c005e-0c58-11ed-a87a-33ef0912fadf')\n}\nelse if (tabs1.value == '07f0460a-7e55-11ec-a78c-fb8eb1d5497a'){\n  utils.openApp('07f0460a-7e55-11ec-a78c-fb8eb1d5497a')\n}\nelse if (tabs1.value == '427e7c9e-0a4e-11ed-85bf-8755ebf03521'){\n  utils.openApp('427e7c9e-0a4e-11ed-85bf-8755ebf03521')\n}\nelse{\n  utils.showNotification({ title: self.value, description: self.value, notificationType: 'info', duration: 1 })\n}",
              },
            ],
          }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
      </Tabs>
    </ModuleContainerWidget>
  </Frame>
</App>
