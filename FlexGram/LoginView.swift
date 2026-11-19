import SwiftUI

struct LoginView: View {
    let onDemoContinue: () -> Void
    @State private var phone = ""
    @State private var username = ""
    @State private var challengeStarted = false

    var body: some View {
        ZStack {
            FGTheme.canvas.ignoresSafeArea()
            VStack(alignment: .leading, spacing: 24) {
                Spacer(minLength: 30)
                ZStack {
                    RoundedRectangle(cornerRadius: 25).fill(FGTheme.accent.gradient).frame(width: 68, height: 68)
                    Image(systemName: "bubble.left.and.bubble.right.fill").font(.system(size: 27, weight: .bold)).foregroundStyle(.white)
                }
                VStack(alignment: .leading, spacing: 8) {
                    Text("FlexGram").font(.system(size: 38, weight: .bold, design: .rounded)).foregroundStyle(FGTheme.ink)
                    Text("Твой круг общения — в новом формате.")
                        .font(.system(size: 16)).foregroundStyle(FGTheme.muted)
                }
                FGCard {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Вход в аккаунт").font(.system(size: 19, weight: .semibold))
                        fieldLabel("Номер телефона или Flex ID")
                        HStack(spacing: 10) {
                            Image(systemName: "phone").foregroundStyle(FGTheme.muted)
                            TextField("+7 или Flex ID", text: $phone)
                                .keyboardType(.phonePad)
                        }
                        .padding(14).background(FGTheme.canvas).clipShape(RoundedRectangle(cornerRadius: 13))
                        fieldLabel("Username")
                        HStack(spacing: 10) {
                            Image(systemName: "at").foregroundStyle(FGTheme.muted)
                            TextField("username", text: $username).textInputAutocapitalization(.never)
                        }
                        .padding(14).background(FGTheme.canvas).clipShape(RoundedRectangle(cornerRadius: 13))
                        Button {
                            challengeStarted = true
                        } label: {
                            HStack {
                                Text(challengeStarted ? "Ожидаем подтверждение в боте" : "Продолжить через бота")
                                Spacer()
                                Image(systemName: "arrow.up.right")
                            }
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundStyle(.white).padding(16)
                            .background(FGTheme.accent).clipShape(RoundedRectangle(cornerRadius: 15))
                        }
                        .disabled(phone.isEmpty || username.isEmpty)
                        if challengeStarted {
                            Text("Демо-экран: подключите сервер авторизации и Telegram deep link. Приложение не запрашивает и не принимает коды входа в Telegram.")
                                .font(.system(size: 12)).foregroundStyle(FGTheme.muted)
                        }
                    }
                }
                Button("Посмотреть демо") { onDemoContinue() }
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(FGTheme.accent)
                    .frame(maxWidth: .infinity)
                Spacer()
                Text("Продолжая, вы соглашаетесь с правилами FlexGram.")
                    .font(.system(size: 11)).foregroundStyle(FGTheme.muted)
                    .frame(maxWidth: .infinity)
            }
            .padding(22)
        }
    }

    private func fieldLabel(_ value: String) -> some View {
        Text(value.uppercased()).font(.system(size: 10, weight: .bold)).tracking(1.1).foregroundStyle(FGTheme.muted)
    }
}
