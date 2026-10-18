cask "rattleboard" do
  version "0.4.1"
  sha256 "b47770650bbdea0370f1ba81ea6ee80d483d8b9be1e76f9235d57b548998c29d"

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
