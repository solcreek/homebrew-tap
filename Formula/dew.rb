class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.20/dew_0.7.20_darwin_arm64.tar.gz"
      sha256 "a571021d1a84ebab155557182c7e8730dd69c1e037cc6ca96f62ce3b0fecf3b5"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.20/dew_0.7.20_darwin_amd64.tar.gz"
      sha256 "99c10700707da8ba9e6857dd2ec682d241c742ea7055cc1c56a4d833dcbe8d6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.20/dew_0.7.20_linux_arm64.tar.gz"
      sha256 "5ea7efd92471d13e129d6a08e08f153cc97ac1faa77007475820ada5d22fde9c"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.20/dew_0.7.20_linux_amd64.tar.gz"
      sha256 "99056a8bcb6edc84836bf336f3e0d68f0ccc7d67b49f6fb6fc83bd52044006ff"
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
