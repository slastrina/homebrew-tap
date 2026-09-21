cask "third-eye" do
  version "0.1.0"
  sha256 "461fa00d6f5a9f9c037ddf1beba084d72670807667d4d15161dd137e3a65000f"

  url "https://github.com/slastrina/third-eye/releases/download/v#{version}/Third-Eye_#{version}_aarch64.dmg"
  name "Third Eye"
  desc "Local AI overlay that can see your screen and use your Mac"
  homepage "https://iokig.com/third-eye"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Third Eye.app"

  zap trash: [
    "~/Library/Application Support/com.slastrina.thirdeye",
    "~/Library/Logs/Third Eye",
    "~/Library/Preferences/com.slastrina.thirdeye.plist",
    "~/Library/WebKit/com.slastrina.thirdeye",
    "~/Library/Caches/com.slastrina.thirdeye",
  ]
end
