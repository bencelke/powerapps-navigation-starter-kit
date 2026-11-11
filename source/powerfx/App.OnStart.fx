// Project 01 - Northstar Operations Suite
// Fictional records only. No external data sources or connectors.
// Paste into App.OnStart. Then select App > ... > Run OnStart.
Set(varPNKPage, "Overview");
Set(varPNKCollapsed, false);
ClearCollect(
colPNKWorkItems,
Table(
{ID: 1001, ItemTitle: "Website redesign", Section: "Projects", Owner: "Maya Chen", Status: "In progress", Priority: "High", DueText: "Nov 24, 2026"},
{ID: 1002, ItemTitle: "Customer portal launch", Section: "Projects", Owner: "Jordan Lee", Status: "At risk", Priority: "High", DueText: "Nov 18, 2026"},
{ID: 1003, ItemTitle: "Partner onboarding", Section: "Projects", Owner: "Alex Rivera", Status: "Done", Priority: "Normal", DueText: "Nov 09, 2026"},
{ID: 1004, ItemTitle: "Mobile app discovery", Section: "Projects", Owner: "Casey Brown", Status: "In progress", Priority: "Normal", DueText: "Nov 27, 2026"},
{ID: 1005, ItemTitle: "Q4 marketing rollout", Section: "Projects", Owner: "Taylor Smith", Status: "Done", Priority: "Normal", DueText: "Nov 06, 2026"},
{ID: 1006, ItemTitle: "Billing system upgrade", Section: "Projects", Owner: "Morgan Scott", Status: "Planned", Priority: "High", DueText: "Dec 04, 2026"},
{ID: 1007, ItemTitle: "Support workflow pilot", Section: "Projects", Owner: "Sam Patel", Status: "In progress", Priority: "Normal", DueText: "Nov 30, 2026"},
{ID: 1008, ItemTitle: "Regional expansion plan", Section: "Projects", Owner: "Avery Morgan", Status: "At risk", Priority: "High", DueText: "Dec 02, 2026"},
{ID: 2001, ItemTitle: "Dell Latitude 7440", Section: "Assets", Owner: "Taylor Smith", Status: "Available", Priority: "Normal", DueText: "Nov 26, 2026"},
{ID: 2002, ItemTitle: "MacBook Pro 14", Section: "Assets", Owner: "Maya Chen", Status: "Checked out", Priority: "High", DueText: "Nov 19, 2026"},
{ID: 2003, ItemTitle: "Logitech Rally Kit", Section: "Assets", Owner: "Alex Rivera", Status: "Available", Priority: "Normal", DueText: "Dec 01, 2026"},
{ID: 2004, ItemTitle: "Sony Alpha A7 IV", Section: "Assets", Owner: "Casey Brown", Status: "Checked out", Priority: "Normal", DueText: "Nov 21, 2026"},
{ID: 2005, ItemTitle: "Zebra TC52 Scanner", Section: "Assets", Owner: "Jordan Lee", Status: "Available", Priority: "Normal", DueText: "Nov 23, 2026"},
{ID: 2006, ItemTitle: "Surface Pro 10", Section: "Assets", Owner: "Morgan Scott", Status: "Maintenance", Priority: "High", DueText: "Dec 05, 2026"},
{ID: 2007, ItemTitle: "Epson Conference Projector", Section: "Assets", Owner: "Sam Patel", Status: "Available", Priority: "Low", DueText: "Dec 06, 2026"},
{ID: 2008, ItemTitle: "iPad Air 13", Section: "Assets", Owner: "Avery Morgan", Status: "Checked out", Priority: "Normal", DueText: "Nov 29, 2026"},
{ID: 3001, ItemTitle: "Operations scorecard", Section: "Analytics", Owner: "Morgan Scott", Status: "In progress", Priority: "High", DueText: "Nov 22, 2026"},
{ID: 3002, ItemTitle: "Revenue trend review", Section: "Analytics", Owner: "Jordan Lee", Status: "Done", Priority: "Normal", DueText: "Nov 12, 2026"},
{ID: 3003, ItemTitle: "SLA performance report", Section: "Analytics", Owner: "Maya Chen", Status: "At risk", Priority: "High", DueText: "Nov 18, 2026"},
{ID: 3004, ItemTitle: "Customer cohort model", Section: "Analytics", Owner: "Casey Brown", Status: "In progress", Priority: "Normal", DueText: "Dec 02, 2026"},
{ID: 3005, ItemTitle: "Inventory utilization", Section: "Analytics", Owner: "Alex Rivera", Status: "Done", Priority: "Normal", DueText: "Nov 10, 2026"},
{ID: 3006, ItemTitle: "Regional sales forecast", Section: "Analytics", Owner: "Taylor Smith", Status: "Planned", Priority: "Normal", DueText: "Dec 07, 2026"},
{ID: 3007, ItemTitle: "Ticket backlog analysis", Section: "Analytics", Owner: "Sam Patel", Status: "In progress", Priority: "Normal", DueText: "Nov 25, 2026"},
{ID: 3008, ItemTitle: "Project health report", Section: "Analytics", Owner: "Avery Morgan", Status: "Done", Priority: "Normal", DueText: "Nov 05, 2026"},
{ID: 4001, ItemTitle: "Quarterly access audit", Section: "Settings", Owner: "Maya Chen", Status: "In progress", Priority: "High", DueText: "Nov 28, 2026"},
{ID: 4002, ItemTitle: "Notification preferences", Section: "Settings", Owner: "Alex Rivera", Status: "Done", Priority: "Low", DueText: "Nov 06, 2026"},
{ID: 4003, ItemTitle: "Role review checklist", Section: "Settings", Owner: "Jordan Lee", Status: "Planned", Priority: "Normal", DueText: "Dec 03, 2026"},
{ID: 4004, ItemTitle: "Workspace theme update", Section: "Settings", Owner: "Casey Brown", Status: "Done", Priority: "Low", DueText: "Nov 08, 2026"},
{ID: 4005, ItemTitle: "MFA enrollment review", Section: "Settings", Owner: "Taylor Smith", Status: "In progress", Priority: "Normal", DueText: "Nov 30, 2026"},
{ID: 4006, ItemTitle: "Archive retention policy", Section: "Settings", Owner: "Morgan Scott", Status: "At risk", Priority: "High", DueText: "Nov 21, 2026"},
{ID: 4007, ItemTitle: "Sharing permissions", Section: "Settings", Owner: "Sam Patel", Status: "Done", Priority: "Normal", DueText: "Nov 04, 2026"},
{ID: 4008, ItemTitle: "User guide refresh", Section: "Settings", Owner: "Avery Morgan", Status: "In progress", Priority: "Low", DueText: "Dec 05, 2026"}
)
);
Set(varPNKLoadedCount, CountRows(colPNKWorkItems))
