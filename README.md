# Northstar — Premium Power Apps Navigation Kit

**A free desktop-first Canvas App navigation starter** with a collapsible sidebar, five working navigation views, four KPI cards, searchable activity records, status pills, and a fictional in-memory dataset.

> **Release status:** Source files are included here. Attach the real `.msapp` to a GitHub Release only after authorized transfer, package review, and a successful import test. The `.msapp` is **not** included in this documentation starter.

## What it does

- Collapsible dark-navy sidebar with selected-state navigation
- Five **views within one screen**: Overview, Projects, Assets, Analytics, Settings
- Four KPI cards (active projects, tracked assets, at-risk items, completed records)
- Search by record title or fictional owner, plus section filters
- Fictional 32-row Power Fx collection — **no connectors required**
- Desktop-first layout; recommended testing at 1366 × 768 or wider

![Northstar Overview screenshot](screenshots/01-overview.png)

> Add an actual released screenshot at `screenshots/01-overview.png` before publishing. Until then, remove the image line above or replace it with an image you are authorized to publish.

## Import the application

After the reviewed `.msapp` is attached to a GitHub Release:

1. Download `Northstar-Navigation-Kit-v1.0.0.msapp` from **Releases**.
2. Open [Power Apps](https://make.powerapps.com/) with an appropriate organizational account and environment.
3. Select **Apps → Import app → From file (.msapp)**, then choose the file.
4. Open the app in Studio; run **App → … → Run OnStart** if needed to initialize the fictional data.
5. Press Play and verify the dashboard and navigation.

The app is a demonstration. No SharePoint/Dataverse data connection is needed; the sample data is stored in a local collection. See [INSTALL.md](docs/INSTALL.md) and [CUSTOMIZATION.md](docs/CUSTOMIZATION.md).

## Build directly from source

Paste [the compatible Code View control snippet](source/code-view/01_PASTE_CONTROL_TREE.yaml) into a blank tablet screen using **Paste code**. Copy [App.OnStart](source/powerfx/App.OnStart.fx) into the App's **OnStart** property and [Screen1.OnVisible](source/powerfx/Screen1.OnVisible.fx) into the screen's **OnVisible** property. Run OnStart, then play the app. Code View YAML is not identical to the `Src/*.pa.yaml` source-control representation; don't rename this file to `App.pa.yaml`.

## Demo validation

When initialized, the source dataset contains **32 rows** with the following global KPIs:

| Metric | Demo value |
|---|---:|
| Active projects (not Done) | 6 |
| Tracked assets | 8 |
| At-risk records | 4 |
| Completed records | 8 |

These are static demonstration counts, **not live business metrics**.

## Folder guide

- `source/code-view/` — pasteable Studio control YAML
- `source/powerfx/` — in-memory data initializer and navigation state
- `sample-data/` — fictional CSV reference only; the app does not connect to this CSV
- `screenshots/` — real, reviewed screenshots (add before launch)
- `docs/` — setup, customization, QA and release checks
- `linkedin/` — first announcement post draft

## Intended audience

Power Apps makers, developers, and UI designers who want a professional starting point for desktop Canvas App navigation and dashboard styling.

## Limits

This is **not** a SharePoint-connected production app, a Dataverse solution, or five separate Canvas screens. The demo uses `ClearCollect` on app initialization. See the customization documentation before implementing data access, security, and delegation-safe queries in a production solution.

## License

Original source is shared under the MIT License (see `LICENSE`). Microsoft Power Apps itself has separate product licensing requirements; this repository does not include a Microsoft software license.

## Resources

- [Import a single `.msapp`](https://learn.microsoft.com/en-us/power-apps/maker/canvas-apps/export-import-single-app)
- [Canvas app YAML source format](https://learn.microsoft.com/en-us/power-apps/maker/canvas-apps/power-apps-yaml)
