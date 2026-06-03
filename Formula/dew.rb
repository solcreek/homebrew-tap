class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.27/dew_0.7.27_darwin_arm64.tar.gz"
      sha256 "cd58ab5b6a0a4d0fa3532e3b676b746e5e18eaed8f9267f963e08bf00ac3ded2"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.27/dew_0.7.27_darwin_amd64.tar.gz"
      sha256 "f6978f4208408f1883c5121c55f2dda0ab119c04203a6dc3c6e1548e6119e12c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.27/dew_0.7.27_linux_arm64.tar.gz"
      sha256 "ea03e176871b87776eb7a8e2afd97367b0859bff7ea36028909682994ab2ebc6"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.27/dew_0.7.27_linux_amd64.tar.gz"
      sha256 "f59bd1760f7f963a828dc6daec8c9830fe0921329902da3f05fd73ab28254f4a"
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
