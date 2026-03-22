cask "followerbar" do
  version "1.0.12"

  if Hardware::CPU.arm?
    url "https://github.com/innomad-io/followerbar-releases/releases/download/v1.0.12/FollowerBar_1.0.12_aarch64.dmg"
    sha256 "5f582ca29e175fbdd43d52b4786e9515268a18df3e64e4fdde831bd287225785"
  else
    url "https://github.com/innomad-io/followerbar-releases/releases/download/v1.0.12/FollowerBar_1.0.12_x64.dmg"
    sha256 "45ae5632820b5f51d826b9ce84f33a31a022f37e33ebc93bc7d3b58e2dfd2bca"
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
