# Before publishing a public GitHub Release

- [ ] Required authorizations obtained for any file, screenshot, or `.msapp` generated in an organizational/government environment
- [ ] Package inspected for organizational tenant IDs, environment names, email addresses, connection references, service URLs, and embedded media (inspection is not authorization)
- [ ] No nonpublic content, original Army assets, actual personnel data, government logos, or external connectors
- [ ] `.msapp` extracted from the transport ZIP and not accidentally renamed from a ZIP
- [ ] `App.OnStart` contains the fictional data collection; no conflicting initialization in `Screen1.OnVisible`
- [ ] Developer notes updated to say `App.OnStart`
- [ ] Screenshots captured without tenant UI/browser chrome and cleared for sharing
- [ ] App opens in a separate authorized test environment and navigation/search works
- [ ] README describes five navigation **views**, not five separately developed screens
- [ ] GitHub screenshot references resolve (upload the images to `screenshots/`)
- [ ] GitHub Release has a real `.msapp` attached; correct version tag and release notes
- [ ] Public release download and instructions verified in a clean browser
- [ ] LinkedIn post includes the actual repository/release URL
