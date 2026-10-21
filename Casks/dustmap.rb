cask "dustmap" do
  version "1.0.1"
  sha256 "fcfb35eeeb94ef9e2976dd13278775c60f4f5854f6c8891a7976838411c29d47"

  url "https://github.com/abhiudayg/dustmap/releases/download/v#{version}/DustMap_#{version}_aarch64.dmg"
  name "DustMap"
  desc "Storage analyzer and safe, reversible cleaner"
  homepage "https://github.com/abhiudayg/dustmap"

  depends_on macos: :ventura

  app "DustMap.app"

  zap trash: [
    "~/Library/Application Support/com.dustmap.desktop/audit.jsonl",
    "~/Library/Application Support/com.dustmap.desktop/journal",
    "~/Library/Application Support/com.dustmap.desktop/rules-cache",
    "~/Library/Application Support/com.dustmap.desktop/scan-cache",
    "~/Library/Application Support/com.dustmap.desktop/settings.json",
    "~/Library/Application Support/com.dustmap.desktop/storage-history",
    "~/Library/Logs/com.dustmap.desktop",
  ]
end
