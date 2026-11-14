cask "dither" do
  version "0.1.0"
  sha256 "f4a93cf6300da1eb8b87ca9d2a1b2a3084e588da00adf379f1bcafbc3fc21411"

  # Like Mittens, fetch from the Cloudflare Pages origin (*.pages.dev): the custom domain can
  # sit behind a bot challenge that Homebrew's curl cannot pass.
  url "https://dither-bvv.pages.dev/downloads/Dither-#{version}.dmg"
  name "Dither"
  desc "Menubar app that turns a photo into dithered pixel art"
  homepage "https://dither.wingdingos.com/"

  livecheck do
    url "https://dither-bvv.pages.dev/downloads/latest.json"
    regex(/"version":\s*"(\d+(?:\.\d+)+)"/i)
  end

  depends_on macos: ">= :sonoma"

  app "Dither.app"

  zap trash: "~/Library/Preferences/com.wingdingos.dither.plist"
end
