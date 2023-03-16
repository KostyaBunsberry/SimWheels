import SwiftUI

@main
struct SimWheelsApp: App {

    init() {
        killHelperIfNeeded()
    }

    var body: some Scene {

        Settings {
            SettingsView()
        }

        MenuBarExtra("SimWheels", image: "BarIcon") {
            Button("One") {

            }
            .keyboardShortcut("1")
            Divider()
            Button("Settings") {
                NSApp.sendAction(Selector(("showSettingsWindow:")), to: nil, from: nil)
            }.keyboardShortcut("s")
            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }.keyboardShortcut("q")
        }
    }


    private func killHelperIfNeeded() {
        let launcherAppId = "com.bunsberry.SimWheelsHelper"
        let runningApps = NSWorkspace.shared.runningApplications
        let isRunning = !runningApps.filter { $0.bundleIdentifier == launcherAppId }.isEmpty

        guard isRunning else { return }
        DistributedNotificationCenter.default().post(
            name: Notification.Name("killLauncher"),
            object: Bundle.main.bundleIdentifier!
        )
    }
}
