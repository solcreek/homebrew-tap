class Dew < Formula
  desc "Ultra-lightweight VM + deploy tool. One Go binary for local dev and production."
  homepage "https://dewvm.dev"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.3/dew_0.7.3_darwin_arm64.tar.gz"
      sha256 "2a6239b59fd49cf072e2e3f11bd469a98089688483d33d8cc62977d3f8387161"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.3/dew_0.7.3_darwin_amd64.tar.gz"
      sha256 "af2da5671b55e95e1a02757ae2969bc1d04b6be36d20b1987ec3800ddaea3100"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.3/dew_0.7.3_linux_arm64.tar.gz"
      sha256 "087d5586716b5ee6799f9cfcc27dc356ce703ef24dffb9ada7e3909213756fc3"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.3/dew_0.7.3_linux_amd64.tar.gz"
      sha256 "c1ca0b6c115d7ddbe12cd322f505d00c8c4129b3404c26614367651d04b14d0c"
    end
  end

  def install
    bin.install "dew"
  end

  test do
    system "#{bin}/dew", "--version"
  end
end
