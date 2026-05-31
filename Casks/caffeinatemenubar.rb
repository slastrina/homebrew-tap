cask "caffeinatemenubar" do
  version "0.1.6"
  sha256 "159d5187a92d76cf3300b252b5e3bcef23de6465cbeb3861cbe8398382e4466b"

  url "https://github.com/slastrina/caffeinate-menubar/releases/download/v#{version}/CaffeinateMenubar.zip"
  name "CaffeinateMenubar"
  desc "Menubar app that wraps the macOS caffeinate command"
  homepage "https://github.com/slastrina/caffeinate-menubar"

  depends_on macos: ">= :ventura"

  app "CaffeinateMenubar.app"

  zap trash: [
    "~/Library/Preferences/com.samuellastrina.caffeinatemenubar.plist",
  ]
end
