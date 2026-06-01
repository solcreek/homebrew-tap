class Dew < Formula
  desc "Ultra-lightweight VM + deploy tool. One Go binary for local dev and production."
  homepage "https://dewvm.dev"
  version "0.7.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.10/dew_0.7.10_darwin_arm64.tar.gz"
      sha256 "bfab6cb413bf7b33d07c221d49eeb4908ef0ce4c4b5baf148e645035a81bad0d"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.10/dew_0.7.10_darwin_amd64.tar.gz"
      sha256 "2937db67eba642855c88e63cddf41cfef8bbbd4dba51bef4049e6f37bf281276"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.10/dew_0.7.10_linux_arm64.tar.gz"
      sha256 "5d1a95bfff1c98739b21677dda13309956b90379a96f493ee2bfc9e5193336e0"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.10/dew_0.7.10_linux_amd64.tar.gz"
      sha256 "573832321cc6e5ff3847d5e21a30ded5c489138111f503138521d9c5b0f0c416"
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
