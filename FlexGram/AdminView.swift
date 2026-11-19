import SwiftUI

// Admin access must be granted by the backend role system.
// Never grant admin rights solely because a user has a particular phone prefix.
struct AdminView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            FGHeader(title: "FlexGram Admin", subtitle: "Управление платформой")
            adminRow("Назначить значок", "checkmark.seal")
            adminRow("Управление аккаунтами", "person.2")
            adminRow("Выдать коллекционный подарок", "gift")
            adminRow("Изменить Flexi баланс", "circle.hexagongrid")
            adminRow("Ограничить доступ", "hand.raised")
            Text("Этот экран — UI-заготовка. Все действия требуют серверной проверки роли, журналирования и подтверждения.")
                .font(.system(size: 12)).foregroundStyle(FGTheme.muted)
            Spacer()
        }.padding(20)
    }

    private func adminRow(_ title: String, _ symbol: String) -> some View {
        FGCard {
            HStack {
                Image(systemName: symbol).foregroundStyle(FGTheme.accent).frame(width: 25)
                Text(title).font(.system(size: 14, weight: .medium))
                Spacer()
                Image(systemName: "chevron.right").foregroundStyle(FGTheme.muted)
            }
        }
    }
}
