class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.48/dew_0.7.48_darwin_arm64.tar.gz"
      sha256 "952b6d568aed716ec657db02d9efa0cb6a4dff56f7021be2e4c96b8fefe607af"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.48/dew_0.7.48_darwin_amd64.tar.gz"
      sha256 "50f2045487d5f9967d3e6d03b37724581a90794360eae102827c04d17a4d5c62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.48/dew_0.7.48_linux_arm64.tar.gz"
      sha256 "f00f31cc2015358234213ba585f4fb50ae69d7a086933461246b0534bba45e02"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.48/dew_0.7.48_linux_amd64.tar.gz"
      sha256 "5ad61094101dd6430a4c4cc7b69574ea67a76890c1481cf077977105bd24b681"
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
