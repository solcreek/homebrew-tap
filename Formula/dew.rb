class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.8.3/dew_0.8.3_darwin_arm64.tar.gz"
      sha256 "ea3e7f9080f2c4e874ce772eeedec7be6d84cb140d041ed36d61e0f70f0795c3"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.8.3/dew_0.8.3_darwin_amd64.tar.gz"
      sha256 "110f671cfe2c645143d812246cbb89c67a504dd86440a8c61ee507324a931d39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.8.3/dew_0.8.3_linux_arm64.tar.gz"
      sha256 "d9798c7f8b65c940aacc793746b014e9ab933593a237881203746ebc0bd7eaf9"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.8.3/dew_0.8.3_linux_amd64.tar.gz"
      sha256 "5c25853087a3ddc90926efc9181c2be44dea5c73c7c9ac859da92cfcb3aabf4f"
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
