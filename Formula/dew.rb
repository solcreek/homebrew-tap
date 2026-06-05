class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.33/dew_0.7.33_darwin_arm64.tar.gz"
      sha256 "455d554236d48529d4ee22751790309e07c04c08348cf1c64f308f3fece087ec"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.33/dew_0.7.33_darwin_amd64.tar.gz"
      sha256 "e478fb47feb8eefa222a985c815c8d49e13ec84d6378b0048e69a63e0053a864"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.33/dew_0.7.33_linux_arm64.tar.gz"
      sha256 "a1ff56aa1a2d4d88ceae1a9f1dff511398113f336524492c8eac200d0815bb80"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.33/dew_0.7.33_linux_amd64.tar.gz"
      sha256 "3779c647b749c91e87cef9a46444d2bc23023c7be68efe4f65b70cc1da79087c"
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
