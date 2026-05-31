cask "caffeinatemenubar" do
  version "0.1.5"
  sha256 "a0ed6a2dd5e91b02646fe3f465f80b5e8987a13f56ae4f30f7d31b52b73b5a89"

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
