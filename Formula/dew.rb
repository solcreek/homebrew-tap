class Dew < Formula
  desc "Ultra-lightweight VM + deploy tool. One Go binary for local dev and production."
  homepage "https://dewvm.dev"
  version "0.7.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.18/dew_0.7.18_darwin_arm64.tar.gz"
      sha256 "cf5b100cce961d09c6f9b53fe0ef0114c6c02b7c333d81ea74614861430c779f"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.18/dew_0.7.18_darwin_amd64.tar.gz"
      sha256 "bf7cc3a08338d3080294501de8a0d6a9915c278ceb37083ad6b0798b00c53353"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.18/dew_0.7.18_linux_arm64.tar.gz"
      sha256 "cf246ba1a16adb55c4102de32d16632a9553be8fdf80ba63ce541d5ceb64b6eb"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.18/dew_0.7.18_linux_amd64.tar.gz"
      sha256 "da58fa0e3b8c63bb4e5c3e5d147688d131333d9cb4efe32d876d0f0f887fa7e9"
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
