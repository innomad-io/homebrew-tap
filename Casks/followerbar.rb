cask "followerbar" do
  version "0.1.21"

  if Hardware::CPU.arm?
    url "https://github.com/innomad-io/follower-bar/releases/download/v0.1.21/FollowerBar_0.1.21_aarch64.dmg"
    sha256 "38b3a54b9695582c9fd8f64a40d6a93efc60730ee5073e1e2130be87dddb21a0"
  else
    url "https://github.com/innomad-io/follower-bar/releases/download/v0.1.21/FollowerBar_0.1.21_x64.dmg"
    sha256 "b1327bde1e484229b17a9099f78e53fe4b84199e5bf7916f02d415601ad724ac"
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
