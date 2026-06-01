class Dew < Formula
  desc "Ultra-lightweight VM + deploy tool. One Go binary for local dev and production."
  homepage "https://dewvm.dev"
  version "0.7.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.9/dew_0.7.9_darwin_arm64.tar.gz"
      sha256 "20ff5cc9b6f5d6bcecbf0e646741667f5939a156e52530c8df4ecb02d1344224"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.9/dew_0.7.9_darwin_amd64.tar.gz"
      sha256 "af68256060a3e3f635f3c8e94ba11d6b150e77dff785a12743c4b1f06196fa8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.9/dew_0.7.9_linux_arm64.tar.gz"
      sha256 "cedbf2e58b6f67d3a61febaecdbba3c74be32c543f71a84d39b4a40a57b9cfea"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.9/dew_0.7.9_linux_amd64.tar.gz"
      sha256 "d1dea4d411fed84bdf4b31dbe409835b6b8930818b0704b045638d0f03c9d616"
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
