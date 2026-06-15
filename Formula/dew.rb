class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.40/dew_0.7.40_darwin_arm64.tar.gz"
      sha256 "b647f3ca9c1eaed82fc46691db580fe7799ecd6970d4d7497993cba2a1a10394"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.40/dew_0.7.40_darwin_amd64.tar.gz"
      sha256 "df8585013128bd7ebf435e1c808c25e997f040dc991d58469cba51b717d36e5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.40/dew_0.7.40_linux_arm64.tar.gz"
      sha256 "b9b228656f9d460b07f2ec156977eafaf90d79de63e606982d61ddb36a1760be"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.40/dew_0.7.40_linux_amd64.tar.gz"
      sha256 "facd42afa1b9e42185e99b31a30f54dcd4092003d134f3fee6170b8bd1871a9b"
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
