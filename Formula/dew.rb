class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.25/dew_0.7.25_darwin_arm64.tar.gz"
      sha256 "1406523728619c69c87891484b6a2ae0b74744faa34788398f667311e84c00af"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.25/dew_0.7.25_darwin_amd64.tar.gz"
      sha256 "ffd3376979912fc8967c39f1f3e2d908b09f202fe3a3840a0c229985c33c5fe0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.25/dew_0.7.25_linux_arm64.tar.gz"
      sha256 "ba1c81ef5ae8868f25c0384aeba6d665dbb88b85601d01591eb9fe46998d7372"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.25/dew_0.7.25_linux_amd64.tar.gz"
      sha256 "7d702cd541764e3ba6bef3636d7a3126e2f6133a24dee15bde9e7be54348f03d"
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
