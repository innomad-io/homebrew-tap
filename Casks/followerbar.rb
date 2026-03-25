cask "followerbar" do
  version "0.1.19"

  if Hardware::CPU.arm?
    url "https://github.com/innomad-io/follower-bar/releases/download/v0.1.19/FollowerBar_0.1.19_aarch64.dmg"
    sha256 "7574bececd590377de026162731bd8ccd2bfd4a453635a04b344a7b88f3e9a28"
  else
    url "https://github.com/innomad-io/follower-bar/releases/download/v0.1.19/FollowerBar_0.1.19_x64.dmg"
    sha256 "3825abbafa898e298d6f8fd77d7d4bc7703ceb71270ddc738b36c62b0c975466"
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
