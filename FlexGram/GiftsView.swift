import SwiftUI

struct GiftsView: View {
    private let gifts: [(String, String, String, String)] = [
        ("sparkles", "Prism Bloom", "Legendary", "2 500 Flexi"),
        ("crown.fill", "Royal Crown", "Epic", "900 Flexi"),
        ("moon.stars.fill", "Moonlight", "Rare", "250 Flexi")
    ]
    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            FGHeader(title: "Подарки", subtitle: "Коллекционные цифровые предметы")
            ForEach(gifts, id: \.1) { gift in
                HStack(spacing: 15) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 17).fill(FGTheme.pale).frame(width: 68, height: 68)
                        Image(systemName: gift.0).font(.system(size: 26)).foregroundStyle(FGTheme.accent)
                    }
                    VStack(alignment: .leading, spacing: 5) {
                        Text(gift.1).font(.system(size: 16, weight: .semibold))
                        Text(gift.2).font(.system(size: 12, weight: .medium)).foregroundStyle(FGTheme.accent)
                        Text(gift.3).font(.system(size: 12)).foregroundStyle(FGTheme.muted)
                    }
                    Spacer()
                    Button("Открыть") {}
                        .font(.system(size: 12, weight: .semibold)).foregroundStyle(FGTheme.accent)
                }
                .padding(13).background(.white).clipShape(RoundedRectangle(cornerRadius: 19))
            }
            Spacer()
        }
        .padding(20).padding(.top, 12)
    }
}
