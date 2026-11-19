import Foundation

struct FlexUser: Identifiable, Codable {
    let id: String
    var username: String
    var displayName: String
    var flexBadge: String?
    var isAdmin: Bool
}

struct FlexGift: Identifiable, Codable {
    let id: String
    var name: String
    var rarity: String
    var price: Int
    var symbol: String
}

struct FlexMessage: Identifiable {
    let id = UUID()
    let author: String
    let text: String
    let time: String
    let isOutgoing: Bool
}

enum AppTab: String, CaseIterable {
    case chats = "Чаты"
    case gifts = "Подарки"
    case wallet = "Flexi"
    case profile = "Профиль"

    var symbol: String {
        switch self {
        case .chats: return "bubble.left.and.bubble.right.fill"
        case .gifts: return "gift.fill"
        case .wallet: return "circle.hexagongrid.fill"
        case .profile: return "person.crop.circle.fill"
        }
    }
}
