cask "rattleboard" do
  version "0.11.0"
  sha256 "8042d48ff7d2576e888d49c3f4c6ed53ac79f4e9f6c9b4d9e14d4eb8478d75ea"

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
