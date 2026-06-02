class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.21/dew_0.7.21_darwin_arm64.tar.gz"
      sha256 "dd063597f5c2964c8f937d724156e94eb71540a146f97376c163cee790a2b105"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.21/dew_0.7.21_darwin_amd64.tar.gz"
      sha256 "e570dacabb77e75b99b860368e741f52ae582ba003f33534a13535f2d813fa64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.21/dew_0.7.21_linux_arm64.tar.gz"
      sha256 "dca0b4e067072deefa1c72503523ef0dfda742d9cea8d69a4aad72322af87886"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.21/dew_0.7.21_linux_amd64.tar.gz"
      sha256 "e2ab2400ab9e0720618777950bc06a1da93aee3082b65d305a7d86a60cffea4c"
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
