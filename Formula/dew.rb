class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.9.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.9.5/dew_0.9.5_darwin_arm64.tar.gz"
      sha256 "28618b19f0399972e816730a73d94316a17ed2e42341be65e85264621fa41bac"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.9.5/dew_0.9.5_darwin_amd64.tar.gz"
      sha256 "3a3acf64d0ed53f8935b32a71e47a42fb406fcca8adfc5fb4247424261a1863b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.9.5/dew_0.9.5_linux_arm64.tar.gz"
      sha256 "77a56bf584dfa4be4637b1ab96c89e4fbe33b48ca679084c0f91d871daf4abea"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.9.5/dew_0.9.5_linux_amd64.tar.gz"
      sha256 "6c29f164d645dd43bbaa509c85316a819f36c2a8b24739b873e6dcf252822a7b"
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
