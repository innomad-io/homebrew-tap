cask "followerbar" do
  version "1.0.8"

  if Hardware::CPU.arm?
    url "https://github.com/innomad-io/followerbar-releases/releases/download/v1.0.8/FollowerBar_0.1.0_aarch64.dmg"
    sha256 "0cd8e9b217f7199cd8243625c450358cab900052b636842b89a9d8961bd07c18"
  else
    url "https://github.com/innomad-io/followerbar-releases/releases/download/v1.0.8/FollowerBar_0.1.0_x64.dmg"
    sha256 "c68f4764f86cce79b05b121aab3bc7be933a7b2db887eb03271225d31307e055"
  end

  name "FollowerBar"
  desc "Menu bar follower tracker for creators"
  homepage "https://github.com/innomad-io/follower-bar"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "FollowerBar.app"

  zap trash: [
    "~/Library/Application Support/io.innomad.followbar",
    "~/Library/Preferences/io.innomad.followbar.plist",
  ]
end
