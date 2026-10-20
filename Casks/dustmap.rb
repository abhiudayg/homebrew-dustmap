cask "dustmap" do
  version "0.1.0"
  sha256 "9876f4c2e32f1a97d1ca0db83868ec763211b0813c2404d06d2aa18107f7ae14"

  url "https://github.com/abhiudayg/dustmap/releases/download/v#{version}/DustMap_#{version}_aarch64.dmg"
  name "DustMap"
  desc "Blazing-fast, transparent disk space analyzer and cleaner for macOS"
  homepage "https://github.com/abhiudayg/dustmap"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: ">= :ventura"

  app "DustMap.app"

  zap trash: [
    "~/.dustmap",
    "~/Library/Application Support/com.dustmap.desktop",
    "~/Library/Caches/com.dustmap.desktop",
    "~/Library/Preferences/com.dustmap.desktop.plist",
    "~/Library/Saved Application State/com.dustmap.desktop.savedState",
  ]
end
