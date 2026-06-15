class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.42"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.42/dew_0.7.42_darwin_arm64.tar.gz"
      sha256 "b900feb8a904dec7c662c7abfae97345ce49649ae6b7f48fc815585b970d1e54"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.42/dew_0.7.42_darwin_amd64.tar.gz"
      sha256 "cc3566a7b4a2bffd4f724a0578863ccf8e06281dcd887a5c0a7cb159bc65a4b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.42/dew_0.7.42_linux_arm64.tar.gz"
      sha256 "e74fa9b216b7195d2299ba6e4f67a3da96cf7d38f1d36d8e2ccd3971bf1ab7fb"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.42/dew_0.7.42_linux_amd64.tar.gz"
      sha256 "58c8dacd88a75e451b01e0d288c495d46f53c30ce7dd657d4c7c4a0b5eab70bf"
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
