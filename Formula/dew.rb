class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.22/dew_0.7.22_darwin_arm64.tar.gz"
      sha256 "6dbef0670a644af2afa32c3e21c8734ae18d57858437a75b1fed5abeb5abac3a"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.22/dew_0.7.22_darwin_amd64.tar.gz"
      sha256 "419056cf292136da4b3de0d5dfb1bcf44fe2b6e7f3d551319401997180c9f16f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.22/dew_0.7.22_linux_arm64.tar.gz"
      sha256 "2d1f9e063dda99402964b3d93ecc2502b90bfe9caf12453fd6d6d208a12558f4"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.22/dew_0.7.22_linux_amd64.tar.gz"
      sha256 "aea2d7d3a668e7337ab9c0b90e4cc8ce19f754e20e5dc571a6eda639bd1c8c11"
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
