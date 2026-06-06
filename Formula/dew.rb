class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.37"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.37/dew_0.7.37_darwin_arm64.tar.gz"
      sha256 "d497782f584a9909fe7c24a920c6cccece9b851be886c2f3aae003e17996127c"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.37/dew_0.7.37_darwin_amd64.tar.gz"
      sha256 "af4f2afc28b3a4183ec76929604d032ed62887b405ce02ec9670920a9ed6c0f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.37/dew_0.7.37_linux_arm64.tar.gz"
      sha256 "09c3637769e46993fc1d5593a0740c5239fe07ac8628f3865a047177fa1bd613"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.37/dew_0.7.37_linux_amd64.tar.gz"
      sha256 "b3ca4d953629ddeab1a712e2b2a902b707c5db6f9a7406ade07d3b437263320d"
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
