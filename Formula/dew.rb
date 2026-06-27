class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.53"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.53/dew_0.7.53_darwin_arm64.tar.gz"
      sha256 "c1bd26e04745ed72d59aee81f6c7cd0d5edb8841acb0f3bc98558cc387ee47f5"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.53/dew_0.7.53_darwin_amd64.tar.gz"
      sha256 "8d81381607d78e03628ad6b348f7f3b8e3839a867c72747a4b2e536c1c3d9e75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.53/dew_0.7.53_linux_arm64.tar.gz"
      sha256 "8142a16649660a2c5eaa70fb059637ff225841758b8a1fde04cba02076f2ad1a"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.53/dew_0.7.53_linux_amd64.tar.gz"
      sha256 "3bfd1a92accf925dee338ad26e0391af769c7bb9c2c163be757fc7a46a747a9e"
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
