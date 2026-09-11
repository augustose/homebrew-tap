cask "soundswitcher" do
  version "1.1.0"
  sha256 "1a0298773d90d4724658634bac435a4d375d27aa263b3198128d3a496dee7462"

  url "https://github.com/augustose/SoundSwitcher/releases/download/v#{version}/SoundSwitcher-v#{version}-arm64.zip"
  name "SoundSwitcher"
  desc "Switch your entire audio setup — speaker and microphone — with one keystroke"
  homepage "https://github.com/augustose/SoundSwitcher"

  depends_on arch: :arm64

  app "SoundSwitcher.app"

  zap trash: [
    "~/Library/Preferences/com.augustose.SoundSwitcher.plist",
  ]

  caveats <<~EOS
    SoundSwitcher is not notarized by Apple. The first time you open it,
    macOS Gatekeeper may block it. To allow it:

      System Settings > Privacy & Security > "Open Anyway"

    or remove the quarantine attribute:

      xattr -dr com.apple.quarantine /Applications/SoundSwitcher.app
  EOS
end
