class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.8.0/dew_0.8.0_darwin_arm64.tar.gz"
      sha256 "71da8838fb035dfb5c99df1f913a608728640b39921addbd591d0d12553b8486"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.8.0/dew_0.8.0_darwin_amd64.tar.gz"
      sha256 "d6b02dfdb7ec79203cbe722a6ff64a07c31fbedd50c824042d66b42af3b73791"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.8.0/dew_0.8.0_linux_arm64.tar.gz"
      sha256 "2ea92b00f681abd9986a8d46ec129b6da7ffcc4708c024d7d80886165540a94e"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.8.0/dew_0.8.0_linux_amd64.tar.gz"
      sha256 "ad999001daab8ddc79978c7a092aae6666130db907b95ed09aa8f2e3e7ac4ebb"
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
