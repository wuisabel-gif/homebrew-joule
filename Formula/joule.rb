class Joule < Formula
  desc "Energy-aware optimization middleware for LLM inference"
  homepage "https://github.com/wuisabel-gif/Joule"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wuisabel-gif/Joule/releases/download/v0.6.0/joule-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "ad2348e73a58817e6c63692da12027c11a10be78452a77731d176415bfb849f0"
    end
    on_intel do
      url "https://github.com/wuisabel-gif/Joule/releases/download/v0.6.0/joule-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "bf10a717b266e7d4d36a635ad59e4161d0a1766f4f556831a716e1527bea8f6b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wuisabel-gif/Joule/releases/download/v0.6.0/joule-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "09ddf0e95da6b8d4bab3517f74c0b03f4c86e4a001952581ace0d2992416039a"
    end
  end

  def install
    bin.install "joule"
  end

  test do
    assert_match "joule", shell_output("#{bin}/joule --help")
  end
end
