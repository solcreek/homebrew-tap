class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.26/dew_0.7.26_darwin_arm64.tar.gz"
      sha256 "11a5d78bc6895460520f41562c90adf9c1afcc351ecb8094a186cc5e9098155c"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.26/dew_0.7.26_darwin_amd64.tar.gz"
      sha256 "625cf97101d7e4394283b92c5f388be8748b30133e42a3e0aa2af82647846684"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.26/dew_0.7.26_linux_arm64.tar.gz"
      sha256 "015bb27b204281dbc8ce48e8e68728aa333ad04c57706da490be5ee26a44a2c6"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.26/dew_0.7.26_linux_amd64.tar.gz"
      sha256 "7fca90899b32bbe0793d0f7ecebfe34fae4ec6615a1d6ef3c21b16a0d8f0cd97"
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
