<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <UrlFragments
    id="$urlFragments"
    value={{ ordered: [{ userId: "{{nameInput.value}}" }] }}
  />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    sticky={false}
    style={{ ordered: [{ canvas: "#ffffff" }] }}
    type="main"
  >
    <TextInput
      id="emailInput"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      hidden="true"
      iconBefore="mail"
      label="Email"
      patternType="email"
      placeholder="you@example.com"
    />
    <Include src="./src/tabbedContainer1.rsx" />
    <Modal
      id="KYCNavWarningModal"
      buttonText="Open KYC"
      hidden="true"
      modalHeightType="auto"
    >
      <Text
        id="text28"
        _defaultValue=""
        _disclosedFields={{ array: [] }}
        horizontalAlign="center"
        value="**Document Successfully Uploaded! To View in App, Click Button Below**"
        verticalAlign="center"
      />
      <Link
        id="link10"
        _disclosedFields={{ array: [] }}
        iconAfter="bold/interface-arrows-right-alternate"
        showUnderline="never"
        style={{ ordered: [{ text: "rgba(124, 124, 124, 1)" }] }}
        text="Open KYC"
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
    </Modal>
    <Modal
      id="updateUserInfoModal"
      buttonText="Update User Information"
      hidden="true"
      modalHeightType="auto"
      style={{ ordered: [{ "accent-background": "hsl(147, 77%, 30%)" }] }}
    >
      <Form
        id="updateUser"
        hoistFetching={true}
        initialData="{{userTable.selectedRow.data}}"
        requireValidation={true}
        resetAfterSubmit={true}
        scroll={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
        style={{ ordered: [{ border: "secondary" }] }}
      >
        <Header>
          <Text
            id="formTitle1"
            _defaultValue=""
            _disclosedFields={{ array: [] }}
            style={{ ordered: [{ color: "tertiary" }] }}
            value="#### Update Information for {{userTable.selectedRow.data.name}}"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextInput
            id="inputEmail"
            _defaultValue=""
            _disclosedFields={{ array: [] }}
            formDataKey="email"
            iconBefore="mail"
            label="Email"
            patternType="email"
            placeholder="you@example.com"
            required={true}
          />
          <TextInput
            id="inputFirstName"
            _defaultValue=""
            _disclosedFields={{ array: [] }}
            formDataKey="first_name"
            label="First name"
            maxLength="15"
            minLength="3"
            placeholder="Enter value"
            required={true}
          />
          <TextInput
            id="inputLastName"
            _defaultValue=""
            _disclosedFields={{ array: [] }}
            formDataKey="last_name"
            label="Last name"
            minLength="3"
            placeholder="Enter value"
            required={true}
          />
          <TextInput
            id="inputSSN"
            _defaultValue=""
            _disclosedFields={{ array: [] }}
            formDataKey="ssn"
            label="SSN"
            pattern="^\d{9}$"
            patternType="regex"
            placeholder="Enter value"
            required={true}
          />
          <TextInput
            id="inputJobSector"
            _defaultValue=""
            _disclosedFields={{ array: [] }}
            formDataKey="job_sector"
            label="Job sector"
            placeholder="Enter value"
            required={true}
          />
          <TextInput
            id="inputState"
            _defaultValue=""
            _disclosedFields={{ array: [] }}
            formDataKey="state"
            label="State"
            placeholder="Enter value"
            required={true}
          />
          <TextInput
            id="inputCountry"
            _defaultValue=""
            _disclosedFields={{ array: [] }}
            formDataKey="country"
            label="Country"
            placeholder="Enter value"
            required={true}
          />
          <TextInput
            id="inputAddress"
            _defaultValue=""
            _disclosedFields={{ array: [] }}
            formDataKey="address"
            label="Address"
            placeholder="Enter value"
            required={true}
          />
          <TextInput
            id="inputLanguage"
            _defaultValue=""
            _disclosedFields={{ array: [] }}
            formDataKey="language"
            label="Language"
            placeholder="Enter value"
            required={true}
          />
        </Body>
        <Footer>
          <Button
            id="submitUpdateUserButton"
            _disclosedFields={{ array: [] }}
            submit={true}
            submitTargetId="updateUser"
            text="Submit"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="form1SubmitToUsers"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="submit"
          method="close"
          params={{ ordered: [] }}
          pluginId="updateUserInfoModal"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Include src="./src/newCreditCardModal.rsx" />
    <Include src="./src/tabbedContainer2.rsx" />
    <Modal
      id="modalChooseColumns"
      buttonText="Open Modal"
      hidden="true"
      modalHeightType="auto"
    >
      <Text
        id="text14"
        _defaultValue=""
        _disclosedFields={{ array: [] }}
        value="#### Choose Columns to Display"
        verticalAlign="center"
      />
      <Multiselect
        id="columnSelect"
        _defaultValue={{ array: [] }}
        data="{{ Object.keys(getUsers.data) }}"
        hideLabel={true}
        label=""
        labelPosition="top"
        labelWrap={true}
        overlayMaxHeight={375}
        placeholder="Select options"
        showSelectionIndicator={true}
        value="{{Object.keys(formatDataAsArray(getUsers.data)[0]).filter(x => !x.match(/id.*/) && !x.match(/first_name.*/) && !x.match(/last.*/) && !x.match(/ssn.*/) && !x.match(/lat.*/) && !x.match(/long.*/) && !x.match(/job.*/) )}}"
        wrapTags={true}
      />
    </Modal>
    <Modal
      id="uploadKYCDocsModal"
      buttonText="KYC Docs"
      hidden="true"
      modalHeightType="auto"
    >
      <Form
        id="form3"
        hoistFetching={true}
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="formTitle3"
            _defaultValue=""
            _disclosedFields={{ array: [] }}
            value="#### Add Document for {{userTable.selectedRow.data.name}}

Application ID {{userTable.selectedRow.data.application_id}}"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <FileInput
            id="fileInput1"
            _disclosedFields={{ array: [] }}
            accept={'[".jpeg",".jpg",".pdf",".png"]'}
            iconBefore="file"
            label="Upload File"
            parseFiles={true}
            placeholder="Upload File"
            required={true}
            textBefore="Browse"
          />
          <Select
            id="select1"
            _defaultValue={null}
            data={
              '["Driver\'s License","Passport","Facial Recognition","Proof of Address"]'
            }
            label="Document Type"
            overlayMaxHeight={375}
            placeholder="Select an option"
            required={true}
            showSelectionIndicator={true}
            value=""
          />
          <Text
            id="text15"
            _defaultValue=""
            _disclosedFields={{ array: [] }}
            hidden="{{fileInput1.files.length == 0}}"
            value="**Preview:**"
            verticalAlign="center"
          />
          <Spacer id="spacer1" />
          <Divider id="divider1" _disclosedFields={{ array: [] }} />
          <Spacer id="spacer2" />
          <Image
            id="image1"
            _disclosedFields={{ array: [] }}
            fit="contain"
            heightType="fixed"
            hidden="{{fileInput1.files.length == 0}}"
            horizontalAlign="center"
            src={
              '{{fileInput1.files.length == 0? "" : "data:" + fileInput1.files[0].type +";base64,"+fileInput1.value[0] }}\n\n'
            }
          />
        </Body>
        <Footer>
          <Button
            id="formButtonUploadDoc"
            _disclosedFields={{ array: [] }}
            style={{ ordered: [{ background: "success" }] }}
            submitTargetId="form3"
            text="Upload"
          >
            <Event
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="s3Upload"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="click"
              method="close"
              params={{ ordered: [] }}
              pluginId="uploadKYCDocsModal"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
        </Footer>
      </Form>
    </Modal>
    <Modal
      id="sendEmail"
      buttonText="Open Modal"
      hidden="true"
      modalHeightType="auto"
      modalWidth="60%"
    >
      <Form
        id="form4"
        hoistFetching={true}
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="formTitle4"
            _defaultValue=""
            _disclosedFields={{ array: [] }}
            value="#### Send Email"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextInput
            id="email1"
            _defaultValue=""
            _disclosedFields={{ array: [] }}
            iconBefore="mail"
            label="Email"
            patternType="email"
            placeholder="you@example.com"
          />
          <TextInput
            id="textInput11"
            _defaultValue=""
            _disclosedFields={{ array: [] }}
            label="Subject"
            placeholder="Enter value"
          />
          <TextEditor id="richTextEditor1" />
        </Body>
        <Footer>
          <Button
            id="formButtonSendEmail"
            _disclosedFields={{ array: [] }}
            style={{ ordered: [{ background: "success" }] }}
            submit={true}
            submitTargetId="form4"
            text="Send"
          />
        </Footer>
        <Event
          event="submit"
          method="close"
          params={{ ordered: [] }}
          pluginId="sendEmail"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
  </Frame>
</App>
