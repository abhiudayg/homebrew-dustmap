cask "dustmap" do
  version "1.0.0"
  sha256 "13fb33c89a1e73503fa718b929711210277eb9e9728fd7133494c7108ea4239c"

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
