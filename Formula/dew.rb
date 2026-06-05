class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.35/dew_0.7.35_darwin_arm64.tar.gz"
      sha256 "d579fff0762b5a7c4db9625026e1dcd9479034d80d30dbb924f686491bd6f259"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.35/dew_0.7.35_darwin_amd64.tar.gz"
      sha256 "3df6881264308e194ff3bce4fba562a1735d5461264c90302131a82b04e15cf1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.35/dew_0.7.35_linux_arm64.tar.gz"
      sha256 "b70f14ee8693fd34e31b22c6e60378a7cf73198e781a7e0f9edd663d4a312d50"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.35/dew_0.7.35_linux_amd64.tar.gz"
      sha256 "a460ea3c72b1a54d5f965fe1a53dafd2731030182d432a9677627f5e7d36ec1b"
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
