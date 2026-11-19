import SwiftUI

struct WalletView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            FGHeader(title: "Flexi", subtitle: "Твой баланс и история операций")
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 25).fill(LinearGradient(colors: [FGTheme.accent, Color(red: 0.57, green: 0.45, blue: 0.96)], startPoint: .topLeading, endPoint: .bottomTrailing))
                VStack(alignment: .leading, spacing: 18) {
                    Text("FLEXGRAM BALANCE").font(.system(size: 10, weight: .bold)).tracking(1.4).foregroundStyle(.white.opacity(0.8))
                    Text("1 250").font(.system(size: 38, weight: .bold, design: .rounded)).foregroundStyle(.white)
                    Text("FLEXI").font(.system(size: 12, weight: .bold)).foregroundStyle(.white.opacity(0.8))
                }.padding(22)
            }.frame(height: 170)
            Text("Быстрые действия").font(.system(size: 17, weight: .semibold))
            HStack {
                action("arrow.left.arrow.right", "Перевести")
                action("plus", "Пополнить")
                action("clock", "История")
            }
            FGCard {
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Flexi — внутренняя валюта").font(.system(size: 14, weight: .semibold))
                        Text("Баланс демонстрационный. Реальные операции подключаются через сервер.")
                            .font(.system(size: 12)).foregroundStyle(FGTheme.muted)
                    }
                    Spacer()
                }
            }
            Spacer()
        }.padding(20).padding(.top, 12)
    }

    private func action(_ icon: String, _ title: String) -> some View {
        VStack(spacing: 9) {
            Image(systemName: icon).font(.system(size: 18, weight: .semibold)).foregroundStyle(FGTheme.accent)
                .frame(width: 54, height: 54).background(FGTheme.pale).clipShape(RoundedRectangle(cornerRadius: 17))
            Text(title).font(.system(size: 11, weight: .medium)).foregroundStyle(FGTheme.ink)
        }.frame(maxWidth: .infinity)
    }
}
