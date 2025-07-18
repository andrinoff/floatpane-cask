cask "floatpane" do
  version "1.4.8"

  on_arm do
    sha256 "99899a976338fe3d8786b472da618f4a37a8f274c22f42d2b81f0129c76e0e75"
    url "https://github.com/floatpane/floatpane/releases/download/v#{version}/floatpane-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "c6bd619eeeb8e6f99995855b9034fd2e4458a203ff4acf6749e52c0fd9152b00"
    url "https://github.com/floatpane/floatpane/releases/download/v#{version}/floatpane-#{version}-x64.dmg"
  end

  name "floatpane"
  desc "A wallpaper manager app for macOS"
  homepage "https://github.com/floatpane/floatpane"

  app "floatpane.app"

  # This section is optional but recommended for a clean uninstall
  zap trash: [
    "~/Library/Application Support/floatpane",
    "~/Library/Preferences/com.andrinoff.floatpane.plist",
    "~/Library/Saved Application State/com.andrinoff.floatpane.savedState",
  ]
end
