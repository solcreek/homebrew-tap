class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.9.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.9.6/dew_0.9.6_darwin_arm64.tar.gz"
      sha256 "f873373a04f2f89670312a4b7ecf38025790bd048a8ef0e0395b5b65b25525b1"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.9.6/dew_0.9.6_darwin_amd64.tar.gz"
      sha256 "930be8f44bff7b04152be2b9b91bf4d5b92625a301feb4b682061c3f14f5128e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.9.6/dew_0.9.6_linux_arm64.tar.gz"
      sha256 "91b2abee1d26788a537cf11203e811d8bf90937150334321f7cee8054eb9e1d4"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.9.6/dew_0.9.6_linux_amd64.tar.gz"
      sha256 "76ac393f1a4985685cd2896ab2b466dc59d82ab8ac23f57cac0aedf48f7b8565"
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
