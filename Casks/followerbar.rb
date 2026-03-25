cask "followerbar" do
  version "0.1.20"

  if Hardware::CPU.arm?
    url "https://github.com/innomad-io/follower-bar/releases/download/v0.1.20/FollowerBar_0.1.19_aarch64.dmg"
    sha256 "c9d821283b57e05e453b4699d55d0709cf744b3064a54a3a30481ac391d12982"
  else
    url "https://github.com/innomad-io/follower-bar/releases/download/v0.1.20/FollowerBar_0.1.19_x64.dmg"
    sha256 "fd4aa8b66b45c059bfe72200d5da1e05f427f59ead07f14b80cc57635b65bb18"
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
