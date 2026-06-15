class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.41/dew_0.7.41_darwin_arm64.tar.gz"
      sha256 "b551ca10c15dff0233ce1c2f9e531253fd745a9317decfbfa9ffa8ff0f75c9fb"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.41/dew_0.7.41_darwin_amd64.tar.gz"
      sha256 "18f146f3cc29761841d82d8c5a2ff51f0873ebef208f71d1196b31740cc7f277"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.41/dew_0.7.41_linux_arm64.tar.gz"
      sha256 "26c9b072e4bdea5f903ad8c5538150a6da9241b136528b52fc52db1fc308aaa3"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.41/dew_0.7.41_linux_amd64.tar.gz"
      sha256 "43ac52c21f7d70d7ef6a309a2d28e0e1829d2bd1dffc953afa4a804ac402aa37"
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
