class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.43"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.43/dew_0.7.43_darwin_arm64.tar.gz"
      sha256 "8ce8501aadf34c31f08c57bf8838d0659c69e04ea78a5ac8afe9a02cbbbbbac8"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.43/dew_0.7.43_darwin_amd64.tar.gz"
      sha256 "ade04c07e356aaa95c47b36c7c08969a990b45deeec178f90d9e58d074375cc9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.43/dew_0.7.43_linux_arm64.tar.gz"
      sha256 "aa247be40799eba417ccf182fa58f4352c3b358f352fbe467337a989becf220c"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.43/dew_0.7.43_linux_amd64.tar.gz"
      sha256 "a44eab9422abec55e44d9507351ca3f28004171a588fbe0c2f3ec095a757424b"
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
