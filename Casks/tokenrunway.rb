cask "tokenrunway" do
  version "0.2.2"
  sha256 "581f7b7efd8f8a18a02e0b9a2d495980ce23426149d3a163d06add4279394bc1"

  url "https://github.com/slastrina/tokenrunway/releases/download/v#{version}/Tokenrunway_#{version}_universal.dmg"
  name "Tokenrunway"
  desc "See every AI subscription's allowance, resets and spend from the menu bar"
  homepage "https://github.com/slastrina/tokenrunway"

  depends_on :macos

  app "Tokenrunway.app"
  binary "#{appdir}/Tokenrunway.app/Contents/MacOS/tokenrunway"
  # Short names; not "tr", which is the Unix tool.
  binary "#{appdir}/Tokenrunway.app/Contents/MacOS/tokenrunway", target: "runway"
  binary "#{appdir}/Tokenrunway.app/Contents/MacOS/tokenrunway", target: "trw"

  uninstall quit: "io.github.slastrina.tokenrunway"

  zap trash: [
    "~/Library/Application Support/io.github.slastrina.tokenrunway",
    "~/Library/Caches/io.github.slastrina.tokenrunway",
    "~/Library/LaunchAgents/Tokenrunway.plist",
    "~/Library/WebKit/io.github.slastrina.tokenrunway",
  ]
end
