import SwiftUI

struct MainView: View {
    @Binding var selectedTab: AppTab
    let username: String

    var body: some View {
        VStack(spacing: 0) {
            Group {
                switch selectedTab {
                case .chats: ChatsView()
                case .gifts: GiftsView()
                case .wallet: WalletView()
                case .profile: ProfileView(username: username)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            HStack {
                ForEach(AppTab.allCases, id: \.self) { tab in
                    Button { selectedTab = tab } label: {
                        VStack(spacing: 5) {
                            Image(systemName: tab.symbol).font(.system(size: 19, weight: .semibold))
                            Text(tab.rawValue).font(.system(size: 10, weight: .semibold))
                        }
                        .foregroundStyle(selectedTab == tab ? FGTheme.accent : FGTheme.muted)
                        .frame(maxWidth: .infinity).padding(.vertical, 11)
                    }
                }
            }
            .background(.white)
            .overlay(alignment: .top) { Rectangle().fill(FGTheme.line).frame(height: 1) }
        }
        .background(FGTheme.canvas)
    }
}
