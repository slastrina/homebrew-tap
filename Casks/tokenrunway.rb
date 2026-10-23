cask "tokenrunway" do
  version "0.1.0"
  sha256 "5c372dca858a441710de7dbf34867e7e7aad2dca9cde2edde936068dceb01018"

  url "https://github.com/slastrina/tokenrunway/releases/download/v#{version}/Tokenrunway_#{version}_universal.dmg"
  name "Tokenrunway"
  desc "See every AI subscription's allowance, resets and spend from the menu bar"
  homepage "https://github.com/slastrina/tokenrunway"

  depends_on :macos

  app "Tokenrunway.app"

  uninstall quit: "io.github.slastrina.tokenrunway"

  zap trash: [
    "~/Library/Application Support/io.github.slastrina.tokenrunway",
    "~/Library/Caches/io.github.slastrina.tokenrunway",
    "~/Library/LaunchAgents/Tokenrunway.plist",
    "~/Library/WebKit/io.github.slastrina.tokenrunway",
  ]
end
