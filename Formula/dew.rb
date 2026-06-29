class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.8.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.8.5/dew_0.8.5_darwin_arm64.tar.gz"
      sha256 "322763f1c2a713e0c53567de50cd87c1e06650700033e74cf9e94c78e7509995"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.8.5/dew_0.8.5_darwin_amd64.tar.gz"
      sha256 "3647ed644c7dd447c1e73356144b92cec1e12434265b6474f7b256f65eeda4c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.8.5/dew_0.8.5_linux_arm64.tar.gz"
      sha256 "37b99a13179d73867d5a99652e9c157535841702e9cdf4e834aa531eb3617461"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.8.5/dew_0.8.5_linux_amd64.tar.gz"
      sha256 "1689bf4530e0a3ce85b07b60b9fa170ea36402ce9b2e047204ffe0bc9bc9d9d3"
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
