cask "followerbar" do
  version "0.1.17"

  if Hardware::CPU.arm?
    url "https://github.com/innomad-io/follower-bar/releases/download/v0.1.17/FollowerBar_0.1.17_aarch64.dmg"
    sha256 "5919334b388949f2650e1ff27015cc4c0f6fad6313960c92dbb886267737efa3"
  else
    url "https://github.com/innomad-io/follower-bar/releases/download/v0.1.17/FollowerBar_0.1.17_x64.dmg"
    sha256 "1146d2687747526c68c53deb6c2da2403538406f513b44fb6b94bcfb34a3cb65"
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
