class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.9.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.9.3/dew_0.9.3_darwin_arm64.tar.gz"
      sha256 "c8502b0688e4d652945cfd84afa8630c73e9078fcb51d88d12daa4e02914841f"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.9.3/dew_0.9.3_darwin_amd64.tar.gz"
      sha256 "20bf068c8ad94c31f33fa6753e01b0d926691fdcee34a91da7a1169ac1012c8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.9.3/dew_0.9.3_linux_arm64.tar.gz"
      sha256 "f200be495721b28c31a9d014a503b54317635559a84933681ef910377605aac5"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.9.3/dew_0.9.3_linux_amd64.tar.gz"
      sha256 "9f03faeb56c76165ee5afcf5100eb2b65f7a04ae661f30a172b33fb014f1cc19"
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
