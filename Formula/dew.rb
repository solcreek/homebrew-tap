class Dew < Formula
  desc "Ultra-lightweight VM + deploy tool. One Go binary for local dev and production."
  homepage "https://dewvm.dev"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.1/dew_0.7.1_darwin_arm64.tar.gz"
      sha256 "0287917a556741ebf0225a97ff7ffa1cdd59b04a40269ad6766d138b02b5509c"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.1/dew_0.7.1_darwin_amd64.tar.gz"
      sha256 "56250ad4f1afb86e466cde4a10437344f5fae370fed4e9ef6e62d3897ef794f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.1/dew_0.7.1_linux_arm64.tar.gz"
      sha256 "8cc42920f0aa780c2ea79c1796c62cc25d7787cd9f7e6cd9d63ed38d9783f25d"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.1/dew_0.7.1_linux_amd64.tar.gz"
      sha256 "f637440a636ab70f937ff9cc9472ebff85c91de124184f2de2111235725ee3e8"
    end
  end

  def install
    bin.install "dew"
  end

  test do
    system "#{bin}/dew", "--version"
  end
end
