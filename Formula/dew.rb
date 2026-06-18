class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.44/dew_0.7.44_darwin_arm64.tar.gz"
      sha256 "d1b1da6bac190dab86027797876000a00a9dcbb074f1765f2e9a3434b81c8268"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.44/dew_0.7.44_darwin_amd64.tar.gz"
      sha256 "888bd6ce3e2a8ee89e9290590bd4171def2f9dda183632f3fcaf315d4b4a8eaf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.44/dew_0.7.44_linux_arm64.tar.gz"
      sha256 "1b7fb63187285791441cfa327143351bb5bd21623c81d547dbb67ef78b21b893"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.44/dew_0.7.44_linux_amd64.tar.gz"
      sha256 "e8be6ffc5ae5dedaa308bad6ad7edd767c93d3969276ad700538152fb91aa206"
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
