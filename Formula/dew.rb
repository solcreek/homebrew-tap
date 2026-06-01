class Dew < Formula
  desc "Ultra-lightweight VM + deploy tool. One Go binary for local dev and production."
  homepage "https://dewvm.dev"
  version "0.7.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.16/dew_0.7.16_darwin_arm64.tar.gz"
      sha256 "adc34dd737be9b94c443556e291ee5647c62077490bfd6ee727613efbc45aa28"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.16/dew_0.7.16_darwin_amd64.tar.gz"
      sha256 "3a58cdf5432a421c4da7e432d5fb7aac3dddf40666490fc3195450d03817bb3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.16/dew_0.7.16_linux_arm64.tar.gz"
      sha256 "ac401b4bf6b16160eecc8d1153e300c5533053dc540e264813fcf4f55b29362e"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.16/dew_0.7.16_linux_amd64.tar.gz"
      sha256 "d406068c7ae3b811724aa22730bb1c5ea1ad1fe514668b66562ff183c3f73944"
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
