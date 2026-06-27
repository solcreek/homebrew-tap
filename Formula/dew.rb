class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.52"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.52/dew_0.7.52_darwin_arm64.tar.gz"
      sha256 "b273b900046eee6bb1032b4c9b3e96da660b8fe5cfbb8fc47afc26ef1828dcd7"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.52/dew_0.7.52_darwin_amd64.tar.gz"
      sha256 "bdf356e8f8ea77df903b210dafdbc22431b7c6f6e58b3b8ac8cc9afd7f4cc7a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.52/dew_0.7.52_linux_arm64.tar.gz"
      sha256 "e639ce420093dcd01b3aad8a981229ad626cf11152a5da70e287b9c9ad73080a"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.52/dew_0.7.52_linux_amd64.tar.gz"
      sha256 "d68ddc4ddaf0760303430f1836a1b1e17c1e5262358ffb81670f4c5a90f51d3f"
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
