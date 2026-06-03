class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.24/dew_0.7.24_darwin_arm64.tar.gz"
      sha256 "25612b0551559c17903c6151eafbd06bd52dcfec1e9ba0c02a11974611631a97"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.24/dew_0.7.24_darwin_amd64.tar.gz"
      sha256 "78b7cb5a4c4fc45f0e429733ed421d3f89693ee09336257eb7ba2c55a00fa391"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.24/dew_0.7.24_linux_arm64.tar.gz"
      sha256 "df1137e55eeb908ec983d814f43e19b5676a3c9474dde34e658bb90cf39d6cd4"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.24/dew_0.7.24_linux_amd64.tar.gz"
      sha256 "f5010d1e38301c060fee14a0ffade179c639cc0a9fff267e571367807d598adc"
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
