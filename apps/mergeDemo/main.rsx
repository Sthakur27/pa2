<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <TextInput
      id="textInput1"
      _disclosedFields={{ array: [] }}
      placeholder="Enter value"
    />
    <Button
      id="button1"
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="Button"
    />
  </Frame>
</App>
