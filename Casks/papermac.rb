cask "papermac" do
  version "27.0.0-beta.2"
  sha256 "9ddfa97f02c64aeb51fffcf6fe5a62bddd40ea39dfbb8f9028d6c84307d78bc4"

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
