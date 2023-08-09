<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp
    id="ButtonIcon"
    defaultValue={'{{  "/icon:bold/interface-lock-key"  }}'}
  />
  <GlobalWidgetProp id="Description" defaultValue="Description of the link" />
  <GlobalWidgetProp id="Header" defaultValue="Header" />
  <GlobalWidgetProp id="IconPrimariy" defaultValue="#E6B24A" />
  <GlobalWidgetProp id="IconSecondary" defaultValue="#F5E4C4" />
  <GlobalWidgetProp
    id="Link"
    defaultValue="427e7c9e-0a4e-11ed-85bf-8755ebf03521"
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Container
        id="container1"
        heightType="fixed"
        hidden=""
        hoistFetching={true}
        overflowType="hidden"
        showBody={true}
        showFooter={true}
        style={{ ordered: [{ border: "rgba(209, 209, 209, 0)" }] }}
      >
        <View id="e47d5" viewKey="View 1">
          <Button
            id="button1"
            horizontalAlign="left"
            iconBefore="{{ ButtonIcon.value }}"
            style={{
              ordered: [
                { background: "{{IconSecondary.value}}" },
                { label: "{{IconPrimariy.value}}" },
              ],
            }}
            styleVariant="solid"
          />
          <Text
            id="text2"
            _defaultValue=""
            style={{
              ordered: [{ color: "" }, { background: "" }, { links: "" }],
            }}
            value="**{{Header.value}}**"
            verticalAlign="center"
          />
          <Text
            id="text1"
            _defaultValue=""
            style={{ ordered: [{ color: "rgba(38, 38, 38, 0.48)" }] }}
            value="<p>{{Description.value}}</p>"
            verticalAlign="center"
          />
        </View>
        <Footer>
          <Link
            id="link1"
            iconAfter="bold/interface-arrows-right-alternate"
            showUnderline="never"
            style={{ ordered: [{ text: "rgb(124, 124, 124)" }] }}
            text="Open"
          >
            <Event
              event="click"
              method="run"
              params={{ ordered: [{ src: "utils.openApp({{ Link.value }})" }] }}
              pluginId=""
              type="script"
              waitMs="0"
              waitType="debounce"
            />
          </Link>
        </Footer>
        <Event
          event="click"
          method="run"
          params={{ ordered: [{ src: "utils.openApp(Link.value)" }] }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
      </Container>
    </ModuleContainerWidget>
  </Frame>
</App>
