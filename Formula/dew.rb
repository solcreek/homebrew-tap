class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.45"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.45/dew_0.7.45_darwin_arm64.tar.gz"
      sha256 "a1be972df4bdc273d9c6bc16005fe32f8437fde187faf9380baab71c5ee74efd"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.45/dew_0.7.45_darwin_amd64.tar.gz"
      sha256 "37028320ea84f0d98238ef9b656417994eb7b19122b1b1c02cdfd9e867ce6140"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.45/dew_0.7.45_linux_arm64.tar.gz"
      sha256 "a551a4a6c8dd08cdc0c66dd9025f7086da9767a60b4d20642c3788be0ca3d072"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.45/dew_0.7.45_linux_amd64.tar.gz"
      sha256 "a2be62bfd79ba29ee5a902b0ed6813dd85de5dbcd01fa7a1bfcf16774c82202e"
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
