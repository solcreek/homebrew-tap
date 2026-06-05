class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.31/dew_0.7.31_darwin_arm64.tar.gz"
      sha256 "f9256f0d85238ecbeb86694c13b039b1ebbd8454d085f927708cd2d261d06b33"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.31/dew_0.7.31_darwin_amd64.tar.gz"
      sha256 "09120e25c924abe476dedde2e59c322f3335320f5655c4099dfdfaebb6888369"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.31/dew_0.7.31_linux_arm64.tar.gz"
      sha256 "dd26a8000787e4cff5a59f78785de0ce9fdca5a591e44bce6bdf48147dc5380f"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.31/dew_0.7.31_linux_amd64.tar.gz"
      sha256 "865f088f8be6aae530dd61c5e538f839407ea04af15321d45f20e0e9d230c897"
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
