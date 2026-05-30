class Dew < Formula
  desc "Ultra-lightweight VM + deploy tool. One Go binary for local dev and production."
  homepage "https://dewvm.dev"
  version "0.7.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.4/dew_0.7.4_darwin_arm64.tar.gz"
      sha256 "2b8457dad809325141a8137cde88424fb123f97651218fdbcc87701513c42c4d"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.4/dew_0.7.4_darwin_amd64.tar.gz"
      sha256 "d0c29dc4f66052352795ccb0cea1377ac801da012f5b0d5c724e9a5cbf97fa34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.4/dew_0.7.4_linux_arm64.tar.gz"
      sha256 "ec54208be7c95a1cb731555f9fa744ed46d54da721698b548ba55f5b71d82b3a"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.4/dew_0.7.4_linux_amd64.tar.gz"
      sha256 "b0b38fb2e24d50d0616fc8f481f03c862fce2d8d4179ae7d5a8f5a3cbfbaa90f"
    end
  end

  def install
    bin.install "dew"
  end

  test do
    system "#{bin}/dew", "--version"
  end
end
