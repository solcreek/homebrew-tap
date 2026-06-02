class Dew < Formula
  desc "Ultra-lightweight VM + deploy tool. One Go binary for local dev and production."
  homepage "https://dewvm.dev"
  version "0.7.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.19/dew_0.7.19_darwin_arm64.tar.gz"
      sha256 "f26106d7968f765b5614a9262222781b611d666bdc43190fdff228eae187b0df"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.19/dew_0.7.19_darwin_amd64.tar.gz"
      sha256 "e3dc4f9325748b748dc8d60d4f5a434162b34692613cfa8868248fa4f0f12882"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.19/dew_0.7.19_linux_arm64.tar.gz"
      sha256 "c56e7397a21bb7b47a1a6aabcb5bde80718be46efef9273e556f6cc61fb47c6a"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.19/dew_0.7.19_linux_amd64.tar.gz"
      sha256 "e1a16b6ae16dd35dd1bf10dd34fa8ed9e4e0e287fae86f53c7d97d2fa615d0aa"
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
