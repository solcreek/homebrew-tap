class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.34/dew_0.7.34_darwin_arm64.tar.gz"
      sha256 "6f06dc9c48129453b8528bc28da7eaa15ee121d4818ec86a0bfa9658a7e3c69c"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.34/dew_0.7.34_darwin_amd64.tar.gz"
      sha256 "c4cd0b874eb9b85b7df9f195565c6e31918cef8a9c968d33bfebdbd4036fa3f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.34/dew_0.7.34_linux_arm64.tar.gz"
      sha256 "63e31415bdc80a8ee227dea2d544a483a58d0209801242a612eb007bb7993e4a"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.34/dew_0.7.34_linux_amd64.tar.gz"
      sha256 "4c95a8e50ede865f57a745b7e7836ec113ad10e091451b38936ebbe6ceb70e82"
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
