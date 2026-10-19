cask "rattleboard" do
  version "0.8.0"
  sha256 "a0b56c6a6101fe4c87afee1e49bf3c62211b3ece3485dbf94e7ecb307a7bbfc7"

  url "https://github.com/slastrina/rattleboard/releases/download/v#{version}/Rattleboard_#{version}_universal.dmg"
  name "Rattleboard"
  desc "Split-flap message board for the menu bar, desktop or full screen"
  homepage "https://github.com/slastrina/rattleboard"

  depends_on :macos

  app "Rattleboard.app"

  uninstall quit: "io.github.slastrina.rattleboard"

  zap trash: [
    "~/Library/Application Support/io.github.slastrina.rattleboard",
    "~/Library/Caches/io.github.slastrina.rattleboard",
    "~/Library/LaunchAgents/Rattleboard.plist",
    "~/Library/WebKit/io.github.slastrina.rattleboard",
  ]
end
