cask "floatpane" do
  version "1.4.7"

  on_arm do
    sha256 "62a5b16c2ed62f036201d520d4c22d074d30db25d0ea3a86454323e22c6780ee"
    url "https://github.com/floatpane/floatpane/releases/download/v#{version}/floatpane-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "ba55a986aa98cec826c77b8811f323b3300c3c84892d9a79ef80a76857a8a641"
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
