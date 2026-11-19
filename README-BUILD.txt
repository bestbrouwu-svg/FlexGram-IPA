FLEXGRAM — CLOUD BUILD PACKAGE

This package includes an Xcode project and a GitHub Actions workflow that builds an UNSIGNED IPA on a hosted macOS runner.

To trigger the cloud build:
1. Upload the contents of this folder to a new GitHub repository.
2. Open Actions -> Build unsigned FlexGram IPA.
3. Select Run workflow.
4. When complete, download the FlexGram-unsigned-IPA artifact.

The resulting IPA is unsigned and must be signed with a valid Apple signing identity before installation.
The login flow, bot verification, chats, NFT ownership, Flexi transactions and admin actions remain prototypes/placeholders.
Do not embed Telegram bot tokens in the iOS app. Revoke any token previously pasted into a chat.
