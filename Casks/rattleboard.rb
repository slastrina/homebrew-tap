cask "rattleboard" do
  version "0.4.0"
  sha256 "baaf7f751eac26c903734083ae4cb4c182ac1cf7b232ef3fedc3d829c1485a20"

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
