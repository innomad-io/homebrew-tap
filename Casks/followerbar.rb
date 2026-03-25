cask "followerbar" do
  version "0.1.22"

  if Hardware::CPU.arm?
    url "https://github.com/innomad-io/follower-bar/releases/download/v0.1.22/FollowerBar_0.1.22_aarch64.dmg"
    sha256 "5f2c735b1dcdd53dd6dd68bf12c5eb46c4de242dfe42b390fdcb1564c7318422"
  else
    url "https://github.com/innomad-io/follower-bar/releases/download/v0.1.22/FollowerBar_0.1.22_x64.dmg"
    sha256 "750eb295e6a4455a032e4c0d711fa76ee35488bf3dbd1e058d146f1e6454787d"
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
