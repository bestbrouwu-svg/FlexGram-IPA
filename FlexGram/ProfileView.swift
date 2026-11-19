import SwiftUI

struct ProfileView: View {
    let username: String
    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            FGHeader(title: "Профиль", subtitle: "Твоя страница FlexGram")
            FGCard {
                VStack(spacing: 12) {
                    ZStack {
                        Circle().fill(FGTheme.pale).frame(width: 86, height: 86)
                        Image(systemName: "person.fill").font(.system(size: 34)).foregroundStyle(FGTheme.accent)
                    }
                    Text("@\(username)").font(.system(size: 19, weight: .bold))
                    Text("FlexGram member").font(.system(size: 13)).foregroundStyle(FGTheme.muted)
                    HStack(spacing: 8) {
                        badge("FLEX")
                        badge("MAJOR")
                        badge("HOLD")
                    }
                    Text("Значки показаны как пример интерфейса; реальные статусы назначает сервер.")
                        .font(.system(size: 11)).foregroundStyle(FGTheme.muted).multilineTextAlignment(.center)
                }.frame(maxWidth: .infinity)
            }
            FGCard {
                HStack {
                    Label("Безопасность аккаунта", systemImage: "lock.shield")
                    Spacer()
                    Image(systemName: "chevron.right").foregroundStyle(FGTheme.muted)
                }
            }
            Spacer()
        }.padding(20).padding(.top, 12)
    }

    private func badge(_ title: String) -> some View {
        Text(title).font(.system(size: 10, weight: .bold)).foregroundStyle(FGTheme.accent)
            .padding(.horizontal, 10).padding(.vertical, 6)
            .background(FGTheme.pale).clipShape(Capsule())
    }
}
