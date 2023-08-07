<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css="" />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    sticky={false}
    style={{ ordered: [{ canvas: "#f5f5f5" }] }}
    type="main"
  >
    <Text
      id="text6"
      _defaultValue=""
      value="## Home <br/>"
      verticalAlign="center"
    />
    <Divider id="divider1" />
    <Text
      id="text9"
      _defaultValue=""
      hidden="{{finTechNavBar1.userPermission.user.groups['0'].name==='Customer Support Rep'}}"
      value="#### Fraud Monitoring <br/>"
      verticalAlign="center"
    />
    <Module
      id="finTechLink2"
      ButtonIcon={'{{  "/icon:bold/computer-desktop-check"  }}'}
      Description="Monitor flagged transactions, capture notes, and flag for additional review"
      Header="Review Flagged Transactions"
      IconPrimariy="#CC62C4"
      IconSecondary="#F6E6F4"
      Link={'"71cf2580-f765-11ec-8d6f-33d93da3fb90"'}
      name="FinTech Link"
      pageUuid="d2e5cea6-3174-11ee-9f89-a3c1b920563b"
    />
    <Module
      id="finTechLink1"
      ButtonIcon={'{{  "/icon:bold/interface-lock-key"  }}'}
      Description="Simulate fraud using an ML model and track model performance"
      Header="ML Model Configuration"
      IconPrimariy=""
      IconSecondary=""
      Link=""
      name="FinTech Link"
      pageUuid="d2e5cea6-3174-11ee-9f89-a3c1b920563b"
    />
    <Spacer
      id="spacer2"
      hidden="{{finTechNavBar1.userPermission.user.groups['0'].name==='Customer Support Rep'}}"
    />
    <Text
      id="text18"
      _defaultValue=""
      value="#### Customer Support<br/>"
      verticalAlign="center"
    />
    <Module
      id="finTechLink3"
      ButtonIcon={'{{  "/icon:bold/interface-user-square"  }}'}
      Description="Search through accounts and view/edit user details"
      Header="Update User Information"
      IconPrimariy="#9574D2"
      IconSecondary="#E8E1F6"
      Link="427e7c9e-0a4e-11ed-85bf-8755ebf03521"
      name="FinTech Link"
      pageUuid="d2e5cea6-3174-11ee-9f89-a3c1b920563b"
    />
    <Module
      id="finTechLink4"
      ButtonIcon={'{{  "/icon:credit-card"  }}'}
      Description="Support app to freeze or replace lost or missing credit cards"
      Header="Replace Credit Card"
      IconPrimariy=""
      IconSecondary=""
      Link=""
      name="FinTech Link"
      pageUuid="d2e5cea6-3174-11ee-9f89-a3c1b920563b"
    />
    <Module
      id="finTechLink5"
      ButtonIcon={'{{  "/icon:bold/shopping-store-factory-building"  }}'}
      Description="Support app used to view users transactions details"
      Header="Review Transactions"
      IconPrimariy="#CC62C4"
      IconSecondary="#F6E6F4"
      Link=""
      name="FinTech Link"
      pageUuid="d2e5cea6-3174-11ee-9f89-a3c1b920563b"
    />
    <Spacer id="spacer1" />
    <Text
      id="text31"
      _defaultValue=""
      hidden="{{finTechNavBar1.userPermission.user.groups['0'].name==='Customer Support Rep'}}"
      value="#### KYC"
      verticalAlign="center"
    />
    <Module
      id="finTechLink6"
      ButtonIcon={'{{  "/icon:bold/shopping-business-startup"  }}'}
      Description="View list of applicants, review KYC documents, approve or reject applications"
      Header="Admin Dashboard"
      IconPrimariy=""
      IconSecondary=""
      Link=""
      name="FinTech Link"
      pageUuid="d2e5cea6-3174-11ee-9f89-a3c1b920563b"
    />
    <Module
      id="finTechLink7"
      ButtonIcon={'{{  "/icon:bold/interface-content-book-open"  }}'}
      Description="Application used for uploading missing KYC documents to S3 buckets"
      Header="Upload KYC Documents"
      IconPrimariy="#128747"
      IconSecondary="#B0F1BB"
      Link=""
      name="FinTech Link"
      pageUuid="d2e5cea6-3174-11ee-9f89-a3c1b920563b"
    />
  </Frame>
</App>
