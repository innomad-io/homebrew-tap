cask "followerbar" do
  version "1.0.11"

  if Hardware::CPU.arm?
    url "https://github.com/innomad-io/followerbar-releases/releases/download/v1.0.11/FollowerBar_1.0.10_aarch64.dmg"
    sha256 "23e638a897519aa22cc9e28cde0674d7fedf7c3df831fa8dca95a82f467cd673"
  else
    url "https://github.com/innomad-io/followerbar-releases/releases/download/v1.0.11/FollowerBar_1.0.10_x64.dmg"
    sha256 "f4f77270df25e1c1c4f4a5863cafbec6a88367a5a7f3d5ddbfbeb9201df5890b"
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
