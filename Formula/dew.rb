class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.46"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.46/dew_0.7.46_darwin_arm64.tar.gz"
      sha256 "2e55f8b746af9e31e391991cc394a08230c331c0ac84226f6901784406d3d320"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.46/dew_0.7.46_darwin_amd64.tar.gz"
      sha256 "01cacb7cca1bfab0a0fbb9cb272bde3414cd1bb2fa8bc642472c815ecfbe712c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.46/dew_0.7.46_linux_arm64.tar.gz"
      sha256 "29d6222837c55117446f67f28105396b2ffad4cd958f56356cda79e8ba6b10c3"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.46/dew_0.7.46_linux_amd64.tar.gz"
      sha256 "629d3c641b52aec858c149ea1995589b1750f9316a49696582a615d5620346ef"
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
