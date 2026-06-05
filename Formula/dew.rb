class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.32/dew_0.7.32_darwin_arm64.tar.gz"
      sha256 "af718440cd1f183238fb2bb013d17fd509d06c16c852876a178effee9281d38e"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.32/dew_0.7.32_darwin_amd64.tar.gz"
      sha256 "7cca8735b7416f04c5b925714d400ab0430d7478d1d600a909116f3cb9f0473a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.32/dew_0.7.32_linux_arm64.tar.gz"
      sha256 "d5b23266040f746e30fe6bb04c9a23906cc7963d5d108af220f91b21af13d7f2"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.32/dew_0.7.32_linux_amd64.tar.gz"
      sha256 "1e6453ddc117182cf61f924471945b29e5304e86f4fd6d0f02f3cbf47b08be53"
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
