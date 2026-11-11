# Customize the starter

## Navigation

The kit uses `varPNKPage` to represent the selected view and `varPNKCollapsed` for compact sidebar state. Navigation items are in the `galPNKNavigation.Items` `Table()` formula. Update the page list there and the heading/subheading `Switch()` formulas.

## Demo data

The collection `colPNKWorkItems` is initialized in `App.OnStart`, from 32 fully fictional records. Field definitions:

| Field | Type | Meaning |
|---|---|---|
| `ID` | Number | Synthetic unique record identifier |
| `ItemTitle` | Text | Record display name |
| `Section` | Text | Navigation view/category |
| `Owner` | Text | Fictional owner name |
| `Status` | Text | Demonstration work status |
| `Priority` | Text | Demonstration priority |
| `DueText` | Text | Sample date text only (not native date) |

## Future SharePoint integration (not included)

Create a SharePoint list with matching columns, replace `colPNKWorkItems` with an appropriate connected data source, and update the galleries and KPI formulas. For production, do **not** simply `ClearCollect` a large SharePoint list: collections are not a substitute for delegation-safe data access. Use typed date fields (`DueDate`) in place of the text demo dates. Implement real permissions and validate all security requirements independently; UI filtering does not provide access control.

## Appearance

- Sidebar navy: `#0D1E36`
- Card/background white: `#FFFFFF`
- Content canvas: `#F5F7FB`
- Accent blue: `#2864E9`
- Text: `#18283D`
- Border: `#E6EBF2`
- Segoe UI

This is a demo scaffold. Do not claim it provides production-ready role-based security, reliable audit trails, or data integrations.
