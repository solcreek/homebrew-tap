class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.29/dew_0.7.29_darwin_arm64.tar.gz"
      sha256 "69084077a413da4bbcdf8c35bd0ec1f48105007dc82fa76f40fb18976d93fe0a"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.29/dew_0.7.29_darwin_amd64.tar.gz"
      sha256 "839e2bb809c2efe371ad613d4a70d3e0a0c189db4f66514cbcf631172c389d15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.29/dew_0.7.29_linux_arm64.tar.gz"
      sha256 "31283ae70077cea33fa9afef74ce2b6cdf00341c946aa25b225d36bd58e3764c"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.29/dew_0.7.29_linux_amd64.tar.gz"
      sha256 "67efe73f34a13e90e54aa25e99cb77b526e14a23d2ae2bb82e46ad76f6939841"
    end
  end

  def install
    bin.install "dew"
  end

  def caveats
    <<~EOS
      Try:
        dew run -- uname -a
    EOS
  end

  test do
    system "#{bin}/dew", "--version"
  end
end
