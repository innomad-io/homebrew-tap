cask "followerbar" do
  version "0.1.18"

  if Hardware::CPU.arm?
    url "https://github.com/innomad-io/follower-bar/releases/download/v0.1.18/FollowerBar_0.1.18_aarch64.dmg"
    sha256 "e0bdd6f2c0fe083d9f1ad3631f0b67584f0e7236222224977ae72e0a77c391cf"
  else
    url "https://github.com/innomad-io/follower-bar/releases/download/v0.1.18/FollowerBar_0.1.18_x64.dmg"
    sha256 "9febaeffe19734ebe23a497273f5409276752719b4686fd625cbd3b5ea9b8600"
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
