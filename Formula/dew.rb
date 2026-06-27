class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.54"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.54/dew_0.7.54_darwin_arm64.tar.gz"
      sha256 "07eebed394748bf11313fb0cf8c7a832e4a0817ebfbcc4b4857331d0fc5e9fcc"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.54/dew_0.7.54_darwin_amd64.tar.gz"
      sha256 "070fe84f223fbb621f2b8e563c2338142893b109cb8ea4526c542d42a4505017"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.54/dew_0.7.54_linux_arm64.tar.gz"
      sha256 "e1207009f8a66d5d184b5e82783c05579f957c25f3aab2b3bca6c54ac457a8dc"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.54/dew_0.7.54_linux_amd64.tar.gz"
      sha256 "54aea54d26aa73d5ba4dd729eb2a8fe34eb49684519d3d2c50056e47da848e5f"
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
