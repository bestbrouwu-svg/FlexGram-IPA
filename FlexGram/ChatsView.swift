import SwiftUI

struct ChatsView: View {
    private let chats: [(String, String, String, String)] = [
        ("M", "Matrix Team", "Новый дизайн уже готов ✨", "21:48"),
        ("A", "Alex", "Отправил тебе подарок", "20:16"),
        ("F", "FlexGram News", "Добро пожаловать в FlexGram!", "Вчера")
    ]
    var body: some View {
        VStack(spacing: 18) {
            HStack {
                FGHeader(title: "Сообщения", subtitle: "Твои диалоги и сообщества")
                Spacer()
                Image(systemName: "square.and.pencil").font(.system(size: 20, weight: .semibold)).foregroundStyle(FGTheme.accent)
            }
            HStack {
                Image(systemName: "magnifyingglass").foregroundStyle(FGTheme.muted)
                Text("Поиск по чатам").foregroundStyle(FGTheme.muted)
                Spacer()
            }
            .padding(14).background(.white).clipShape(RoundedRectangle(cornerRadius: 14))
            VStack(spacing: 0) {
                ForEach(chats, id: \.1) { item in
                    HStack(spacing: 13) {
                        ZStack {
                            Circle().fill(FGTheme.pale).frame(width: 50, height: 50)
                            Text(item.0).font(.system(size: 18, weight: .bold)).foregroundStyle(FGTheme.accent)
                        }
                        VStack(alignment: .leading, spacing: 5) {
                            Text(item.1).font(.system(size: 15, weight: .semibold)).foregroundStyle(FGTheme.ink)
                            Text(item.2).font(.system(size: 13)).foregroundStyle(FGTheme.muted).lineLimit(1)
                        }
                        Spacer()
                        Text(item.3).font(.system(size: 11)).foregroundStyle(FGTheme.muted)
                    }
                    .padding(.vertical, 13)
                    if item.1 != chats.last?.1 { Divider().padding(.leading, 63) }
                }
            }
            .padding(.horizontal, 14).background(.white).clipShape(RoundedRectangle(cornerRadius: 20))
            Spacer()
        }
        .padding(20).padding(.top, 12)
    }
}
