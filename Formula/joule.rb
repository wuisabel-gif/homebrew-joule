class Joule < Formula
  desc "Energy-aware optimization middleware for LLM inference"
  homepage "https://github.com/wuisabel-gif/Joule"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wuisabel-gif/Joule/releases/download/v0.5.0/joule-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "12bbdcbb074aa5f0a311fc43c78c49720b79633b8189d3f0757969665603252b"
    end
    on_intel do
      url "https://github.com/wuisabel-gif/Joule/releases/download/v0.5.0/joule-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "0ffe37456d55ffba13422fe3835ca00f2d1199f17763cbe020489851e465bcf6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wuisabel-gif/Joule/releases/download/v0.5.0/joule-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a5d4f0cc541a6a67fd5452b296ab67d6ef70818d563372e6d4745a97ba841eae"
    end
  end

  def install
    bin.install "joule"
  end

  test do
    assert_match "joule", shell_output("#{bin}/joule --help")
  end
end
