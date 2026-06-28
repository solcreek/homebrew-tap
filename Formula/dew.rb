class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.8.2/dew_0.8.2_darwin_arm64.tar.gz"
      sha256 "fafdaef6ceaf2e7fa73a0b08f43ed030b812d5889fda55e4afcea1932206dc62"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.8.2/dew_0.8.2_darwin_amd64.tar.gz"
      sha256 "ac7323d6f48f62f042895a271738e1e34b8d04677fa3ef23fdb4b9f1604066e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.8.2/dew_0.8.2_linux_arm64.tar.gz"
      sha256 "846a8d7df236b3c75c0a2f45c955bf2565ddc76e138c768f1cc595dfe768a4a4"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.8.2/dew_0.8.2_linux_amd64.tar.gz"
      sha256 "1202e307389ffdb5cba159081ed67ca742f0f4cbcfb30ce8945c23bb55498bb2"
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
