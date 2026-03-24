cask "followerbar" do
  version "0.1.16"

  if Hardware::CPU.arm?
    url "https://github.com/innomad-io/follower-bar/releases/download/v0.1.16/FollowerBar_0.1.15_aarch64.dmg"
    sha256 "ada4c3bc828ef80298b9e4e859fe08fdff3b3f771db4a5ebd886aee39e975c9d"
  else
    url "https://github.com/innomad-io/follower-bar/releases/download/v0.1.16/FollowerBar_0.1.15_x64.dmg"
    sha256 "14356f41cb724405418cd20d35d1a47c357ac51c1739d822bc177daded9ac027"
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
