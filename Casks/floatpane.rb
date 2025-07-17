cask "floatpane" do
  version "1.4.5"

  on_arm do
    sha256 "ff29a180452460bed9b444e8384b4a5ed35f39ec8b74f3c295cc596b0a3340d1"
    url "https://github.com/andrinoff/floatpane/releases/download/v#{version}/floatpane-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "7b6da02b35e24da52da54fb8d9b9aeffe263a355495effb64c4584846a6b03d9"
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