cask "screenshot-bro" do
  version "4.27,169"
  sha256 "5200ac8b8f5eedd5fa472c097af05347b1fd1d456d4214b90a5b80abf8e15806"

  url "https://downloads.screenshotbro.app/ScreenshotBro-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Screenshot Bro"
  desc "Design, localize and upload App Store and Google Play screenshots"
  homepage "https://screenshotbro.app/"

  livecheck do
    url "https://screenshotbro.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Screenshot Bro.app"

  zap trash: [
    "~/Library/Application Scripts/xyz.tleskiv.screenshot",
    "~/Library/Containers/xyz.tleskiv.screenshot",
  ]
end
