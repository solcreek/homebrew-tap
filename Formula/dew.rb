class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.9.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.9.4/dew_0.9.4_darwin_arm64.tar.gz"
      sha256 "ea4eed57723eba1bb370c5a6efa5d361e9f05a4f2fde2f2c8d8ef84123a2a84c"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.9.4/dew_0.9.4_darwin_amd64.tar.gz"
      sha256 "e4f9d67f4edbb0ba24a7621edc54448b5539ee8a232220116dc75b46471cfa3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.9.4/dew_0.9.4_linux_arm64.tar.gz"
      sha256 "f9721b46e2e722360728a9142775891ef16c77087fd6783b95ca75e5f9fdc1b1"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.9.4/dew_0.9.4_linux_amd64.tar.gz"
      sha256 "e2c4c545b907769b68cab959624a53b834d51e22ffc258b4d1a5d14655b6bbd0"
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
