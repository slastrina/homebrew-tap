cask "rattleboard" do
  version "0.10.5"
  sha256 "35c2fa5b871113db4807143b68bff8ed91b35f744ae1f06fd2bbad9e233d8aec"

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
