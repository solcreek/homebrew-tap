class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.36/dew_0.7.36_darwin_arm64.tar.gz"
      sha256 "eebcd7c5130b420b81859bfea7723e5c29364f9dae4237d183a427aa7bb552b2"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.36/dew_0.7.36_darwin_amd64.tar.gz"
      sha256 "0fc0c1416a0ec3172035ce99506a21e17e8c912df20e213af92ce435911e283b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.36/dew_0.7.36_linux_arm64.tar.gz"
      sha256 "98cecde45a9b07d6000fc76ca49016dec92464a56b3a1cb6bf4f419479eb4900"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.36/dew_0.7.36_linux_amd64.tar.gz"
      sha256 "0859767049e64e7b15abc4216cc495fb292ca29eb1e452c6c196a55954308a46"
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
