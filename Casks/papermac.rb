cask "papermac" do
  version "27.0.0-alpha.5"
  sha256 "a779e9625f342d8eee94ef5b41e16dbc958d7b683c6e68b5b20b9ca096dd2832"

  url "https://dl.getpaper.sh/papermac/PaperMac-#{version}.dmg"
  name "PaperMac"
  desc "Scrolling tiling window manager"
  homepage "https://getpaper.sh/"

  livecheck do
    url "https://dl.getpaper.sh/papermac/appcast-alpha.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :golden_gate

  app "PaperMac.app"

  uninstall quit: "dev.jsonmartin.papermac"

  zap trash: [
    "~/.config/papermac",
    "~/Library/Application Support/PaperMac",
    "~/Library/Caches/dev.jsonmartin.papermac",
    "~/Library/HTTPStorages/dev.jsonmartin.papermac",
    "~/Library/Preferences/dev.jsonmartin.papermac.plist",
    "~/Library/Saved Application State/dev.jsonmartin.papermac.savedState",
  ]
end
