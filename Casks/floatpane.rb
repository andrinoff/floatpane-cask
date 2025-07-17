cask "floatpane" do
  version "1.4.3"

  on_arm do
    sha256 "aa522da13e388e18f6ac84a37764747dff52dfd2a9f5725a11f743b42d56e043"
    url "https://github.com/andrinoff/floatpane/releases/download/v#{version}/floatpane-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "5c83f0855c36e11b25a3ae8191493375f99ba5b4b22a354c047361de0ca805c1"
    url "https://github.com/andrinoff/floatpane/releases/download/v#{version}/floatpane-#{version}-x64.dmg"
  end

  name "floatpane"
  desc "A wallpaper manager app for macOS"
  homepage "https://github.com/andrinoff/floatpane"

  app "floatpane.app"

  # This section is optional but recommended for a clean uninstall
  zap trash: [
    "~/Library/Application Support/floatpane",
    "~/Library/Preferences/com.andrinoff.floatpane.plist",
    "~/Library/Saved Application State/com.andrinoff.floatpane.savedState",
  ]
end