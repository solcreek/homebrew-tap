class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.9.0/dew_0.9.0_darwin_arm64.tar.gz"
      sha256 "85973e5fea66a1b79993678eedd742f8292de85013da88e28f9363685f9f3805"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.9.0/dew_0.9.0_darwin_amd64.tar.gz"
      sha256 "a49950ec931e013f831ebc52a8cd318cd581444a36780ea1ee55538f4f55f933"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.9.0/dew_0.9.0_linux_arm64.tar.gz"
      sha256 "4c6dcfa946e6860d2d790dd9907b4e70c47d1d10642b135339ef9802772be29c"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.9.0/dew_0.9.0_linux_amd64.tar.gz"
      sha256 "7af83baeff1cba25d4002a5095e5b0e2d71a31c4c1a976902491f88d1e080608"
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
