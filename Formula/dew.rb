class Dew < Formula
  desc "Ultra-lightweight VM + deploy tool. One Go binary for local dev and production."
  homepage "https://dewvm.dev"
  version "0.7.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.13/dew_0.7.13_darwin_arm64.tar.gz"
      sha256 "dba15cf66e8948729ca526f0716ad468bdb651c1a2aff49ec58ba9842688d2a8"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.13/dew_0.7.13_darwin_amd64.tar.gz"
      sha256 "a4d2649e93a5605b3546173af611b715942da1569afcd5a25d8d5e12712861e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.13/dew_0.7.13_linux_arm64.tar.gz"
      sha256 "50b002bb6de9f2b1e2f4a7df0f1fa4f9269591d9a7f6b0221a748b2850f7acc9"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.13/dew_0.7.13_linux_amd64.tar.gz"
      sha256 "13037abd28c4c732f7b122044e7ca0deb2376836e1cbd7258e0d7abf64fd36fb"
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
