class Dew < Formula
  desc "Ultra-lightweight VM + deploy tool. One Go binary for local dev and production."
  homepage "https://dewvm.dev"
  version "0.7.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.5/dew_0.7.5_darwin_arm64.tar.gz"
      sha256 "0f85d358ed9b6cbf0c0b7a3ec411e35115c0f87cb3920c9f006edb8377431c69"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.5/dew_0.7.5_darwin_amd64.tar.gz"
      sha256 "e654c76ab6d6211c2236562d4623a2a42b083577ff650f77e1d80034796c6d35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.5/dew_0.7.5_linux_arm64.tar.gz"
      sha256 "49f5709fef0ef3a878d0b2ffef7d6f67ee9b9dfde5159568ca66d756d9584ee8"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.5/dew_0.7.5_linux_amd64.tar.gz"
      sha256 "d86ca9dab93c292cd55a58e59b0b8cc7a94b5b590476263f6d865457886803c5"
    end
  end

  def install
    bin.install "dew"
  end

  test do
    system "#{bin}/dew", "--version"
  end
end
