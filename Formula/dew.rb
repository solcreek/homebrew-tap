class Dew < Formula
  desc "Ultra-lightweight VM + deploy tool. One Go binary for local dev and production."
  homepage "https://dewvm.dev"
  version "0.7.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.7/dew_0.7.7_darwin_arm64.tar.gz"
      sha256 "a8210570ed53f1aceb1bd0304f5cf04751fa6162bfbb52518ecf57276a1a4263"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.7/dew_0.7.7_darwin_amd64.tar.gz"
      sha256 "d86131a17c587435dc563d1b05a94283e6ff38eb9556c0dde3f87ce6373fc1b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.7/dew_0.7.7_linux_arm64.tar.gz"
      sha256 "edf0f5b2504669b19af636e61db7640cf8234ab011546951e13d60c923bd9cf1"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.7/dew_0.7.7_linux_amd64.tar.gz"
      sha256 "4b6b4f82a6fad7217ac663c668e45498a5904047980e0714c7053e78a72151a3"
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
