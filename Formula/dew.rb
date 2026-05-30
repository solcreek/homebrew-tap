class Dew < Formula
  desc "Ultra-lightweight VM + deploy tool. One Go binary for local dev and production."
  homepage "https://dewvm.dev"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.2/dew_0.7.2_darwin_arm64.tar.gz"
      sha256 "e4d2e4072b3d11d05e3ccabd3460fb611f0cb3e4b17a8fbb320a6ba8c6cadab7"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.2/dew_0.7.2_darwin_amd64.tar.gz"
      sha256 "93ff8bdc41dd28c9ec27630cfc1dde5e9a72449cc6065017142568d436d908ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.2/dew_0.7.2_linux_arm64.tar.gz"
      sha256 "a1dc54b66a81a1e35a7e43ea3b4ce8bd35dd779639e9bfe34b3c0d0b6657de9c"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.2/dew_0.7.2_linux_amd64.tar.gz"
      sha256 "ac540c5f34f3da5db5df450dec41c68fb48c650b925b6974c8e3bc442cb49074"
    end
  end

  def install
    bin.install "dew"
  end

  test do
    system "#{bin}/dew", "--version"
  end
end
