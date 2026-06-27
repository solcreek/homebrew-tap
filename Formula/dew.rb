class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.50"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.50/dew_0.7.50_darwin_arm64.tar.gz"
      sha256 "754a41930b9f6dce9759e3a4b2e03885f4fd3631e24c62a684443e3ae33b562d"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.50/dew_0.7.50_darwin_amd64.tar.gz"
      sha256 "40bac6804151dbdd223d15303ab9ab1019e7f2dd84e1a2a79ef313d7d792452c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.50/dew_0.7.50_linux_arm64.tar.gz"
      sha256 "0dfb8d81e40bd6cc3b5e9cda2f5a1d7848fbc01d589834fb5d8ef65923c51dd1"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.50/dew_0.7.50_linux_amd64.tar.gz"
      sha256 "02d0e116e01982f927e2440798f0fe33e9df594cf8b9ab2f7276fc07f331a4d9"
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
