class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.28/dew_0.7.28_darwin_arm64.tar.gz"
      sha256 "afb0ce903564168eb681f3c4c3c11d6eda64d78dedd4f6ea58400525b6ff1cb8"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.28/dew_0.7.28_darwin_amd64.tar.gz"
      sha256 "fafcd118d0a04355d9d958b012b0498f2ebc5f173de6c0c64bd0f7be59edbe69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.28/dew_0.7.28_linux_arm64.tar.gz"
      sha256 "36f3286fd8c09ffd292ac0662400d157dbf119e3c113a44d0ace2885e527297b"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.28/dew_0.7.28_linux_amd64.tar.gz"
      sha256 "45bccdb20d60973c642f85480c31654a0b516598f4a164514fc4175c6629f1a4"
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
