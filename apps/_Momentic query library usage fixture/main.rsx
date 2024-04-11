<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Text
      id="text1"
      value={
        '**JSON query test**\n\n{{ query1.data.products.map(o => o.title).slice(0, 5).join("\\n") }}'
      }
      verticalAlign="center"
    />
  </Frame>
</App>
