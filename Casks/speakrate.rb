cask "speakrate" do
  version "1.0.0"
  sha256 "97882a21f0e4887a85e41dcb91049f6b0daa2ce223c30e098e9038f6f83c3fe0"

  url "https://github.com/augustose/SpeakRate/releases/download/v#{version}/SpeakRate-v#{version}-arm64.zip"
  name "SpeakRate"
  desc "Read selected text aloud with live speed control"
  homepage "https://github.com/augustose/SpeakRate"

  depends_on arch: :arm64

  app "SpeakRate.app"

  zap trash: [
    "~/Library/Preferences/com.augustose.speakrate.plist",
  ]

  caveats <<~EOS
    SpeakRate is not notarized by Apple. The first time you open it,
    macOS Gatekeeper may block it. To allow it:

      System Settings > Privacy & Security > "Open Anyway"

    or remove the quarantine attribute:

      xattr -dr com.apple.quarantine /Applications/SpeakRate.app

    SpeakRate also needs the Accessibility permission to read the
    selected text (it sends Cmd+C to the frontmost app):

      System Settings > Privacy & Security > Accessibility
  EOS
end
