class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.8.1/dew_0.8.1_darwin_arm64.tar.gz"
      sha256 "2834b7fb31390046e92e23eac5a8818ae021265936d406084f5202577155e876"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.8.1/dew_0.8.1_darwin_amd64.tar.gz"
      sha256 "8b419f7a218b1a6138d092c050cc4c5180171d2a57291ad7805b571d4d0d425b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.8.1/dew_0.8.1_linux_arm64.tar.gz"
      sha256 "762154a5de43278d26a0edeb7d1e67bc065ad8be6539b5aef44acebc3f3ea115"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.8.1/dew_0.8.1_linux_amd64.tar.gz"
      sha256 "e1fee047ef2b9077fab18807e3581b89398a3c168bfcf0a966e6f13061261139"
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
