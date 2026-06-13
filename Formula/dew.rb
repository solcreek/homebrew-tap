class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.39/dew_0.7.39_darwin_arm64.tar.gz"
      sha256 "31b8e78b0eec4303c328c051f66294b691031e102724abf00af613c4ec929d47"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.39/dew_0.7.39_darwin_amd64.tar.gz"
      sha256 "52583616c391be7142b49b505ec01bbfd5b0c078cdef92e5d562fa3aae2a43b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.39/dew_0.7.39_linux_arm64.tar.gz"
      sha256 "216dcab728210deddc80e60b79295c9bb5aabd6237d3dbe813a32442b2edfd58"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.39/dew_0.7.39_linux_amd64.tar.gz"
      sha256 "49ee939a3f3bd70c3b724041b06a63fc2e6481930b09d3697b272c5ae098ec74"
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
