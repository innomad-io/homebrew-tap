cask "followerbar" do
  version "1.0.9"

  if Hardware::CPU.arm?
    url "https://github.com/innomad-io/followerbar-releases/releases/download/v1.0.9/FollowerBar_1.0.8_aarch64.dmg"
    sha256 "83ac042907c3bde1da13b66bd8efb52fc69fc59d76e940d76024245870d02af7"
  else
    url "https://github.com/innomad-io/followerbar-releases/releases/download/v1.0.9/FollowerBar_1.0.8_x64.dmg"
    sha256 "f5e868c1a2dc1f22051c68273f110359f015cf0f4866cc5062d9aca7e9d48a2c"
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
