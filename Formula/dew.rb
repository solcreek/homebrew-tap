class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.38/dew_0.7.38_darwin_arm64.tar.gz"
      sha256 "05a0b420f70039f745142b17dab56f5307a05cbe89ba60518ad60742b83b2cda"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.38/dew_0.7.38_darwin_amd64.tar.gz"
      sha256 "a4b529d8e0d3a0ce2616a9a945e23aaab917ea24b738b7eb02dfb9532664e615"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.38/dew_0.7.38_linux_arm64.tar.gz"
      sha256 "07176bd117cbcccb20a6f8b7791691a72de1afc537bf999043c36ba53e717bd8"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.38/dew_0.7.38_linux_amd64.tar.gz"
      sha256 "8d7ffa813f31a45adc64d26b8658ceadb330b4295cb9a4c53df5e955c060674c"
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
