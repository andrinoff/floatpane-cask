cask "floatplane" do
  version "1.2.3"

  on_arm do
    sha256 "PASTE_THE_ARM64_SHA256_CHECKSUM_HERE"
    url "https://github.com/andrinoff/floatplane/releases/download/v#{version}/Floatplane-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "PASTE_THE_X64_SHA256_CHECKSUM_HERE"
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