cask "caffeinatemenubar" do
  version "0.1.5"
  sha256 "d235fbde8ecd441f4ae870c7fec3503e1d4ac82e4475ac12b95979dc4eaf3abd"

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
