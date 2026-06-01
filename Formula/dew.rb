class Dew < Formula
  desc "Ultra-lightweight VM + deploy tool. One Go binary for local dev and production."
  homepage "https://dewvm.dev"
  version "0.7.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.12/dew_0.7.12_darwin_arm64.tar.gz"
      sha256 "df6fdbd6c4098f3f707c6184e01cef58a67b81b6654b2854d8242558bc020a41"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.12/dew_0.7.12_darwin_amd64.tar.gz"
      sha256 "61248262b194128196858552e7e17708ec3954c1784d04866f1d3395b376346b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.12/dew_0.7.12_linux_arm64.tar.gz"
      sha256 "f2901278c11e61489a585a6f4e42e1df34d1dc4cd859e06dd05022616ebfdcd3"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.12/dew_0.7.12_linux_amd64.tar.gz"
      sha256 "bc8e08b8d0b9c8beb83f9fb1edf8025ef774fd21763582914d25957a49161099"
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
