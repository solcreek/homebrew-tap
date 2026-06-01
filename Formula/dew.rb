class Dew < Formula
  desc "Ultra-lightweight VM + deploy tool. One Go binary for local dev and production."
  homepage "https://dewvm.dev"
  version "0.7.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.15/dew_0.7.15_darwin_arm64.tar.gz"
      sha256 "fcd7722bf88774ebdca95b2e3b6632f54fcbfd472e73689ace1c8d3e37eafb28"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.15/dew_0.7.15_darwin_amd64.tar.gz"
      sha256 "2e9e54d71a3c0618bc2052f7165e4c7a35bfcc414a71679dcf0d183216e82d7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.15/dew_0.7.15_linux_arm64.tar.gz"
      sha256 "d96c77f8429562f961a0d33f6af44ffd461651fd2e21330db2d6df48eb6a0334"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.15/dew_0.7.15_linux_amd64.tar.gz"
      sha256 "e4bf280e18acb4f733cbe628cfd6935d3ed6b44f9e710f9d3c81c2685e0e5a53"
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
