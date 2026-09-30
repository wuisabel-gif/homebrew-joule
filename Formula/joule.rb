class Joule < Formula
  desc "Energy-aware optimization middleware for LLM inference"
  homepage "https://github.com/wuisabel-gif/Joule"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wuisabel-gif/Joule/releases/download/v0.7.0/joule-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "8292b41c84ff2e28577018a67722851a5aa4d51eeb5c7dc6bd9e16bb09a7cf0f"
    end
    on_intel do
      url "https://github.com/wuisabel-gif/Joule/releases/download/v0.7.0/joule-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "06cedb14338f1fad90d79c5481fc5d5882a6427ac1023cf198a5cd769b8bb1e9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wuisabel-gif/Joule/releases/download/v0.7.0/joule-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "078e3f3e79162940165f38d49df9a5ca6587a6d21a054ef4075c7e81aaba713c"
    end
  end

  def install
    bin.install "joule"
  end

  test do
    assert_match "joule", shell_output("#{bin}/joule --help")
  end
end
