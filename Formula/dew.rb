class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.51"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.51/dew_0.7.51_darwin_arm64.tar.gz"
      sha256 "f03d11db7c2fced7deace985ab060556d86fedd0b9eb5d289e013b5b5e7ee3be"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.51/dew_0.7.51_darwin_amd64.tar.gz"
      sha256 "1aede46bfda845f9ed59b1ecec79465ae4e4051bdb7cd17c115cd627ce9c4f68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.51/dew_0.7.51_linux_arm64.tar.gz"
      sha256 "3dee219866d497835d1824de642adfd810139c5268351b391dd0b333f590a24e"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.51/dew_0.7.51_linux_amd64.tar.gz"
      sha256 "76e125a379e96a805acf07f64621ca909728e98adf626c2edf7eed26aec00878"
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
