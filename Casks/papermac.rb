cask "papermac" do
  version "27.0.0-beta.8"
  sha256 "e41833018d515e8f0ffe2b61a710f923061a72d7cb523f4a92ae761dd23ac8bb"

  url "https://dl.getpaper.sh/papermac/PaperMac-#{version}.dmg"
  name "PaperMac"
  desc "Scrolling tiling window manager"
  homepage "https://getpaper.sh/"

  livecheck do
    url "https://dl.getpaper.sh/papermac/appcast-27.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :golden_gate

  app "PaperMac.app"
  binary "#{appdir}/PaperMac.app/Contents/Helpers/papermac"

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
