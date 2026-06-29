class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.8.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.8.4/dew_0.8.4_darwin_arm64.tar.gz"
      sha256 "aac4333295f0d7ee63968eab367047d5ab681014b8574cbc0a6924a90aeaea55"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.8.4/dew_0.8.4_darwin_amd64.tar.gz"
      sha256 "ee82522ada75cd3fa0605ff84dc67218557a42fb2bebfba74b79d60f93dfaf55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.8.4/dew_0.8.4_linux_arm64.tar.gz"
      sha256 "175d9f112674903dbb3e0f1e04a21e3d57c994f9de0bbe713f086e25d97dc6d5"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.8.4/dew_0.8.4_linux_amd64.tar.gz"
      sha256 "7dce11cc560535c67ec3f33ac0575dbee1e1151d1fd3b6e2450cea1b4541ad47"
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
