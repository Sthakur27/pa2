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
      _validate={false}
      autoCapitalize="none"
      autoComplete={false}
      autoFill=""
      customValidation=""
      disabled={false}
      formDataKey="{{ self.id }}"
      hidden={false}
      hideValidationMessage={false}
      iconAfter=""
      iconBefore=""
      inputTooltip=""
      invalid={false}
      label="Label"
      labelAlign="left"
      labelCaption=""
      labelPosition="left"
      labelWidth="33"
      labelWidthUnit="%"
      labelWrap={false}
      loading={false}
      maintainSpaceWhenHidden={false}
      maxLength={null}
      minLength={null}
      pattern=""
      patternType=""
      placeholder="Enter value"
      readOnly={false}
      required={false}
      showCharacterCount={false}
      showClear={false}
      showInEditor={false}
      spellCheck={false}
      textAfter=""
      textBefore=""
      tooltipText=""
      validationMessage=""
      value=""
    />
    <Button
      id="button1"
      _disclosedFields={{ array: [] }}
      clickable={false}
      disabled={false}
      hidden={false}
      horizontalAlign="stretch"
      iconAfter=""
      iconBefore=""
      loaderPosition="auto"
      loading={false}
      maintainSpaceWhenHidden={false}
      showInEditor={false}
      styleVariant="solid"
      submit={false}
      submitTargetId={null}
      text="Button"
      tooltipText=""
    />
  </Frame>
</App>
