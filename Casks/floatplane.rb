cask "floatplane" do
  version "1.4.2"

  on_arm do
    sha256 "fd741711365aab65834623ef4507720947d4e324a580903e8bb788daed863d1c"
    url "https://github.com/andrinoff/floatplane/releases/download/v#{version}/Floatplane-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "9c64c89d57ec748cfdcb9fa29eadd4e2cffae3ecea1b51f12125bfc0bf4256bf"
    url "https://github.com/andrinoff/floatplane/releases/download/v#{version}/Floatplane-#{version}-x64.dmg"
  end

  name "Floatplane"
  desc "A wallpaper manager app for macOS"
  homepage "https://github.com/andrinoff/floatplane"

  app "Floatplane.app"

  # This section is optional but recommended for a clean uninstall
  zap trash: [
    "~/Library/Application Support/Floatplane",
    "~/Library/Preferences/com.andrinoff.floatplane.plist",
    "~/Library/Saved Application State/com.andrinoff.floatplane.savedState",
  ]
end