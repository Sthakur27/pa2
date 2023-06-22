<App>
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Form
        id="form1"
        hoistFetching={true}
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="formTitle1"
            value="#### Form title"
            verticalAlign="center"
          />
        </Header>
        <Footer>
          <Button
            id="formButton1"
            submit={true}
            submitTargetId="form1"
            text="Submit"
          />
        </Footer>
      </Form>
      <Button id="button1" styleVariant="solid" text="Buttoni" />
    </ModuleContainerWidget>
  </Frame>
</App>