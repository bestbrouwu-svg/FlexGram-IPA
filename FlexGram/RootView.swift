import SwiftUI

struct RootView: View {
    @State private var isVerified = false
    @State private var selectedTab: AppTab = .chats
    @State private var username = "lensanse"

    var body: some View {
        Group {
            if isVerified {
                MainView(selectedTab: $selectedTab, username: username)
            } else {
                LoginView {
                    // Demo-only transition. Replace with a verified server response.
                    isVerified = true
                }
            }
        }
        .animation(.easeInOut(duration: 0.2), value: isVerified)
    }
}
