class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.55"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.55/dew_0.7.55_darwin_arm64.tar.gz"
      sha256 "d3cf85d2716aa72bfc8e782cff2df9a22843d208407d27218c5ab40da8c0cada"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.55/dew_0.7.55_darwin_amd64.tar.gz"
      sha256 "bce770b9d36eed00fa849035cf6ef32254116d1df68fbcef4bc458fc7b611599"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.55/dew_0.7.55_linux_arm64.tar.gz"
      sha256 "869daef201d3b6e5b736a847d5b388e5d219897f54fb579700637e498197f378"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.55/dew_0.7.55_linux_amd64.tar.gz"
      sha256 "d7f5d3ed53432be6d5fb1ebdd38aca21601b4855838d8c323d16e01ad88c304e"
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
