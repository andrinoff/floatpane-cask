cask "floatplane" do
  version "1.4.1"

  on_arm do
    sha256 "c9b9bc48090e7f0fdd0acd9d732fdaebac346baa7ff2f7d3a95dff26f55645bb"
    url "https://github.com/andrinoff/floatplane/releases/download/v#{version}/Floatplane-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "6c8e5be383354357f8519f30550eff5f95c58fdefac779a8f8d1ad2501c7ee20"
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