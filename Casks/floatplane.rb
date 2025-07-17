cask "floatplane" do
  version "1.3.5"

  on_arm do
    sha256 "3121cf7556872de0be0eedea2de57ebfef9638f9ba7aa7fe50c53825a638da40"
    url "https://github.com/andrinoff/floatplane/releases/download/v#{version}/Floatplane-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "71bb62cb0efeef6093f768210b7d4b16825e2f7c28ce56c953de1599a0d758e5"
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