cask "tokenrunway" do
  version "0.3.0"
  sha256 "a7142a1ce4759a838ef31330979c4c8aa9421a64353a77eb118ad0bbce8f2781"

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
