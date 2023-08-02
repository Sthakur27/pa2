<GlobalFunctions>
  <Folder id="folder1">
    <State
      id="state1"
      value="[
  a: 'bdcd',
  b: 'def'
]"
    />
    <State id="state2" value="[ 'asdf3','cats']" />
  </Folder>
  <SqlQueryUnified
    id="query2"
    query={include("./lib/query2.sql", "string")}
    resourceDisplayName="a"
    resourceName="f470aa80-0f92-4fc3-81e0-1f36644087a7"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="query3"
    resourceDisplayName="a"
    resourceName="f470aa80-0f92-4fc3-81e0-1f36644087a7"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="query4"
    query={include("./lib/query4.sql", "string")}
    resourceDisplayName="a"
    resourceName="f470aa80-0f92-4fc3-81e0-1f36644087a7"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowRunId={null}
  />
</GlobalFunctions>
