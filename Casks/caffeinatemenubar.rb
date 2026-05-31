cask "caffeinatemenubar" do
  version "0.1.3"
  sha256 "9f947f9ebcd13c7160a9961efd90a61856c12d1990cd289b09ef924625f1999a"

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
