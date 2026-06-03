class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.30/dew_0.7.30_darwin_arm64.tar.gz"
      sha256 "5d1b00f39b82eee75ae7cd32dc636592a6ccb4d5f3ff37b83919733cbca18afb"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.30/dew_0.7.30_darwin_amd64.tar.gz"
      sha256 "aab0660a089d77403893ea9d01aea885c2131a0e9129605c941af62c2e823f6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.30/dew_0.7.30_linux_arm64.tar.gz"
      sha256 "3fa2d2aa907ab4f54140ad55a3a8d6e5be646ac2cda7a41e0a583e94b77c7296"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.30/dew_0.7.30_linux_amd64.tar.gz"
      sha256 "2c7d810c64f749345258002cc91a26f1d58b3690e2f67dc7f1f11d0bf71c172f"
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
