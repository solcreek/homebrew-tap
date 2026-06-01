class Dew < Formula
  desc "Ultra-lightweight VM + deploy tool. One Go binary for local dev and production."
  homepage "https://dewvm.dev"
  version "0.7.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.14/dew_0.7.14_darwin_arm64.tar.gz"
      sha256 "e147735b134279e1cd50bcfd789e6e860ec88412aece31e59b479519f86443ea"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.14/dew_0.7.14_darwin_amd64.tar.gz"
      sha256 "81f0f3a8cb0b20066f5c59a67b002ffee03453dc25513191be5b31fad0afd48e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.14/dew_0.7.14_linux_arm64.tar.gz"
      sha256 "47f9105758db47609f942e468a2c72f3f99327b3c34084705f4f46baf6732d89"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.14/dew_0.7.14_linux_amd64.tar.gz"
      sha256 "b1ee7f0aad5576e15fce3e17df72705d907c1b6dec6bb06077b896816a1f4245"
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
