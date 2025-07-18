cask "floatpane" do
  version "1.4.6"

  on_arm do
    sha256 "179f1d500cbe3baf337bd3765bbb24544ccfb8ccc3928f38917ff58770d2ffba"
    url "https://github.com/andrinoff/floatpane/releases/download/v#{version}/floatpane-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "55a60de86dd180e16a6adeb692a34c4d732de202059e0629199ad52886abb9fd"
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