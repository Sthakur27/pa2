<Frame
  id="$header"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  paddingType="normal"
  sticky={true}
  type="header"
>
  <Navigation id="navigation2" itemMode="static">
    <Option
      id="14b63"
      disabled={false}
      hidden={false}
      iconPosition="left"
      itemType="app"
      label="Retool"
    />
    <Option id="8122e" itemType="app" label="Apps" />
    <Option
      id="7dfa3"
      itemType="app"
      label="Resources
"
    />
    <Option id="28bef" itemType="app" label="Query Library" />
  </Navigation>
  <Avatar
    id="avatar2"
    fallback="{{ current_user.fullName }}"
    imageSize={32}
    label="{{ current_user.fullName }}"
    labelCaption="{{ current_user.email }}"
    src="{{ current_user.profilePhotoUrl }}"
    style={{ ordered: [{ background: "automatic" }] }}
  />
</Frame>
