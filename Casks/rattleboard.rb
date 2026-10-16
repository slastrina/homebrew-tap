cask "rattleboard" do
  version "0.1.3"
  sha256 "cc8f02bdb4a66b3dbbb5edd59b9f32977eede0e41ae3b4febdc6fe12b3e7ba83"

  url "https://github.com/slastrina/rattleboard/releases/download/v#{version}/Rattleboard_#{version}_universal.dmg"
  name "Rattleboard"
  desc "Split-flap desktop mirror and virtual board for Vestaboard"
  homepage "https://github.com/slastrina/rattleboard"

  depends_on macos: :big_sur

  app "Rattleboard.app"

  uninstall quit: "io.github.slastrina.rattleboard"

  zap trash: [
    "~/Library/Application Support/io.github.slastrina.rattleboard",
    "~/Library/Caches/io.github.slastrina.rattleboard",
    "~/Library/LaunchAgents/Rattleboard.plist",
    "~/Library/WebKit/io.github.slastrina.rattleboard",
  ]
end
