cask "caffeinatemenubar" do
  version "0.1.7"
  sha256 "b16c106eca1519cffed932e1842d719729bd605d29691263087abbb23ed90e0e"

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
