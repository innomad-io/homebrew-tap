cask "followerbar" do
  version "0.1.15"

  if Hardware::CPU.arm?
    url "https://github.com/innomad-io/follower-bar/releases/download/v0.1.15/FollowerBar_0.1.15_aarch64.dmg"
    sha256 "036fe39711e90d5f9ad0d00a8a3dc4ace1e84dbd563269650d47b681ba37bd1a"
  else
    url "https://github.com/innomad-io/follower-bar/releases/download/v0.1.15/FollowerBar_0.1.15_x64.dmg"
    sha256 "fbd40018fd6e99b8453b0e2ef2e7c238e78478acb65a5855a8db9b7fc3ac8d4e"
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
