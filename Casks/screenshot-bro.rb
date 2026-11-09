cask "screenshot-bro" do
  version "4.28,170"
  sha256 "fc89e52310d4f15cfa812939c6b2dac3b93e05b23ac762bc1a42983a6c346bde"

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
