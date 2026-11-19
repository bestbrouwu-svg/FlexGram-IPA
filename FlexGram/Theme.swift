import SwiftUI

enum FGTheme {
    static let ink = Color(red: 0.10, green: 0.11, blue: 0.15)
    static let muted = Color(red: 0.48, green: 0.50, blue: 0.56)
    static let line = Color(red: 0.91, green: 0.92, blue: 0.94)
    static let accent = Color(red: 0.38, green: 0.31, blue: 0.91)
    static let pale = Color(red: 0.95, green: 0.94, blue: 1.00)
    static let canvas = Color(red: 0.985, green: 0.987, blue: 0.995)
}

struct FGCard<Content: View>: View {
    @ViewBuilder var content: Content
    var body: some View {
        content
            .padding(16)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
            .overlay(RoundedRectangle(cornerRadius: 22).stroke(FGTheme.line, lineWidth: 1))
    }
}

struct FGHeader: View {
    let title: String
    var subtitle: String? = nil
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title).font(.system(size: 30, weight: .bold, design: .rounded)).foregroundStyle(FGTheme.ink)
            if let subtitle {
                Text(subtitle).font(.system(size: 14)).foregroundStyle(FGTheme.muted)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
