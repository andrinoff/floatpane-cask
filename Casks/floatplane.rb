cask "floatplane" do
  version "1.2.3"

  on_arm do
    sha256 "b71d81d7dcec8bce6abe9c72daa91bfaea09cf79556215ee5cd79d588b7845d8"
    url "https://github.com/andrinoff/floatplane/releases/download/v#{version}/Floatplane-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "feac1542551b5d952193f06b7784415ee995a9eb37c3f0a0aabfeaed866d60f9"
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