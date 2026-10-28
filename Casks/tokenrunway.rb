cask "tokenrunway" do
  version "0.2.3"
  sha256 "6c6356c966f591652f948d962a650d3011b601fb087dcee667710eb9b40c63e0"

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
