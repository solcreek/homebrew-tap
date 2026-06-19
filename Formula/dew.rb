class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.47/dew_0.7.47_darwin_arm64.tar.gz"
      sha256 "cdfd72f5d022f052da7ec43241b2d2900bf83992734a09c67dcae8b3a384a656"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.47/dew_0.7.47_darwin_amd64.tar.gz"
      sha256 "e879f2f36d5ef2171b40699931b964d6ae897935157581b86437fcc55368f5bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.47/dew_0.7.47_linux_arm64.tar.gz"
      sha256 "07d9670cbc84278d3c0120751a5ad8aaa0aa405ef74c0f80730bbc2459fb8c0b"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.47/dew_0.7.47_linux_amd64.tar.gz"
      sha256 "c07b0946acf43de5f0a34fe289b6c1960ce935b078c36330b91f58fc8d5e3975"
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
