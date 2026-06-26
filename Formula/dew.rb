class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.49"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.49/dew_0.7.49_darwin_arm64.tar.gz"
      sha256 "1ad3cbb9ce4904f8aedbc678d5363a0750e33cdebcf020dc110c16632d0e6fc9"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.49/dew_0.7.49_darwin_amd64.tar.gz"
      sha256 "612f80ac5ccfc7a0c04e439cc26640f0257176747a7fe5f8d1a1aa5b67101c3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.49/dew_0.7.49_linux_arm64.tar.gz"
      sha256 "6e6ac3b61fb9d15bf41601cf15c434f3678d442528cc3460e5b729630a80c5cd"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.49/dew_0.7.49_linux_amd64.tar.gz"
      sha256 "a8513348fc540fc9f8c840be8095b4681b4ad50a491bbb742ca260020abd7e29"
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
