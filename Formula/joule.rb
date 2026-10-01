class Joule < Formula
  desc "Energy-aware optimization middleware for LLM inference"
  homepage "https://github.com/wuisabel-gif/Joule"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/wuisabel-gif/Joule/releases/download/v0.7.1/joule-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "ee9b9dc940964b1b5ea96c24deb4fa70a00dc780480ae50ff8606cc6e20efaa4"
    end
    on_intel do
      url "https://github.com/wuisabel-gif/Joule/releases/download/v0.7.1/joule-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "013cb446600cec5bcdff06b6d2c30c108dea49ebcd4f44c213fdbeb84d8895dc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wuisabel-gif/Joule/releases/download/v0.7.1/joule-v0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3e444c67c6ac814edac1cff774d3213b9c48bb1f035d108b0a5a2318f3f1c49d"
    end
  end

  def install
    bin.install "joule"
  end

  test do
    assert_match "joule", shell_output("#{bin}/joule --help")
  end
end
