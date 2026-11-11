# Install and test Northstar Navigation Kit

## From the `.msapp` release asset

1. In the public GitHub repository select **Releases** and download `Northstar-Navigation-Kit-v1.0.0.msapp` when available.
2. In Power Apps select **Apps → Import app → From file (.msapp)**.
3. After it opens in Power Apps Studio, choose **App → … → Run OnStart** if fictional metrics are blank.
4. In Preview, check that four KPIs show 6, 8, 4, and 8 respectively; Overview shows 32 available records.
5. Test Projects, Assets, Analytics, and Settings views; verify search and collapse/expand behavior.

## Building from YAML snippet

1. Create a **blank tablet** app in Power Apps Studio in an authorized environment.
2. Choose `Screen1`, then use **Paste code** for `source/code-view/01_PASTE_CONTROL_TREE.yaml` (a control tree, **not** a whole-app import).
3. Select App → OnStart and paste `source/powerfx/App.OnStart.fx`.
4. Select Screen1 → OnVisible and paste `source/powerfx/Screen1.OnVisible.fx`.
5. Run **App.OnStart** explicitly, then Preview.

## Important

- No external data sources are used.
- The CSV is a reference copy of the synthetic collection, not an external connection.
- If you customize data records, preserve `ID`, `ItemTitle`, `Section`, `Owner`, `Status`, `Priority`, and `DueText` fields unless you also update control formulas.
- On the developer notes label, change any old text referencing `Screen.OnVisible` initialization to **App.OnStart**, which reflects this release's final configuration.
- Do not try to import the entire repository ZIP through **Import app from file**. Import only the `.msapp` file.
