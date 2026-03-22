cask "followerbar" do
  version "1.0.6"

  if Hardware::CPU.arm?
    url "https://github.com/innomad-io/follower-bar/releases/download/v1.0.6/FollowerBar_0.1.0_aarch64.dmg"
    sha256 "dccea25a517ff0406c065a5557f48fc1878a87e60ffd43587d240e43a4b47e1f"
  else
    url "https://github.com/innomad-io/follower-bar/releases/download/v1.0.6/FollowerBar_0.1.0_x64.dmg"
    sha256 "5b82adb457542dbb9fb3b35310e8d836776bbf2cbb74c1f6f3b8aa62e344ae80"
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
