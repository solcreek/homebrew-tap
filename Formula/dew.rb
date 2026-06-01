class Dew < Formula
  desc "Ultra-lightweight VM + deploy tool. One Go binary for local dev and production."
  homepage "https://dewvm.dev"
  version "0.7.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.17/dew_0.7.17_darwin_arm64.tar.gz"
      sha256 "856719dd7e185f5d9775e8443a2af4fa1105bae74c419389f5a24e34f5e6dbb0"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.17/dew_0.7.17_darwin_amd64.tar.gz"
      sha256 "3ebd8f7a36a835f99990ed829ed29a92eec7c24e15dbce96a5291f0d6a27e764"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.17/dew_0.7.17_linux_arm64.tar.gz"
      sha256 "9aa40adf06d4b9c760228c7c3e20aafe554b63bdc85293ac0fb15680d1e1ba54"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.17/dew_0.7.17_linux_amd64.tar.gz"
      sha256 "91a8f70a364fc20d04a3546b5e09c6e28bd078e2740794eb048aa9f487aace3d"
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
