<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  hoistFetching={true}
  showBody={true}
  showHeader={true}
>
  <Header>
    <Button
      id="buttonSelectColumns"
      _disclosedFields={{ array: [] }}
      hidden="{{tabbedContainer1.currentViewIndex!==0}}"
      iconBefore="bars"
      style={{ ordered: [{ label: "tertiary" }, { border: "tertiary" }] }}
      styleVariant="outline"
      text="Select Columns"
    >
      <Event
        event="click"
        method="open"
        params={{ ordered: [] }}
        pluginId="modalChooseColumns"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Tabs
      id="tabs1"
      _defaultValue={null}
      itemMode="static"
      navigateContainer={true}
      style={{ ordered: [{ selectedText: "rgba(166, 168, 167, 1)" }] }}
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="37dbb" value="Tab 1" />
      <Option id="13714" value="Tab 2" />
      <Option id="99703" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="c4992" viewKey="Home > User Search">
    <Select
      id="applicationStatusInput"
      _defaultValue={null}
      allowDeselect={true}
      captionByIndex=""
      colorByIndex=""
      data="{{ getAppStatus.data }}"
      disabledByIndex=""
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Application Status"
      labels=""
      labelWrap={true}
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      tooltipByIndex=""
      values="{{ item.application_status }}"
    />
    <TextInput
      id="nameInput"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      label="Name/Id"
      placeholder="Enter value"
      showClear={true}
    />
    <Select
      id="accountStatus"
      _defaultValue={null}
      allowDeselect={true}
      captionByIndex=""
      colorByIndex=""
      data="{{ getUserStatus.data }}"
      disabledByIndex=""
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Account Status"
      labels="{{ item.account_status }}"
      labelWrap={true}
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      tooltipByIndex=""
      values="{{ item.account_status }}"
    />
    <Button
      id="memberNavButton2"
      _disclosedFields={{ array: [] }}
      hidden="{{userTable.selectedRow.index == null}}"
      horizontalAlign="right"
      iconAfter="right"
      style={{ ordered: [{ border: "surfacePrimary" }, { label: "tertiary" }] }}
      styleVariant="outline"
      text="View Detail for {{userTable.selectedRow.data.name}}"
    >
      <Event
        event="click"
        method="setCurrentViewIndex"
        params={{ ordered: [{ viewIndex: "1" }] }}
        pluginId="tabbedContainer1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "{{userTable.selectedRow.data.id}}" }] }}
        pluginId="state1"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="close"
        params={{ ordered: [] }}
        pluginId="userModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Icon
      id="icon1"
      _disclosedFields={{ array: [] }}
      horizontalAlign="center"
      icon="search"
      style={{ ordered: [{ color: "rgba(7, 88, 43, 1)" }] }}
    />
    <Text
      id="text1"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgba(4, 90, 43, 1)" }] }}
      value="### Search Users"
      verticalAlign="center"
    />
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data={
        '[{"id":0,"firstName":"Chic","lastName":"Footitt","email":"chic.footitt@yahoo.com","website":"https://chic.footitt.com","text":"Nulla sit amet nibh at augue facilisis viverra quis id dui. Nullam mattis ultricies metus. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris","role":"Viewer","teams":["Workplace","Infrastructure"],"enabled":true,"createdAt":"2023-01-16T23:40:20.385Z"},{"id":1,"firstName":"Kenton","lastName":"Worling","email":"kentonworling@yahoo.com","website":"https://kenton.worling.com","text":"Duis viverra elementum ante, placerat sollicitudin ipsum laoreet nec.. Suspendisse et lacus augue. Nullam mattis ultricies metus. Etiam bibendum auctor aliquet. Proin scelerisque molestie lacinia. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sit amet metus velit. Phasellus bibendum luctus dignissim. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris","role":"Viewer","teams":["Workplace"],"enabled":false,"createdAt":"2021-12-24T23:40:20.385Z"},{"id":2,"firstName":"Evelina","lastName":"Fender","email":"efender@outlook.com","website":"https://evelina.fender.com","text":"Nulla sit amet nibh at augue facilisis viverra quis id dui. Suspendisse et lacus augue. Donec in lorem a dolor placerat gravida. Sed eu mollis felis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra elementum ante, placerat sollicitudin ipsum laoreet nec.. Etiam bibendum auctor aliquet. Nullam lacinia nec risus et pharetra","role":"Editor","teams":["Product","Sales"],"enabled":true,"createdAt":"2022-01-03T23:40:20.385Z"},{"id":3,"firstName":"Lexis","lastName":"Speers","email":"lexisspeers@icloud.com","website":"https://lexis.speers.com","text":"Donec in lorem a dolor placerat gravida. Suspendisse et lacus augue. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Proin scelerisque molestie lacinia. Sed eu mollis felis. Nullam mattis ultricies metus","role":"Admin","teams":["Infrastructure","Design"],"enabled":true,"createdAt":"2022-12-13T23:40:20.385Z"},{"id":4,"firstName":"Kenton","lastName":"Antonioni","email":"kenton.antonioni@icloud.com","website":"https://kenton.antonioni.com","text":"Etiam bibendum auctor aliquet. Nullam mattis ultricies metus. Ut ullamcorper gravida pretium. Suspendisse et lacus augue. Vivamus sit amet metus velit. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Nullam lacinia nec risus et pharetra. Proin scelerisque molestie lacinia","role":"Admin","teams":["Success","Recruiting","Data"],"enabled":true,"createdAt":"2022-04-15T23:40:20.385Z"},{"id":5,"firstName":"Nanon","lastName":"Stit","email":"nanonstit@gmail.com","website":"https://nanon.stit.com","text":"Sed eu mollis felis. Nulla sit amet nibh at augue facilisis viverra quis id dui. Vivamus sit amet metus velit. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris","role":"Editor","teams":["Data"],"enabled":false,"createdAt":"2022-10-14T23:40:20.385Z"},{"id":6,"firstName":"Shaylah","lastName":"Aynscombe","email":"shaylahaynscombe@outlook.com","website":"https://shaylah.aynscombe.com","text":"Phasellus bibendum luctus dignissim. Donec in lorem a dolor placerat gravida. Nullam mattis ultricies metus. Suspendisse et lacus augue. Proin scelerisque molestie lacinia","role":"Viewer","teams":["Infrastructure"],"enabled":true,"createdAt":"2022-01-16T23:40:20.385Z"},{"id":7,"firstName":"Lexis","lastName":"Scad","email":"lscad@gmail.com","website":"https://lexis.scad.com","text":"Nullam mattis ultricies metus","role":"Editor","teams":["Finance","Support","Product"],"enabled":true,"createdAt":"2023-04-22T23:40:20.386Z"},{"id":8,"firstName":"Joan","lastName":"Speers","email":"jspeers@outlook.com","website":"https://joan.speers.com","text":"Proin scelerisque molestie lacinia. Ut ullamcorper gravida pretium. Phasellus non nibh ut enim mattis malesuada. Nullam mattis ultricies metus. Suspendisse et lacus augue. Nullam lacinia nec risus et pharetra","role":"Editor","teams":["Infrastructure","Finance"],"enabled":true,"createdAt":"2022-08-14T23:40:20.386Z"},{"id":9,"firstName":"Cassandre","lastName":"Ansteys","email":"c.ansteys@yahoo.com","website":"https://cassandre.ansteys.com","text":"Vivamus sit amet metus velit. Suspendisse et lacus augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sit amet nibh at augue facilisis viverra quis id dui. Etiam bibendum auctor aliquet. Sed eu mollis felis. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Proin scelerisque molestie lacinia. Ut ullamcorper gravida pretium","role":"Admin","teams":["Recruiting","Success","Infrastructure"],"enabled":false,"createdAt":"2022-03-20T23:40:20.386Z"},{"id":10,"firstName":"Amberly","lastName":"Fender","email":"amberlyfender@outlook.com","website":"https://amberly.fender.com","text":"Donec in lorem a dolor placerat gravida","role":"Editor","teams":["Engineering","Sales"],"enabled":true,"createdAt":"2023-04-24T23:40:20.386Z"},{"id":11,"firstName":"Di","lastName":"Scad","email":"d.scad@yahoo.com","website":"https://di.scad.com","text":"Phasellus non nibh ut enim mattis malesuada. Ut ullamcorper gravida pretium. Suspendisse et lacus augue","role":"Admin","teams":["Design","Recruiting"],"enabled":false,"createdAt":"2022-05-06T23:40:20.386Z"},{"id":12,"firstName":"Clim","lastName":"Spratt","email":"c.spratt@outlook.com","website":"https://clim.spratt.com","text":"Ut ullamcorper gravida pretium. Duis viverra elementum ante, placerat sollicitudin ipsum laoreet nec.. Phasellus bibendum luctus dignissim. Nulla sit amet nibh at augue facilisis viverra quis id dui. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Nullam mattis ultricies metus. Phasellus non nibh ut enim mattis malesuada","role":"Admin","teams":["Marketing","Sales"],"enabled":false,"createdAt":"2022-08-18T23:40:20.386Z"},{"id":13,"firstName":"Mildred","lastName":"MacAskie","email":"mildred.macaskie@yahoo.com","website":"https://mildred.macaskie.com","text":"Nulla sit amet nibh at augue facilisis viverra quis id dui. Phasellus non nibh ut enim mattis malesuada. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris","role":"Admin","teams":["Finance","Sales","Marketing"],"enabled":false,"createdAt":"2022-05-07T23:40:20.386Z"},{"id":14,"firstName":"Clim","lastName":"Speers","email":"c.speers@yahoo.com","website":"https://clim.speers.com","text":"Suspendisse et lacus augue. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Nulla sit amet nibh at augue facilisis viverra quis id dui. Nullam lacinia nec risus et pharetra. Ut ullamcorper gravida pretium","role":"Editor","teams":["Product","Marketing"],"enabled":true,"createdAt":"2023-03-06T23:40:20.386Z"},{"id":15,"firstName":"Ulysses","lastName":"Lindback","email":"ulysses.lindback@outlook.com","website":"https://ulysses.lindback.com","text":"Ut ullamcorper gravida pretium","role":"Admin","teams":["Data","Recruiting"],"enabled":false,"createdAt":"2022-02-01T23:40:20.386Z"},{"id":16,"firstName":"Kenton","lastName":"Doble","email":"kentondoble@yahoo.com","website":"https://kenton.doble.com","text":"Nullam mattis ultricies metus. Nullam lacinia nec risus et pharetra. Vivamus sit amet metus velit","role":"Viewer","teams":["Marketing","Design","Infrastructure"],"enabled":true,"createdAt":"2022-07-06T23:40:20.386Z"},{"id":17,"firstName":"Elinore","lastName":"Pipworth","email":"e.pipworth@outlook.com","website":"https://elinore.pipworth.com","text":"Vivamus sit amet metus velit. Ut ullamcorper gravida pretium. Duis viverra elementum ante, placerat sollicitudin ipsum laoreet nec.. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Nullam mattis ultricies metus. Suspendisse et lacus augue. Nullam lacinia nec risus et pharetra. Phasellus non nibh ut enim mattis malesuada. Proin scelerisque molestie lacinia","role":"Editor","teams":["Recruiting"],"enabled":true,"createdAt":"2022-03-23T23:40:20.386Z"},{"id":18,"firstName":"Brandie","lastName":"Froment","email":"b.froment@outlook.com","website":"https://brandie.froment.com","text":"Nullam lacinia nec risus et pharetra. Etiam bibendum auctor aliquet. Suspendisse et lacus augue. Vivamus sit amet metus velit. Proin scelerisque molestie lacinia","role":"Editor","teams":["Finance","Sales"],"enabled":true,"createdAt":"2023-03-03T23:40:20.386Z"},{"id":19,"firstName":"Torin","lastName":"Dowker","email":"t.dowker@icloud.com","website":"https://torin.dowker.com","text":"Nullam mattis ultricies metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in lorem a dolor placerat gravida","role":"Admin","teams":["Data","Design","Engineering"],"enabled":true,"createdAt":"2022-03-03T23:40:20.386Z"},{"id":20,"firstName":"Barrie","lastName":"Lindback","email":"b.lindback@outlook.com","website":"https://barrie.lindback.com","text":"Proin scelerisque molestie lacinia. Nullam lacinia nec risus et pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris","role":"Editor","teams":["Product","Support","Workplace"],"enabled":true,"createdAt":"2023-04-06T23:40:20.386Z"},{"id":21,"firstName":"Lexis","lastName":"Conybear","email":"lconybear@yahoo.com","website":"https://lexis.conybear.com","text":"Donec in lorem a dolor placerat gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ullamcorper gravida pretium","role":"Admin","teams":["Marketing","Product"],"enabled":true,"createdAt":"2022-07-25T23:40:20.386Z"},{"id":22,"firstName":"Malissia","lastName":"Hellcat","email":"malissiahellcat@yahoo.com","website":"https://malissia.hellcat.com","text":"Nulla sit amet nibh at augue facilisis viverra quis id dui. Sed eu mollis felis. Ut ullamcorper gravida pretium. Phasellus non nibh ut enim mattis malesuada. Proin scelerisque molestie lacinia. Vivamus sit amet metus velit. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris","role":"Admin","teams":["Marketing","Finance"],"enabled":false,"createdAt":"2022-08-13T23:40:20.386Z"},{"id":23,"firstName":"Igor","lastName":"Narramor","email":"i.narramor@yahoo.com","website":"https://igor.narramor.com","text":"","role":"Editor","teams":["Infrastructure","Marketing"],"enabled":false,"createdAt":"2022-10-09T23:40:20.386Z"},{"id":24,"firstName":"Cullan","lastName":"Dooher","email":"cullandooher@outlook.com","website":"https://cullan.dooher.com","text":"Sed eu mollis felis. Ut ullamcorper gravida pretium. Etiam bibendum auctor aliquet","role":"Editor","teams":["Recruiting","Design","Data"],"enabled":false,"createdAt":"2022-10-13T23:40:20.386Z"},{"id":25,"firstName":"Torin","lastName":"Jelliman","email":"t.jelliman@yahoo.com","website":"https://torin.jelliman.com","text":"Nulla sit amet nibh at augue facilisis viverra quis id dui. Phasellus non nibh ut enim mattis malesuada","role":"Editor","teams":["Design"],"enabled":true,"createdAt":"2022-05-09T23:40:20.386Z"},{"id":26,"firstName":"Goldy","lastName":"Medler","email":"goldy.medler@outlook.com","website":"https://goldy.medler.com","text":"Sed eu mollis felis. Proin scelerisque molestie lacinia. Suspendisse et lacus augue. Donec in lorem a dolor placerat gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra elementum ante, placerat sollicitudin ipsum laoreet nec.. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris","role":"Editor","teams":["Product"],"enabled":false,"createdAt":"2022-11-04T23:40:20.386Z"},{"id":27,"firstName":"Joana","lastName":"Narramor","email":"jnarramor@outlook.com","website":"https://joana.narramor.com","text":"Phasellus non nibh ut enim mattis malesuada. Suspendisse et lacus augue. Phasellus bibendum luctus dignissim","role":"Editor","teams":["Data","Recruiting"],"enabled":false,"createdAt":"2023-01-31T23:40:20.386Z"},{"id":28,"firstName":"Ulysses","lastName":"Kinman","email":"ulysseskinman@yahoo.com","website":"https://ulysses.kinman.com","text":"Suspendisse et lacus augue. Ut ullamcorper gravida pretium. Nullam mattis ultricies metus. Duis viverra elementum ante, placerat sollicitudin ipsum laoreet nec.. Phasellus bibendum luctus dignissim. Etiam bibendum auctor aliquet. Proin scelerisque molestie lacinia","role":"Viewer","teams":["Product","Infrastructure","Recruiting"],"enabled":false,"createdAt":"2023-01-21T23:40:20.386Z"},{"id":29,"firstName":"Chic","lastName":"Renish","email":"chic.renish@icloud.com","website":"https://chic.renish.com","text":"Nullam lacinia nec risus et pharetra. Ut ullamcorper gravida pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam mattis ultricies metus. Vivamus sit amet metus velit. Phasellus non nibh ut enim mattis malesuada","role":"Admin","teams":["Engineering","Design"],"enabled":false,"createdAt":"2022-05-27T23:40:20.386Z"},{"id":30,"firstName":"Bennett","lastName":"Kasper","email":"b.kasper@yahoo.com","website":"https://bennett.kasper.com","text":"Proin scelerisque molestie lacinia. Nullam lacinia nec risus et pharetra. Sed eu mollis felis. Nulla sit amet nibh at augue facilisis viverra quis id dui. Ut ullamcorper gravida pretium. Vivamus sit amet metus velit. Nullam mattis ultricies metus. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Donec in lorem a dolor placerat gravida","role":"Editor","teams":["Workplace","Design"],"enabled":true,"createdAt":"2023-02-19T23:40:20.386Z"},{"id":31,"firstName":"Corabella","lastName":"Meynell","email":"cmeynell@outlook.com","website":"https://corabella.meynell.com","text":"Etiam bibendum auctor aliquet. Phasellus non nibh ut enim mattis malesuada. Duis viverra elementum ante, placerat sollicitudin ipsum laoreet nec.. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Nullam lacinia nec risus et pharetra. Ut ullamcorper gravida pretium. Suspendisse et lacus augue. Vivamus sit amet metus velit. Nullam mattis ultricies metus. Phasellus bibendum luctus dignissim","role":"Viewer","teams":["Support","Sales"],"enabled":true,"createdAt":"2022-09-05T23:40:20.386Z"},{"id":32,"firstName":"Barrie","lastName":"Hellcat","email":"barriehellcat@outlook.com","website":"https://barrie.hellcat.com","text":"Etiam bibendum auctor aliquet. Vivamus sit amet metus velit. Nulla sit amet nibh at augue facilisis viverra quis id dui. Phasellus bibendum luctus dignissim. Nullam lacinia nec risus et pharetra. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Phasellus non nibh ut enim mattis malesuada. Suspendisse et lacus augue","role":"Viewer","teams":["Recruiting"],"enabled":false,"createdAt":"2022-07-11T23:40:20.386Z"},{"id":33,"firstName":"Claire","lastName":"Routham","email":"c.routham@outlook.com","website":"https://claire.routham.com","text":"Nulla sit amet nibh at augue facilisis viverra quis id dui. Nullam lacinia nec risus et pharetra. Sed eu mollis felis. Duis viverra elementum ante, placerat sollicitudin ipsum laoreet nec.. Phasellus non nibh ut enim mattis malesuada. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Nullam mattis ultricies metus","role":"Editor","teams":["Success","Marketing","Support"],"enabled":false,"createdAt":"2022-07-28T23:40:20.386Z"},{"id":34,"firstName":"Nedi","lastName":"Medler","email":"n.medler@yahoo.com","website":"https://nedi.medler.com","text":"Ut ullamcorper gravida pretium. Nullam lacinia nec risus et pharetra","role":"Editor","teams":["Recruiting","Data"],"enabled":true,"createdAt":"2022-02-19T23:40:20.386Z"},{"id":35,"firstName":"Jud","lastName":"Wilden","email":"jwilden@gmail.com","website":"https://jud.wilden.com","text":"Nullam mattis ultricies metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum luctus dignissim. Sed eu mollis felis. Phasellus non nibh ut enim mattis malesuada","role":"Editor","teams":["Support","Product","Finance"],"enabled":false,"createdAt":"2022-06-16T23:40:20.386Z"},{"id":36,"firstName":"Goldy","lastName":"Maro","email":"g.maro@gmail.com","website":"https://goldy.maro.com","text":"Nullam lacinia nec risus et pharetra","role":"Editor","teams":["Recruiting","Success"],"enabled":true,"createdAt":"2022-05-17T23:40:20.386Z"},{"id":37,"firstName":"Sallee","lastName":"MacAskie","email":"smacaskie@icloud.com","website":"https://sallee.macaskie.com","text":"Suspendisse et lacus augue","role":"Editor","teams":["Marketing","Engineering"],"enabled":true,"createdAt":"2022-02-17T23:40:20.386Z"},{"id":38,"firstName":"Chic","lastName":"Dooher","email":"cdooher@outlook.com","website":"https://chic.dooher.com","text":"Nullam lacinia nec risus et pharetra. Suspendisse et lacus augue. Etiam bibendum auctor aliquet. Phasellus bibendum luctus dignissim. Duis viverra elementum ante, placerat sollicitudin ipsum laoreet nec.. Sed eu mollis felis. Vivamus sit amet metus velit. Nullam mattis ultricies metus. Phasellus non nibh ut enim mattis malesuada","role":"Editor","teams":["Engineering","Infrastructure"],"enabled":true,"createdAt":"2022-11-28T23:40:20.386Z"},{"id":39,"firstName":"Di","lastName":"Tierny","email":"dtierny@yahoo.com","website":"https://di.tierny.com","text":"Donec in lorem a dolor placerat gravida. Phasellus bibendum luctus dignissim. Etiam bibendum auctor aliquet","role":"Editor","teams":["Support","Design"],"enabled":false,"createdAt":"2022-09-07T23:40:20.386Z"},{"id":40,"firstName":"Pepito","lastName":"Wilden","email":"pepitowilden@outlook.com","website":"https://pepito.wilden.com","text":"Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Nulla sit amet nibh at augue facilisis viverra quis id dui. Duis viverra elementum ante, placerat sollicitudin ipsum laoreet nec.. Phasellus bibendum luctus dignissim. Sed eu mollis felis. Donec in lorem a dolor placerat gravida. Phasellus non nibh ut enim mattis malesuada. Etiam bibendum auctor aliquet","role":"Viewer","teams":["Marketing","Recruiting","Data"],"enabled":false,"createdAt":"2022-04-14T23:40:20.386Z"},{"id":41,"firstName":"Aurel","lastName":"Whewell","email":"awhewell@icloud.com","website":"https://aurel.whewell.com","text":"Nullam lacinia nec risus et pharetra. Suspendisse et lacus augue. Donec in lorem a dolor placerat gravida. Phasellus non nibh ut enim mattis malesuada. Ut ullamcorper gravida pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum luctus dignissim. Nulla sit amet nibh at augue facilisis viverra quis id dui. Proin scelerisque molestie lacinia","role":"Editor","teams":["Finance","Support"],"enabled":false,"createdAt":"2022-09-25T23:40:20.386Z"},{"id":42,"firstName":"Mildred","lastName":"Ranyell","email":"m.ranyell@yahoo.com","website":"https://mildred.ranyell.com","text":"Nullam lacinia nec risus et pharetra. Suspendisse et lacus augue","role":"Editor","teams":["Support","Success","Infrastructure"],"enabled":true,"createdAt":"2021-12-15T23:40:20.386Z"},{"id":43,"firstName":"Jud","lastName":"Grisard","email":"judgrisard@icloud.com","website":"https://jud.grisard.com","text":"Etiam bibendum auctor aliquet. Phasellus non nibh ut enim mattis malesuada. Sed eu mollis felis. Suspendisse et lacus augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam mattis ultricies metus. Donec in lorem a dolor placerat gravida","role":"Editor","teams":["Recruiting","Design","Product"],"enabled":true,"createdAt":"2022-03-22T23:40:20.386Z"},{"id":44,"firstName":"Arley","lastName":"Goodayle","email":"agoodayle@outlook.com","website":"https://arley.goodayle.com","text":"Phasellus non nibh ut enim mattis malesuada. Sed eu mollis felis","role":"Editor","teams":["Workplace","Support"],"enabled":true,"createdAt":"2021-12-14T23:40:20.386Z"},{"id":45,"firstName":"Kenton","lastName":"Aynscombe","email":"kentonaynscombe@yahoo.com","website":"https://kenton.aynscombe.com","text":"","role":"Viewer","teams":["Marketing","Product"],"enabled":false,"createdAt":"2023-02-03T23:40:20.386Z"},{"id":46,"firstName":"Shaylah","lastName":"Crop","email":"scrop@outlook.com","website":"https://shaylah.crop.com","text":"Proin scelerisque molestie lacinia. Etiam bibendum auctor aliquet. Nullam lacinia nec risus et pharetra. Suspendisse et lacus augue","role":"Editor","teams":["Design","Recruiting"],"enabled":false,"createdAt":"2022-08-21T23:40:20.386Z"},{"id":47,"firstName":"Dillie","lastName":"Freda","email":"dfreda@yahoo.com","website":"https://dillie.freda.com","text":"Ut ullamcorper gravida pretium. Nullam lacinia nec risus et pharetra. Donec in lorem a dolor placerat gravida. Proin scelerisque molestie lacinia. Nullam mattis ultricies metus. Vivamus sit amet metus velit. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Phasellus non nibh ut enim mattis malesuada","role":"Editor","teams":["Design","Success","Finance"],"enabled":true,"createdAt":"2023-02-25T23:40:20.386Z"},{"id":48,"firstName":"Evelina","lastName":"Whittall","email":"evelinawhittall@yahoo.com","website":"https://evelina.whittall.com","text":"Sed eu mollis felis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam bibendum auctor aliquet. Ut ullamcorper gravida pretium. Duis viverra elementum ante, placerat sollicitudin ipsum laoreet nec.. Nulla sit amet nibh at augue facilisis viverra quis id dui. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris","role":"Editor","teams":["Engineering","Workplace"],"enabled":true,"createdAt":"2022-11-21T23:40:20.386Z"},{"id":49,"firstName":"Philomena","lastName":"Pioli","email":"ppioli@icloud.com","website":"https://philomena.pioli.com","text":"Duis viverra elementum ante, placerat sollicitudin ipsum laoreet nec.. Nulla sit amet nibh at augue facilisis viverra quis id dui. Proin scelerisque molestie lacinia. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Ut ullamcorper gravida pretium. Donec in lorem a dolor placerat gravida. Nullam mattis ultricies metus. Vivamus sit amet metus velit. Etiam bibendum auctor aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit","role":"Editor","teams":["Product"],"enabled":true,"createdAt":"2021-12-17T23:40:20.386Z"},{"id":50,"firstName":"Joan","lastName":"Cutress","email":"j.cutress@yahoo.com","website":"https://joan.cutress.com","text":"Proin scelerisque molestie lacinia. Donec in lorem a dolor placerat gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Vivamus sit amet metus velit. Nullam mattis ultricies metus. Sed eu mollis felis. Phasellus non nibh ut enim mattis malesuada. Phasellus bibendum luctus dignissim","role":"Viewer","teams":["Finance","Data","Recruiting"],"enabled":true,"createdAt":"2022-02-03T23:40:20.386Z"},{"id":51,"firstName":"Anica","lastName":"Whitelock","email":"anicawhitelock@yahoo.com","website":"https://anica.whitelock.com","text":"Donec in lorem a dolor placerat gravida. Sed eu mollis felis. Suspendisse et lacus augue. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Phasellus bibendum luctus dignissim. Nullam lacinia nec risus et pharetra","role":"Admin","teams":["Engineering"],"enabled":false,"createdAt":"2022-06-29T23:40:20.386Z"},{"id":52,"firstName":"Roda","lastName":"Sedgeman","email":"rodasedgeman@yahoo.com","website":"https://roda.sedgeman.com","text":"Phasellus non nibh ut enim mattis malesuada. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Etiam bibendum auctor aliquet. Suspendisse et lacus augue. Nullam lacinia nec risus et pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit","role":"Editor","teams":["Success","Design"],"enabled":false,"createdAt":"2022-03-23T23:40:20.386Z"},{"id":53,"firstName":"Di","lastName":"Moult","email":"di.moult@yahoo.com","website":"https://di.moult.com","text":"Proin scelerisque molestie lacinia. Nullam lacinia nec risus et pharetra","role":"Viewer","teams":["Finance"],"enabled":false,"createdAt":"2022-09-26T23:40:20.386Z"},{"id":54,"firstName":"Tabitha","lastName":"Kasper","email":"t.kasper@outlook.com","website":"https://tabitha.kasper.com","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ullamcorper gravida pretium. Phasellus bibendum luctus dignissim. Etiam bibendum auctor aliquet. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris","role":"Editor","teams":["Recruiting","Support","Engineering"],"enabled":true,"createdAt":"2022-11-22T23:40:20.386Z"},{"id":55,"firstName":"Philomena","lastName":"Footitt","email":"p.footitt@icloud.com","website":"https://philomena.footitt.com","text":"Phasellus non nibh ut enim mattis malesuada. Nullam lacinia nec risus et pharetra. Ut ullamcorper gravida pretium. Phasellus bibendum luctus dignissim. Etiam bibendum auctor aliquet. Sed eu mollis felis","role":"Editor","teams":["Data","Workplace"],"enabled":true,"createdAt":"2022-11-22T23:40:20.386Z"},{"id":56,"firstName":"Desdemona","lastName":"Routham","email":"droutham@icloud.com","website":"https://desdemona.routham.com","text":"Duis viverra elementum ante, placerat sollicitudin ipsum laoreet nec.. Phasellus bibendum luctus dignissim. Etiam bibendum auctor aliquet. Suspendisse et lacus augue. Vivamus sit amet metus velit. Proin scelerisque molestie lacinia. Nullam lacinia nec risus et pharetra. Sed eu mollis felis. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris","role":"Viewer","teams":["Engineering","Product"],"enabled":true,"createdAt":"2022-12-03T23:40:20.386Z"},{"id":57,"firstName":"Joly","lastName":"Nana","email":"j.nana@outlook.com","website":"https://joly.nana.com","text":"Etiam bibendum auctor aliquet. Proin scelerisque molestie lacinia. Nullam mattis ultricies metus. Vivamus sit amet metus velit. Nulla sit amet nibh at augue facilisis viverra quis id dui. Phasellus bibendum luctus dignissim. Suspendisse et lacus augue. Sed eu mollis felis","role":"Viewer","teams":["Data","Success"],"enabled":true,"createdAt":"2022-03-10T23:40:20.386Z"},{"id":58,"firstName":"Desdemona","lastName":"Woltering","email":"dwoltering@icloud.com","website":"https://desdemona.woltering.com","text":"Nullam mattis ultricies metus","role":"Admin","teams":["Infrastructure"],"enabled":false,"createdAt":"2022-08-11T23:40:20.386Z"},{"id":59,"firstName":"Philomena","lastName":"Bielfelt","email":"pbielfelt@yahoo.com","website":"https://philomena.bielfelt.com","text":"Donec in lorem a dolor placerat gravida. Etiam bibendum auctor aliquet","role":"Viewer","teams":["Data","Success","Sales"],"enabled":true,"createdAt":"2023-03-28T23:40:20.386Z"},{"id":60,"firstName":"Chic","lastName":"Edser","email":"chic.edser@outlook.com","website":"https://chic.edser.com","text":"Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Nulla sit amet nibh at augue facilisis viverra quis id dui. Donec in lorem a dolor placerat gravida. Nullam lacinia nec risus et pharetra","role":"Admin","teams":["Data","Support"],"enabled":true,"createdAt":"2022-06-27T23:40:20.386Z"},{"id":61,"firstName":"Sybille","lastName":"Jelliman","email":"sybille.jelliman@outlook.com","website":"https://sybille.jelliman.com","text":"Ut ullamcorper gravida pretium. Vivamus sit amet metus velit. Nullam mattis ultricies metus. Suspendisse et lacus augue. Etiam bibendum auctor aliquet. Nullam lacinia nec risus et pharetra. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sit amet nibh at augue facilisis viverra quis id dui","role":"Editor","teams":["Sales","Marketing","Product"],"enabled":false,"createdAt":"2022-05-18T23:40:20.386Z"},{"id":62,"firstName":"Ingeberg","lastName":"Tallon","email":"i.tallon@yahoo.com","website":"https://ingeberg.tallon.com","text":"Vivamus sit amet metus velit. Proin scelerisque molestie lacinia. Suspendisse et lacus augue. Phasellus bibendum luctus dignissim. Nulla sit amet nibh at augue facilisis viverra quis id dui","role":"Editor","teams":["Marketing","Success","Sales"],"enabled":true,"createdAt":"2022-07-10T23:40:20.386Z"},{"id":63,"firstName":"Goldy","lastName":"Thaim","email":"g.thaim@icloud.com","website":"https://goldy.thaim.com","text":"Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris","role":"Editor","teams":["Support","Success","Finance"],"enabled":false,"createdAt":"2022-07-04T23:40:20.387Z"},{"id":64,"firstName":"Cullan","lastName":"Osipov","email":"cullan.osipov@yahoo.com","website":"https://cullan.osipov.com","text":"","role":"Viewer","teams":["Data","Sales"],"enabled":true,"createdAt":"2022-07-24T23:40:20.387Z"},{"id":65,"firstName":"Marj","lastName":"Speers","email":"marj.speers@yahoo.com","website":"https://marj.speers.com","text":"Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Ut ullamcorper gravida pretium. Sed eu mollis felis. Proin scelerisque molestie lacinia. Phasellus bibendum luctus dignissim. Etiam bibendum auctor aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam lacinia nec risus et pharetra. Nulla sit amet nibh at augue facilisis viverra quis id dui. Suspendisse et lacus augue","role":"Editor","teams":["Recruiting"],"enabled":false,"createdAt":"2022-11-24T23:40:20.387Z"},{"id":66,"firstName":"Nedi","lastName":"Footitt","email":"n.footitt@yahoo.com","website":"https://nedi.footitt.com","text":"Sed eu mollis felis. Ut ullamcorper gravida pretium. Suspendisse et lacus augue. Vivamus sit amet metus velit. Phasellus non nibh ut enim mattis malesuada","role":"Viewer","teams":["Recruiting","Engineering"],"enabled":false,"createdAt":"2022-03-23T23:40:20.387Z"},{"id":67,"firstName":"Evelina","lastName":"Babar","email":"e.babar@yahoo.com","website":"https://evelina.babar.com","text":"Vivamus sit amet metus velit. Nullam lacinia nec risus et pharetra. Sed eu mollis felis. Suspendisse et lacus augue. Nulla sit amet nibh at augue facilisis viverra quis id dui","role":"Viewer","teams":["Success"],"enabled":false,"createdAt":"2022-11-02T23:40:20.387Z"},{"id":68,"firstName":"Anica","lastName":"Ansteys","email":"a.ansteys@outlook.com","website":"https://anica.ansteys.com","text":"Donec in lorem a dolor placerat gravida. Duis viverra elementum ante, placerat sollicitudin ipsum laoreet nec.. Nulla sit amet nibh at augue facilisis viverra quis id dui. Phasellus non nibh ut enim mattis malesuada. Etiam bibendum auctor aliquet. Suspendisse et lacus augue. Proin scelerisque molestie lacinia","role":"Viewer","teams":["Support","Finance","Infrastructure"],"enabled":false,"createdAt":"2022-07-25T23:40:20.387Z"},{"id":69,"firstName":"Griswold","lastName":"Simka","email":"griswold.simka@yahoo.com","website":"https://griswold.simka.com","text":"Phasellus bibendum luctus dignissim. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris","role":"Admin","teams":["Recruiting","Engineering","Success"],"enabled":true,"createdAt":"2023-03-25T23:40:20.387Z"},{"id":70,"firstName":"Marj","lastName":"Narramor","email":"marjnarramor@yahoo.com","website":"https://marj.narramor.com","text":"Proin scelerisque molestie lacinia. Phasellus non nibh ut enim mattis malesuada. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris","role":"Editor","teams":["Recruiting","Support"],"enabled":true,"createdAt":"2022-02-28T23:40:20.387Z"},{"id":71,"firstName":"Igor","lastName":"Babar","email":"i.babar@outlook.com","website":"https://igor.babar.com","text":"Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Nullam lacinia nec risus et pharetra. Nulla sit amet nibh at augue facilisis viverra quis id dui","role":"Admin","teams":["Workplace","Design","Support"],"enabled":true,"createdAt":"2021-12-28T23:40:20.387Z"},{"id":72,"firstName":"Claire","lastName":"Hellcat","email":"c.hellcat@icloud.com","website":"https://claire.hellcat.com","text":"Nulla sit amet nibh at augue facilisis viverra quis id dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit","role":"Editor","teams":["Data","Marketing"],"enabled":true,"createdAt":"2022-05-28T23:40:20.387Z"},{"id":73,"firstName":"Amberly","lastName":"Worling","email":"amberlyworling@yahoo.com","website":"https://amberly.worling.com","text":"Donec in lorem a dolor placerat gravida","role":"Editor","teams":["Recruiting","Design","Engineering"],"enabled":false,"createdAt":"2022-08-15T23:40:20.387Z"},{"id":74,"firstName":"Chic","lastName":"Sedgeman","email":"csedgeman@outlook.com","website":"https://chic.sedgeman.com","text":"Sed eu mollis felis. Proin scelerisque molestie lacinia. Nulla sit amet nibh at augue facilisis viverra quis id dui. Phasellus bibendum luctus dignissim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam lacinia nec risus et pharetra. Vivamus sit amet metus velit","role":"Viewer","teams":["Success","Infrastructure"],"enabled":false,"createdAt":"2023-03-17T23:40:20.387Z"},{"id":75,"firstName":"Lexis","lastName":"Scad","email":"lexis.scad@gmail.com","website":"https://lexis.scad.com","text":"Suspendisse et lacus augue. Nullam lacinia nec risus et pharetra. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris","role":"Viewer","teams":["Marketing","Product","Sales"],"enabled":false,"createdAt":"2022-09-16T23:40:20.387Z"},{"id":76,"firstName":"Kenton","lastName":"Stood","email":"kstood@yahoo.com","website":"https://kenton.stood.com","text":"Suspendisse et lacus augue. Proin scelerisque molestie lacinia. Phasellus non nibh ut enim mattis malesuada. Ut ullamcorper gravida pretium. Nullam mattis ultricies metus. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Donec in lorem a dolor placerat gravida. Sed eu mollis felis","role":"Editor","teams":["Infrastructure"],"enabled":true,"createdAt":"2022-07-13T23:40:20.387Z"},{"id":77,"firstName":"Cullan","lastName":"Woltering","email":"cwoltering@gmail.com","website":"https://cullan.woltering.com","text":"Nullam lacinia nec risus et pharetra. Proin scelerisque molestie lacinia","role":"Editor","teams":["Support","Workplace","Success"],"enabled":true,"createdAt":"2023-03-26T23:40:20.387Z"},{"id":78,"firstName":"Goldy","lastName":"Cosham","email":"goldy.cosham@yahoo.com","website":"https://goldy.cosham.com","text":"Suspendisse et lacus augue. Nullam lacinia nec risus et pharetra. Phasellus bibendum luctus dignissim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ullamcorper gravida pretium","role":"Admin","teams":["Design","Finance","Marketing"],"enabled":false,"createdAt":"2022-09-18T23:40:20.435Z"},{"id":79,"firstName":"Dorian","lastName":"Skates","email":"dskates@outlook.com","website":"https://dorian.skates.com","text":"Phasellus bibendum luctus dignissim. Etiam bibendum auctor aliquet. Ut ullamcorper gravida pretium","role":"Viewer","teams":["Data","Recruiting","Product"],"enabled":false,"createdAt":"2023-01-03T23:40:20.435Z"},{"id":80,"firstName":"Sybille","lastName":"Balog","email":"s.balog@icloud.com","website":"https://sybille.balog.com","text":"Phasellus bibendum luctus dignissim. Nullam mattis ultricies metus. Ut ullamcorper gravida pretium. Nulla sit amet nibh at augue facilisis viverra quis id dui","role":"Editor","teams":["Marketing","Finance"],"enabled":false,"createdAt":"2023-03-22T23:40:20.435Z"},{"id":81,"firstName":"Elinore","lastName":"Jelliman","email":"elinore.jelliman@outlook.com","website":"https://elinore.jelliman.com","text":"Sed eu mollis felis. Ut ullamcorper gravida pretium","role":"Viewer","teams":["Engineering","Sales","Infrastructure"],"enabled":false,"createdAt":"2021-12-18T23:40:20.435Z"},{"id":82,"firstName":"Elinore","lastName":"Cuer","email":"e.cuer@icloud.com","website":"https://elinore.cuer.com","text":"Suspendisse et lacus augue. Phasellus non nibh ut enim mattis malesuada. Donec in lorem a dolor placerat gravida. Ut ullamcorper gravida pretium. Nullam mattis ultricies metus. Phasellus bibendum luctus dignissim. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Vivamus sit amet metus velit. Proin scelerisque molestie lacinia","role":"Editor","teams":["Data","Sales"],"enabled":false,"createdAt":"2022-02-09T23:40:20.435Z"},{"id":83,"firstName":"Jud","lastName":"Reeds","email":"jud.reeds@yahoo.com","website":"https://jud.reeds.com","text":"Suspendisse et lacus augue. Donec in lorem a dolor placerat gravida. Sed eu mollis felis. Nulla sit amet nibh at augue facilisis viverra quis id dui. Duis viverra elementum ante, placerat sollicitudin ipsum laoreet nec.. Etiam bibendum auctor aliquet","role":"Admin","teams":["Data","Recruiting"],"enabled":true,"createdAt":"2022-09-24T23:40:20.435Z"},{"id":84,"firstName":"Carolin","lastName":"Cuer","email":"carolin.cuer@yahoo.com","website":"https://carolin.cuer.com","text":"","role":"Editor","teams":["Support","Success"],"enabled":true,"createdAt":"2023-04-01T23:40:20.435Z"},{"id":85,"firstName":"Griswold","lastName":"Denison","email":"griswold.denison@yahoo.com","website":"https://griswold.denison.com","text":"Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eu mollis felis. Phasellus non nibh ut enim mattis malesuada. Vivamus sit amet metus velit. Proin scelerisque molestie lacinia. Etiam bibendum auctor aliquet. Ut ullamcorper gravida pretium","role":"Viewer","teams":["Product"],"enabled":true,"createdAt":"2022-02-03T23:40:20.435Z"},{"id":86,"firstName":"Elinore","lastName":"Narramor","email":"elinorenarramor@yahoo.com","website":"https://elinore.narramor.com","text":"Sed eu mollis felis. Vivamus sit amet metus velit. Phasellus non nibh ut enim mattis malesuada. Phasellus bibendum luctus dignissim. Nullam lacinia nec risus et pharetra. Nullam mattis ultricies metus. Proin scelerisque molestie lacinia","role":"Editor","teams":["Sales","Product"],"enabled":true,"createdAt":"2022-07-28T23:40:20.435Z"},{"id":87,"firstName":"Gael","lastName":"Fairweather","email":"gfairweather@icloud.com","website":"https://gael.fairweather.com","text":"Donec in lorem a dolor placerat gravida. Phasellus bibendum luctus dignissim. Phasellus non nibh ut enim mattis malesuada","role":"Admin","teams":["Support","Workplace"],"enabled":false,"createdAt":"2022-02-05T23:40:20.437Z"},{"id":88,"firstName":"Joana","lastName":"Simka","email":"jsimka@gmail.com","website":"https://joana.simka.com","text":"Etiam bibendum auctor aliquet. Proin scelerisque molestie lacinia. Suspendisse et lacus augue. Nullam mattis ultricies metus. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Nulla sit amet nibh at augue facilisis viverra quis id dui. Nullam lacinia nec risus et pharetra. Phasellus bibendum luctus dignissim. Donec in lorem a dolor placerat gravida. Vivamus sit amet metus velit","role":"Editor","teams":["Engineering","Marketing"],"enabled":true,"createdAt":"2022-01-23T23:40:20.437Z"},{"id":89,"firstName":"Ulysses","lastName":"Lounds","email":"ulounds@yahoo.com","website":"https://ulysses.lounds.com","text":"Ut ullamcorper gravida pretium. Donec in lorem a dolor placerat gravida. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Nullam lacinia nec risus et pharetra. Sed eu mollis felis. Nullam mattis ultricies metus. Nulla sit amet nibh at augue facilisis viverra quis id dui. Vivamus sit amet metus velit. Etiam bibendum auctor aliquet","role":"Editor","teams":["Design","Workplace"],"enabled":true,"createdAt":"2023-03-15T23:40:20.437Z"},{"id":90,"firstName":"Chic","lastName":"Grisard","email":"cgrisard@outlook.com","website":"https://chic.grisard.com","text":"Ut ullamcorper gravida pretium. Phasellus non nibh ut enim mattis malesuada. Duis viverra elementum ante, placerat sollicitudin ipsum laoreet nec.. Nullam lacinia nec risus et pharetra. Suspendisse et lacus augue. Etiam bibendum auctor aliquet. Phasellus bibendum luctus dignissim. Donec in lorem a dolor placerat gravida. Vivamus sit amet metus velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit","role":"Viewer","teams":["Success","Data","Workplace"],"enabled":true,"createdAt":"2022-10-26T23:40:20.437Z"},{"id":91,"firstName":"Arley","lastName":"Pioli","email":"arley.pioli@gmail.com","website":"https://arley.pioli.com","text":"Phasellus non nibh ut enim mattis malesuada. Ut ullamcorper gravida pretium. Suspendisse et lacus augue","role":"Viewer","teams":["Engineering"],"enabled":true,"createdAt":"2022-08-01T23:40:20.437Z"},{"id":92,"firstName":"Nedi","lastName":"Fender","email":"nedi.fender@gmail.com","website":"https://nedi.fender.com","text":"Ut ullamcorper gravida pretium. Nullam mattis ultricies metus. Vivamus sit amet metus velit. Nullam lacinia nec risus et pharetra. Suspendisse et lacus augue. Sed eu mollis felis. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Donec in lorem a dolor placerat gravida","role":"Viewer","teams":["Recruiting","Design"],"enabled":false,"createdAt":"2023-01-10T23:40:20.437Z"},{"id":93,"firstName":"Ulysses","lastName":"Jelliman","email":"ujelliman@outlook.com","website":"https://ulysses.jelliman.com","text":"Donec in lorem a dolor placerat gravida. Etiam bibendum auctor aliquet","role":"Viewer","teams":["Data","Infrastructure"],"enabled":true,"createdAt":"2022-04-06T23:40:20.437Z"},{"id":94,"firstName":"Evelina","lastName":"Maro","email":"emaro@gmail.com","website":"https://evelina.maro.com","text":"Etiam bibendum auctor aliquet. Sed eu mollis felis. Nullam lacinia nec risus et pharetra. Phasellus bibendum luctus dignissim. Phasellus non nibh ut enim mattis malesuada. Nullam mattis ultricies metus","role":"Editor","teams":["Data","Success"],"enabled":false,"createdAt":"2023-02-02T23:40:20.437Z"},{"id":95,"firstName":"Aurel","lastName":"Whittall","email":"aurel.whittall@outlook.com","website":"https://aurel.whittall.com","text":"Nullam lacinia nec risus et pharetra. Nullam mattis ultricies metus. Phasellus bibendum luctus dignissim. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Suspendisse et lacus augue. Duis viverra elementum ante, placerat sollicitudin ipsum laoreet nec.","role":"Editor","teams":["Finance","Support"],"enabled":false,"createdAt":"2023-04-02T23:40:20.437Z"},{"id":96,"firstName":"Amberly","lastName":"Hellcat","email":"ahellcat@gmail.com","website":"https://amberly.hellcat.com","text":"Etiam bibendum auctor aliquet. Suspendisse et lacus augue. Duis viverra elementum ante, placerat sollicitudin ipsum laoreet nec.","role":"Editor","teams":["Marketing","Sales"],"enabled":false,"createdAt":"2023-03-31T23:40:20.437Z"},{"id":97,"firstName":"Carolin","lastName":"Cissen","email":"carolin.cissen@yahoo.com","website":"https://carolin.cissen.com","text":"Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris. Nulla sit amet nibh at augue facilisis viverra quis id dui. Nullam mattis ultricies metus. Proin scelerisque molestie lacinia. Nullam lacinia nec risus et pharetra. Vivamus sit amet metus velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra elementum ante, placerat sollicitudin ipsum laoreet nec.. Etiam bibendum auctor aliquet. Phasellus bibendum luctus dignissim","role":"Editor","teams":["Workplace","Recruiting","Marketing"],"enabled":true,"createdAt":"2023-01-23T23:40:20.437Z"},{"id":98,"firstName":"Chic","lastName":"Dooher","email":"c.dooher@yahoo.com","website":"https://chic.dooher.com","text":"Etiam bibendum auctor aliquet. Proin scelerisque molestie lacinia. Phasellus bibendum luctus dignissim. Vivamus sit amet metus velit. Nulla sit amet nibh at augue facilisis viverra quis id dui. Phasellus non nibh ut enim mattis malesuada. Ut ullamcorper gravida pretium. Suspendisse et lacus augue","role":"Admin","teams":["Product","Data","Design"],"enabled":false,"createdAt":"2022-01-29T23:40:20.437Z"},{"id":99,"firstName":"Gael","lastName":"Thaim","email":"gael.thaim@outlook.com","website":"https://gael.thaim.com","text":"Nullam mattis ultricies metus. Vivamus sit amet metus velit. Sed eu mollis felis. Donec in lorem a dolor placerat gravida. Phasellus bibendum luctus dignissim","role":"Editor","teams":["Recruiting","Success"],"enabled":false,"createdAt":"2022-05-30T23:40:20.437Z"}]'
      }
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      enableSaveActions={true}
      primaryKeyColumnId="4842e"
      rowHeight="medium"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="4842e"
        alignment="right"
        format="decimal"
        hidden="true"
        key="id"
        label="ID"
        position="center"
        size={32}
      />
      <Column
        id="9381f"
        alignment="left"
        caption="{{ currentSourceRow.email }}"
        format="avatar"
        key="email"
        label="User"
        position="center"
        referenceId="name"
        size={250}
        valueOverride="{{ currentSourceRow.firstName }} {{ currentSourceRow.lastName }}"
      />
      <Column
        id="bbd6b"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        key="role"
        label="Role"
        placeholder="Select option"
        position="center"
        size={72}
      />
      <Column
        id="1d7e7"
        alignment="left"
        editable="true"
        format="boolean"
        hidden="false"
        key="enabled"
        label="Enabled"
        position="center"
        size={64}
      />
      <Column
        id="e5ff2"
        alignment="left"
        format="date"
        key="createdAt"
        label="Created at"
        position="center"
        size={96}
      />
      <Column
        id="fb3c4"
        alignment="left"
        cellTooltipMode="overflow"
        format="tags"
        formatOptions={{ automaticColors: true }}
        hidden="true"
        key="teams"
        label="Teams"
        placeholder="Select options"
        position="center"
        size={260}
      />
      <Column
        id="e1baf"
        alignment="left"
        format="link"
        key="website"
        label="Website"
        position="center"
        size={200}
      />
      <Column
        id="b3f31"
        alignment="left"
        cellTooltipMode="overflow"
        format="multilineString"
        key="text"
        label="Bio"
        position="center"
        size={100}
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Include src="./userModal.rsx" />
  </View>
  <View
    id="f258d"
    hidden="{{tabbedContainer1.currentViewIndex < 1}}"
    label="{{userTable.selectedRow.data.name}}"
    viewKey="Account Lookup"
  >
    <Container
      id="container5"
      hoistFetching={true}
      showBody={true}
      style={{ ordered: [{ border: "surfaceSecondary" }] }}
      styleContext={{
        ordered: [
          { surfacePrimary: "surfacePrimary" },
          { surfaceSecondary: "surfacePrimary" },
          { borderRadius: "" },
        ],
      }}
    >
      <Header>
        <Text
          id="containerTitle1"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="60378" viewKey="View 1">
        <Text
          id="text2"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{ ordered: [{ color: "tertiary" }] }}
          value="## {{userTable.selectedRow.data.name}}"
          verticalAlign="center"
        />
        <Image
          id="userImage"
          _disclosedFields={{ array: [] }}
          aspectRatio={1}
          horizontalAlign="center"
          src="https://place-puppy.com/400x400"
          style={{ ordered: [{ borderRadius: "50%" }] }}
        />
        <KeyValueMap
          id="keyValue1"
          data="{{userTable.selectedRow.data}}"
          keyTitle="{{''}}"
          prevRowFormats={{ ordered: [] }}
          prevRowMappers={{ ordered: [] }}
          rowHeaderNames={{
            ordered: [
              { account_status: "Account Status" },
              { job_sector: "Job Sector" },
              { first_transaction: "First Transaction" },
              { state: "State" },
              { total_transaction_amount: "total" },
              { address: "Address" },
              { job_title: "Job Title" },
              { language: "Language" },
              { email: "Email" },
            ],
          }}
          rows={[
            "a",
            "b",
            "c",
            "id",
            "first_name",
            "last_name",
            "email",
            "language",
            "address",
            "state",
            "country",
            "job_sector",
            "job_title",
            "account_status",
            "lat",
            "long",
            "ssn",
            "name",
            "total_transaction_amount",
            "total_transactions",
            "first_transaction",
            "loan_applications",
          ]}
          rowVisibility={{
            ordered: [
              { a: true },
              { b: true },
              { c: true },
              { account_status: true },
              { job_sector: true },
              { name: false },
              { ssn: false },
              { first_transaction: true },
              { total_transactions: false },
              { state: true },
              { loan_applications: true },
              { total_transaction_amount: false },
              { last_name: false },
              { address: true },
              { job_title: true },
              { country: false },
              { language: true },
              { first_name: false },
              { id: false },
              { long: false },
              { email: true },
              { lat: false },
            ],
          }}
          style={{
            ordered: [
              { "primary-background": "#ffffff" },
              { "border-color": "#ffffff" },
              { "primary-foreground": "#ffffff" },
            ],
          }}
          valueTitle="{{''}}"
        />
      </View>
    </Container>
    <Text
      id="text6"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "tertiary" }] }}
      value="##### Transaction Details"
      verticalAlign="center"
    />
    <Container
      id="tabbedContainer3"
      currentViewKey="{{ self.viewKeys[0] }}"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ border: "surfacePrimary" }] }}
    >
      <Header>
        <Tabs
          id="tabs3"
          _defaultValue={null}
          itemMode="static"
          navigateContainer={true}
          style={{
            ordered: [
              { selectedText: "success" },
              { unselectedText: "tertiary" },
            ],
          }}
          targetContainerId="tabbedContainer3"
          value="{{ self.values[0] }}"
        >
          <Option id="b1105" value="Tab 1" />
          <Option id="24907" value="Tab 2" />
          <Option id="f0264" value="Tab 3" />
        </Tabs>
      </Header>
      <View
        id="94dc5"
        icon="environment"
        iconPosition="left"
        viewKey="Map View"
      >
        <Map
          id="mapboxMap1"
          geoJson="{{mapFormatter.value}}"
          geoJsonLayerStyle={
            '{\n  type: \'circle\',\n  paint: {\n    "circle-color": [\n      "match",\n      ["get","action_required"],\n      "true","#ff0000", \n       "#0031CA"\n    ],\n    "circle-opacity": 0.2,\n    "circle-stroke-width": 0,\n    "circle-radius": ["get","size"]\n\t}\n}'
          }
          latitude="{{parseFloat(userTable.selectedRow.data.lat)}}"
          latitudeColumnName="x"
          longitude="{{parseFloat(userTable.selectedRow.data.long)}}"
          longitudeColumnName="y"
          onPointSelected="onPointSelectedTrigger"
          points="{{coords.value}}"
          zoom="5"
        />
      </View>
      <View id="7ca03" icon="bars" viewKey="List View">
        <TableLegacy
          id="transactionTable"
          _columns={[
            "id",
            "date",
            "status",
            "amount",
            "user_id",
            "is_fraud_new",
            "cc_type",
            "cc_number",
            "type",
            "currency",
            "account_id",
            "lat",
            "long",
            "transaction_id",
            "is_fraud",
            "reason",
            "notes",
            "reviewed",
            "is_fraud_color",
          ]}
          _columnSummaryTypes={{
            ordered: [
              { status: "" },
              { cc_number: "sum" },
              { is_fraud_new: "checkedCount" },
              { amount: "sum" },
            ],
          }}
          _columnSummaryValues={{
            ordered: [
              { status: "" },
              { cc_number: "" },
              { is_fraud_new: "" },
              { amount: "" },
            ],
          }}
          _columnVisibility={{
            ordered: [
              { notes: false },
              { reason: false },
              { cc_number: false },
              { account_id: false },
              { date: true },
              { user_id: false },
              { is_fraud: false },
              { is_fraud_new: true },
              { currency: false },
              { status: true },
              { is_fraud_color: false },
              { reviewed: false },
              { amount: true },
              { cc_type: false },
              { type: true },
              { id: true },
              { transaction_id: false },
              { long: false },
              { lat: false },
            ],
          }}
          _compatibilityMode={false}
          columnAlignment={{
            ordered: [
              { status: "left" },
              { cc_number: "right" },
              { is_fraud_new: "center" },
              { amount: "right" },
            ],
          }}
          columnColors={{
            ordered: [
              { notes: "" },
              { reason: "" },
              { cc_number: "" },
              { account_id: "" },
              { date: "" },
              { user_id: "" },
              { is_fraud: "" },
              { is_fraud_new: "" },
              { currency: "" },
              { status: "" },
              { is_fraud_color: "" },
              { reviewed: "" },
              { amount: "" },
              { cc_type: "" },
              { type: "" },
              { id: "" },
              { transaction_id: "" },
              { long: "" },
              { lat: "" },
            ],
          }}
          columnFormats={{
            ordered: [
              { status: "SingleTagDataCell" },
              { cc_number: "NumberDataCell" },
              { is_fraud_new: "CheckboxDataCell" },
              { amount: "CurrencyDataCell" },
            ],
          }}
          columnHeaderNames={{
            ordered: [
              { cc_number: "CC Number" },
              { date: "Date" },
              { is_fraud_new: "Is Fraud" },
              { currency: "Currency" },
              { status: "Status" },
              { amount: "Amount" },
              { cc_type: "CC Type" },
              { type: "Type" },
              { id: "Id" },
            ],
          }}
          columnMappers={{ ordered: [{ status: "" }] }}
          columns={[
            "id",
            "date",
            "status",
            "amount",
            "user_id",
            "is_fraud_new",
            "cc_type",
            "cc_number",
            "type",
            "currency",
            "account_id",
            "lat",
            "long",
            "transaction_id",
            "is_fraud",
            "reason",
            "notes",
            "reviewed",
            "is_fraud_color",
          ]}
          columnTypeProperties={{
            ordered: [
              {
                status: {
                  ordered: [
                    { optionData: "{{ currentColumn }}" },
                    { colorMode: "auto" },
                    { allowCustomValue: true },
                    { optionLabels: null },
                    { optionColors: null },
                    { optionValues: null },
                  ],
                },
              },
              {
                cc_number: {
                  ordered: [{ showSeparators: false }, { padDecimal: true }],
                },
              },
              { is_fraud_new: { ordered: [{ falseDisplayValue: "x" }] } },
              {
                amount: {
                  ordered: [
                    { showSeparators: true },
                    { currency: "USD" },
                    { padDecimal: true },
                  ],
                },
              },
            ],
          }}
          columnVisibility={{
            ordered: [
              { notes: false },
              { reason: false },
              { cc_number: false },
              { account_id: false },
              { date: true },
              { user_id: false },
              { is_fraud: false },
              { is_fraud_new: true },
              { currency: false },
              { status: true },
              { is_fraud_color: false },
              { reviewed: false },
              { amount: true },
              { cc_type: false },
              { type: true },
              { id: true },
              { transaction_id: false },
              { long: false },
              { lat: false },
            ],
          }}
          customButtonName=""
          data="{{ getTransactions.data }}"
          defaultSortByColumn="date"
          defaultSortDescending={true}
          doubleClickToEdit={true}
          pageSize={7}
          style={{
            ordered: [
              { border: "surfacePrimary" },
              { headerBackground: "surfacePrimary" },
            ],
          }}
        />
      </View>
    </Container>
    <Button
      id="fraudAppButton"
      _disclosedFields={{ array: [] }}
      hidden="{{userTable.selectedRow.data.account_status != 'Flagged'}}"
      style={{ ordered: [{ background: "danger" }] }}
      styleVariant="solid"
      text="Investigate Fraud"
    />
  </View>
  <Footer>
    <Button
      id="prevButton1"
      _disclosedFields={{ array: [] }}
      disabled="{{ tabbedContainer1.currentViewIndex === 0 }}"
      styleVariant="outline"
      text="Previous"
    >
      <Event
        event="click"
        method="showPreviousView"
        params={{ ordered: [{ wrap: false }] }}
        pluginId="tabbedContainer1"
        pluginInstance={null}
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="nextButton1"
      _disclosedFields={{ array: [] }}
      disabled="{{ tabbedContainer1.currentViewIndex + 1 === tabbedContainer1.viewKeys.length }}"
      text="Next"
    >
      <Event
        event="click"
        method="showNextView"
        params={{ ordered: [{ wrap: false }] }}
        pluginId="tabbedContainer1"
        pluginInstance={null}
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</Container>
