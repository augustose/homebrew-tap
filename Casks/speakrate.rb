cask "speakrate" do
  version "1.2.0"
  sha256 "2760e9d600f945325aa2effb695d7bb26d2f5b8f294354e1e69e98dc6009a967"

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
